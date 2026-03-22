import 'dart:convert';

import 'package:dio/dio.dart';

import '../logging/app_logger.dart';
import '../security/payload_crypto.dart';

/// Dio interceptor that encrypts outgoing request bodies and decrypts
/// incoming response bodies using ChaCha20-Poly1305.
///
/// Protocol:
///   Request  → body is JSON-encoded, encrypted, wrapped as `{"data":"<b64>"}`,
///              `X-Encrypted: true` header added.
///   Response → if `X-Encrypted: true` header present, unwrap `data` field,
///              decrypt, and replace `response.data` with parsed JSON.
///
/// Gracefully degrades: if `PAYLOAD_ENCRYPTION_KEY` is absent, requests and
/// responses pass through unmodified.
class EncryptionInterceptor extends Interceptor {
  static final _log = AppLogger.tag('EncryptionInterceptor');

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!PayloadCrypto.isEnabled) {
      return handler.next(options);
    }

    // Only encrypt JSON bodies (skip multipart uploads etc.)
    if (options.data == null ||
        options.data is FormData ||
        options.data is List<int>) {
      return handler.next(options);
    }

    try {
      final plaintext = options.data is String
          ? options.data as String
          : jsonEncode(options.data);

      final encrypted = await PayloadCrypto.encrypt(plaintext);

      options.data = jsonEncode({'data': encrypted});
      options.headers['X-Encrypted'] = 'true';
      // Ensure content-type is JSON even after wrapping.
      options.contentType = 'application/json; charset=utf-8';
    } catch (e, st) {
      _log.e('Failed to encrypt request body', error: e, stackTrace: st);
      // Fall through with plaintext rather than crashing
    }

    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    if (!PayloadCrypto.isEnabled) {
      return handler.next(response);
    }

    final isEncrypted =
        response.headers.value('X-Encrypted')?.toLowerCase() == 'true';

    if (!isEncrypted) {
      return handler.next(response);
    }

    try {
      final body = response.data;
      String? encryptedPayload;

      if (body is Map<String, dynamic> && body.containsKey('data')) {
        encryptedPayload = body['data'] as String?;
      } else if (body is String) {
        final parsed = jsonDecode(body);
        if (parsed is Map<String, dynamic> && parsed.containsKey('data')) {
          encryptedPayload = parsed['data'] as String?;
        }
      }

      if (encryptedPayload == null || encryptedPayload.isEmpty) {
        return handler.next(response);
      }

      final decrypted = await PayloadCrypto.decrypt(encryptedPayload);

      // Try to parse as JSON; if it fails, return as-is.
      try {
        response.data = jsonDecode(decrypted);
      } catch (_) {
        response.data = decrypted;
      }
    } catch (e, st) {
      _log.e('Failed to decrypt response body', error: e, stackTrace: st);
      // Return the error via Dio's error path so callers can handle it.
      return handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
          error: e,
          type: DioExceptionType.unknown,
          message: 'Payload decryption failed',
        ),
      );
    }

    handler.next(response);
  }
}
