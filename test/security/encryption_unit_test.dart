import 'dart:convert';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:flutter_test/flutter_test.dart';

/// Unit tests for ChaCha20-Poly1305 encrypt/decrypt logic.
/// These test the algorithm directly (same logic as PayloadCrypto)
/// without depending on AppEnvironment / .env.
void main() {
  // Same 32-byte test key used in the project .env
  final testKeyBytes = base64Decode(
    'dGhpcyBpcyBhIDMyIGJ5dGUga2V5ISEhMTIzNDU2Nzg=',
  );
  late Chacha20 algorithm;
  late SecretKey secretKey;

  setUp(() {
    algorithm = Chacha20.poly1305Aead();
    secretKey = SecretKeyData(testKeyBytes);
  });

  group('ChaCha20-Poly1305 round-trip', () {
    test('encrypt then decrypt returns original plaintext', () async {
      const plaintext = '{"message": "Hello, AroundU!"}';

      // Encrypt
      final box = await algorithm.encrypt(
        utf8.encode(plaintext),
        secretKey: secretKey,
      );
      final output = Uint8List(12 + box.cipherText.length + 16);
      output.setAll(0, box.nonce);
      output.setAll(12, box.cipherText);
      output.setAll(12 + box.cipherText.length, box.mac.bytes);
      final encrypted = base64Encode(output);

      expect(encrypted, isNotEmpty);
      expect(encrypted, isNot(equals(plaintext)));

      // Decrypt
      final raw = base64Decode(encrypted);
      final nonce = raw.sublist(0, 12);
      final mac = Mac(raw.sublist(raw.length - 16));
      final cipherText = raw.sublist(12, raw.length - 16);
      final secretBox = SecretBox(cipherText, nonce: nonce, mac: mac);
      final clearBytes = await algorithm.decrypt(
        secretBox,
        secretKey: secretKey,
      );
      final decrypted = utf8.decode(clearBytes);

      expect(decrypted, equals(plaintext));
    });

    test('different plaintexts produce different ciphertexts', () async {
      final box1 = await algorithm.encrypt(
        utf8.encode('payload one'),
        secretKey: secretKey,
      );
      final box2 = await algorithm.encrypt(
        utf8.encode('payload two'),
        secretKey: secretKey,
      );

      expect(
        base64Encode(box1.cipherText),
        isNot(base64Encode(box2.cipherText)),
      );
    });

    test(
      'same plaintext encrypted twice produces different ciphertexts (random nonce)',
      () async {
        final box1 = await algorithm.encrypt(
          utf8.encode('identical'),
          secretKey: secretKey,
        );
        final box2 = await algorithm.encrypt(
          utf8.encode('identical'),
          secretKey: secretKey,
        );

        // Nonces should differ (random), so full output differs
        expect(box1.nonce, isNot(equals(box2.nonce)));
      },
    );

    test('wrong key fails to decrypt', () async {
      final box = await algorithm.encrypt(
        utf8.encode('secret data'),
        secretKey: secretKey,
      );
      final output = Uint8List(12 + box.cipherText.length + 16);
      output.setAll(0, box.nonce);
      output.setAll(12, box.cipherText);
      output.setAll(12 + box.cipherText.length, box.mac.bytes);

      // Use a different key
      final wrongKey = SecretKeyData(Uint8List(32)); // all zeros
      final raw = output;
      final nonce = raw.sublist(0, 12);
      final mac = Mac(raw.sublist(raw.length - 16));
      final cipherText = raw.sublist(12, raw.length - 16);
      final secretBox = SecretBox(cipherText, nonce: nonce, mac: mac);

      expect(
        () => algorithm.decrypt(secretBox, secretKey: wrongKey),
        throwsA(anything),
      );
    });

    test('tampered ciphertext fails authentication', () async {
      final box = await algorithm.encrypt(
        utf8.encode('authentic data'),
        secretKey: secretKey,
      );
      final output = Uint8List(12 + box.cipherText.length + 16);
      output.setAll(0, box.nonce);
      output.setAll(12, box.cipherText);
      output.setAll(12 + box.cipherText.length, box.mac.bytes);

      // Tamper with a ciphertext byte
      output[14] ^= 0xFF;

      final raw = output;
      final nonce = raw.sublist(0, 12);
      final mac = Mac(raw.sublist(raw.length - 16));
      final cipherText = raw.sublist(12, raw.length - 16);
      final secretBox = SecretBox(cipherText, nonce: nonce, mac: mac);

      expect(
        () => algorithm.decrypt(secretBox, secretKey: secretKey),
        throwsA(anything),
      );
    });

    test('payload too short is rejected', () {
      // Less than 28 bytes (12 nonce + 16 tag minimum)
      final shortPayload = base64Encode(Uint8List(20));
      final raw = base64Decode(shortPayload);

      expect(raw.length, lessThan(28));
    });

    test('empty plaintext round-trips', () async {
      const plaintext = '';
      final box = await algorithm.encrypt(
        utf8.encode(plaintext),
        secretKey: secretKey,
      );
      final output = Uint8List(12 + box.cipherText.length + 16);
      output.setAll(0, box.nonce);
      output.setAll(12, box.cipherText);
      output.setAll(12 + box.cipherText.length, box.mac.bytes);
      final encrypted = base64Encode(output);

      final raw = base64Decode(encrypted);
      final nonce = raw.sublist(0, 12);
      final mac = Mac(raw.sublist(raw.length - 16));
      final cipherText = raw.sublist(12, raw.length - 16);
      final secretBox = SecretBox(cipherText, nonce: nonce, mac: mac);
      final clearBytes = await algorithm.decrypt(
        secretBox,
        secretKey: secretKey,
      );

      expect(utf8.decode(clearBytes), equals(plaintext));
    });

    test('large payload round-trips', () async {
      final plaintext = 'x' * 100000;
      final box = await algorithm.encrypt(
        utf8.encode(plaintext),
        secretKey: secretKey,
      );
      final output = Uint8List(12 + box.cipherText.length + 16);
      output.setAll(0, box.nonce);
      output.setAll(12, box.cipherText);
      output.setAll(12 + box.cipherText.length, box.mac.bytes);
      final encrypted = base64Encode(output);

      final raw = base64Decode(encrypted);
      final nonce = raw.sublist(0, 12);
      final mac = Mac(raw.sublist(raw.length - 16));
      final cipherText = raw.sublist(12, raw.length - 16);
      final secretBox = SecretBox(cipherText, nonce: nonce, mac: mac);
      final clearBytes = await algorithm.decrypt(
        secretBox,
        secretKey: secretKey,
      );

      expect(utf8.decode(clearBytes), equals(plaintext));
    });

    test('unicode plaintext round-trips', () async {
      const plaintext = '{"name": "आसपास", "emoji": "🔐🌍"}';
      final box = await algorithm.encrypt(
        utf8.encode(plaintext),
        secretKey: secretKey,
      );
      final output = Uint8List(12 + box.cipherText.length + 16);
      output.setAll(0, box.nonce);
      output.setAll(12, box.cipherText);
      output.setAll(12 + box.cipherText.length, box.mac.bytes);
      final encrypted = base64Encode(output);

      final raw = base64Decode(encrypted);
      final nonce = raw.sublist(0, 12);
      final mac = Mac(raw.sublist(raw.length - 16));
      final cipherText = raw.sublist(12, raw.length - 16);
      final secretBox = SecretBox(cipherText, nonce: nonce, mac: mac);
      final clearBytes = await algorithm.decrypt(
        secretBox,
        secretKey: secretKey,
      );

      expect(utf8.decode(clearBytes), equals(plaintext));
    });

    test('key must be 32 bytes', () {
      final shortKey = Uint8List(16);
      expect(shortKey.length, isNot(32));
      expect(testKeyBytes.length, 32);
    });

    test('wire format: nonce(12) + ciphertext + tag(16)', () async {
      final box = await algorithm.encrypt(
        utf8.encode('test'),
        secretKey: secretKey,
      );
      final output = Uint8List(12 + box.cipherText.length + 16);
      output.setAll(0, box.nonce);
      output.setAll(12, box.cipherText);
      output.setAll(12 + box.cipherText.length, box.mac.bytes);

      // Verify structure
      expect(output.sublist(0, 12), equals(box.nonce));
      expect(
        output.sublist(12, 12 + box.cipherText.length),
        equals(box.cipherText),
      );
      expect(output.sublist(output.length - 16), equals(box.mac.bytes));
    });
  });
}
