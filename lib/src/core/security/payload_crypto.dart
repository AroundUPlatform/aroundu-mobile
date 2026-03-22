import 'dart:convert';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

import '../config/app_environment.dart';
import '../logging/app_logger.dart';

/// Symmetric payload encryption using ChaCha20-Poly1305.
///
/// Wire format: Base64( nonce[12] ‖ ciphertext ‖ tag[16] )
///
/// Both the Flutter app and the Spring Boot backend must share the same
/// 32-byte key in their respective `.env` files.
class PayloadCrypto {
  PayloadCrypto._();

  static final _log = AppLogger.tag('PayloadCrypto');
  static final _algorithm = Chacha20.poly1305Aead();

  static SecretKey? _cachedKey;

  /// Lazily resolve and cache the secret key from the environment.
  static SecretKey _key() {
    if (_cachedKey != null) return _cachedKey!;
    final b64 = AppEnvironment.payloadEncryptionKey;
    if (b64.isEmpty) {
      throw StateError(
        'PAYLOAD_ENCRYPTION_KEY is not set in .env. '
        'Encryption is disabled.',
      );
    }
    final bytes = base64Decode(b64);
    if (bytes.length != 32) {
      throw StateError(
        'PAYLOAD_ENCRYPTION_KEY must decode to exactly 32 bytes '
        '(got ${bytes.length}).',
      );
    }
    _cachedKey = SecretKeyData(bytes);
    return _cachedKey!;
  }

  /// Returns `true` when a valid key is configured.
  static bool get isEnabled {
    try {
      _key();
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Encrypt [plaintext] → Base64( nonce ‖ ciphertext ‖ tag ).
  static Future<String> encrypt(String plaintext) async {
    final box = await _algorithm.encrypt(
      utf8.encode(plaintext),
      secretKey: _key(),
    );

    // nonce (12) + ciphertext + mac (16)
    final output = Uint8List(12 + box.cipherText.length + 16);
    output.setAll(0, box.nonce);
    output.setAll(12, box.cipherText);
    output.setAll(12 + box.cipherText.length, box.mac.bytes);

    return base64Encode(output);
  }

  /// Decrypt Base64( nonce ‖ ciphertext ‖ tag ) → plaintext.
  static Future<String> decrypt(String ciphertext) async {
    final raw = base64Decode(ciphertext);
    if (raw.length < 28) {
      throw const FormatException(
        'Encrypted payload too short (minimum 28 bytes: 12 nonce + 16 tag).',
      );
    }

    final nonce = raw.sublist(0, 12);
    final mac = Mac(raw.sublist(raw.length - 16));
    final encrypted = raw.sublist(12, raw.length - 16);

    final box = SecretBox(encrypted, nonce: nonce, mac: mac);

    try {
      final clearBytes = await _algorithm.decrypt(box, secretKey: _key());
      return utf8.decode(clearBytes);
    } catch (e, st) {
      _log.e(
        'Decryption failed — possible key mismatch or tampered payload',
        error: e,
        stackTrace: st,
      );
      rethrow;
    }
  }
}
