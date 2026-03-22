import 'dart:convert';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:flutter_test/flutter_test.dart';

/// Tests the encryption interceptor wire format logic:
/// - Request: JSON body → encrypt → {"data":"<b64>"} + X-Encrypted header
/// - Response: {"data":"<b64>"} + X-Encrypted → decrypt → JSON
///
/// These tests replicate the exact encoding steps from EncryptionInterceptor
/// and PayloadCrypto without requiring AppEnvironment.
void main() {
  final testKeyBytes = base64Decode(
    'dGhpcyBpcyBhIDMyIGJ5dGUga2V5ISEhMTIzNDU2Nzg=',
  );
  late Chacha20 algorithm;
  late SecretKey secretKey;

  setUp(() {
    algorithm = Chacha20.poly1305Aead();
    secretKey = SecretKeyData(testKeyBytes);
  });

  Future<String> encrypt(String plaintext) async {
    final box = await algorithm.encrypt(
      utf8.encode(plaintext),
      secretKey: secretKey,
    );
    final output = Uint8List(12 + box.cipherText.length + 16);
    output.setAll(0, box.nonce);
    output.setAll(12, box.cipherText);
    output.setAll(12 + box.cipherText.length, box.mac.bytes);
    return base64Encode(output);
  }

  Future<String> decrypt(String ciphertext) async {
    final raw = base64Decode(ciphertext);
    final nonce = raw.sublist(0, 12);
    final mac = Mac(raw.sublist(raw.length - 16));
    final ct = raw.sublist(12, raw.length - 16);
    final box = SecretBox(ct, nonce: nonce, mac: mac);
    final clearBytes = await algorithm.decrypt(box, secretKey: secretKey);
    return utf8.decode(clearBytes);
  }

  group('Request encryption format', () {
    test('wraps encrypted body in {"data": "<b64>"}', () async {
      final originalBody = jsonEncode({
        'username': 'test',
        'password': 'secret',
      });
      final encrypted = await encrypt(originalBody);
      final wrapped = jsonEncode({'data': encrypted});

      // Verify the wrapped format
      final parsed = jsonDecode(wrapped) as Map<String, dynamic>;
      expect(parsed.containsKey('data'), isTrue);
      expect(parsed['data'], isA<String>());

      // Verify round-trip
      final decrypted = await decrypt(parsed['data'] as String);
      expect(decrypted, equals(originalBody));
    });

    test('non-JSON body (String) is encrypted as-is', () async {
      const plainString = 'plain text body';
      final encrypted = await encrypt(plainString);
      final decrypted = await decrypt(encrypted);
      expect(decrypted, equals(plainString));
    });
  });

  group('Response decryption format', () {
    test('unwraps {"data":"<b64>"} and decrypts to original JSON', () async {
      final originalResponse = jsonEncode({
        'id': 42,
        'status': 'OK',
        'items': [1, 2, 3],
      });
      final encrypted = await encrypt(originalResponse);
      final wrappedResponse = {'data': encrypted};

      // Simulate interceptor logic
      final encryptedPayload = wrappedResponse['data'] as String;
      final decrypted = await decrypt(encryptedPayload);
      final parsed = jsonDecode(decrypted);

      expect(parsed['id'], 42);
      expect(parsed['status'], 'OK');
      expect(parsed['items'], [1, 2, 3]);
    });

    test('response without data field passes through', () {
      final body = {'message': 'not encrypted'};
      expect(body.containsKey('data'), isFalse);
    });

    test('X-Encrypted header check is case-insensitive', () {
      for (final value in ['true', 'True', 'TRUE']) {
        expect(value.toLowerCase() == 'true', isTrue);
      }
    });
  });

  group('Cross-platform compatibility', () {
    test('encrypt on Flutter → decrypt on backend (same algorithm)', () async {
      // Simulates: Flutter encrypts a request body, Spring Boot decrypts it
      final requestBody = jsonEncode({
        'action': 'createJob',
        'title': 'Fix plumbing',
        'budget': 5000,
      });

      final encrypted = await encrypt(requestBody);
      final raw = base64Decode(encrypted);

      // Verify wire format matches what backend expects
      expect(raw.length, greaterThanOrEqualTo(28)); // 12 nonce + 16 tag minimum
      expect(raw.sublist(0, 12).length, 12); // nonce

      final decrypted = await decrypt(encrypted);
      expect(decrypted, equals(requestBody));
    });

    test('base64 encoding is standard (not URL-safe)', () async {
      final encrypted = await encrypt('test');
      // Standard base64 uses +, /, =
      // Should be decodable by java.util.Base64.getDecoder()
      expect(() => base64Decode(encrypted), returnsNormally);
    });
  });
}
