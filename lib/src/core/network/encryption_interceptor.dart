import 'dart:convert';

import 'package:dio/dio.dart';

import '../logging/app_logger.dart';
import '../security/payload_crypto.dart';

/// Dio interceptor that encrypts ALL outgoing request bodies and decrypts
/// ALL incoming response bodies using ChaCha20-Poly1305.
///
/// Acts as a full perimeter / AOP boundary — every request and response
/// that flows through the app's [ApiClient] is covered:
///
///   Request  → `X-Encrypted: true` header is ALWAYS added so the backend
///              knows to encrypt its response.  If a JSON body is present
///              it is also encrypted and wrapped as `{"data":"<b64>"}`.
///              Multipart / binary bodies are passed through unmodified
///              (the header is still added so the response is encrypted).
///   Response → if `X-Encrypted: true` header is present (or the body
///              looks like an encrypted envelope), unwrap the `data` field,
///              decrypt, and replace `response.data` with the parsed JSON.
///
/// Gracefully degrades: if `PAYLOAD_ENCRYPTION_KEY` is absent in `.env`,
/// all requests and responses pass through completely unmodified.
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

    // Always tell the backend we want an encrypted response.
    // The backend's PayloadEncryptionFilter checks this header and encrypts
    // the response body regardless of whether the request itself has a body
    // (e.g. GET, DELETE with no payload still get encrypted responses).
    options.headers['X-Encrypted'] = 'true';

    // Encrypt the request body only when there is a JSON-serialisable body.
    // Skip multipart form data and raw binary payloads.
    final hasEncryptableBody = options.data != null &&
        options.data is! FormData &&
        options.data is! List<int>;

    if (hasEncryptableBody) {
      try {
        final plaintext = options.data is String
            ? options.data as String
            : jsonEncode(options.data);

        final encrypted = await PayloadCrypto.encrypt(plaintext);

        options.data = jsonEncode({'data': encrypted});
        // Ensure content-type stays JSON after wrapping.
        options.contentType = 'application/json; charset=utf-8';
      } catch (e, st) {
        _log.e('Failed to encrypt request body', error: e, stackTrace: st);
        // Fall through with plaintext body — response will still be encrypted
        // because we already set the X-Encrypted header above.
      }
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

    // Fallback: if the header is missing (e.g. stripped by a proxy or
    // set after the response was committed), detect encrypted payloads
    // by inspecting the body structure.
    final bodyLooksEncrypted =
        !isEncrypted &&
        response.data is Map<String, dynamic> &&
        (response.data as Map<String, dynamic>).length == 1 &&
        (response.data as Map<String, dynamic>).containsKey('data') &&
        (response.data as Map<String, dynamic>)['data'] is String &&
        ((response.data as Map<String, dynamic>)['data'] as String).length >
            100;

    if (!isEncrypted && !bodyLooksEncrypted) {
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
