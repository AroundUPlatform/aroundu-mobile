import 'package:aroundu/src/core/network/api_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ApiErrorCode enum', () {
    test('has 18 error codes', () {
      expect(ApiErrorCode.values.length, 18);
    });

    test('all codes have unique names', () {
      final names = ApiErrorCode.values.map((e) => e.name).toSet();
      expect(names.length, ApiErrorCode.values.length);
    });
  });

  group('ApiException', () {
    test('constructor preserves all fields', () {
      const ex = ApiException(
        'test error',
        statusCode: 404,
        details: 'not found',
        code: ApiErrorCode.resourceNotFound,
      );
      expect(ex.message, 'test error');
      expect(ex.statusCode, 404);
      expect(ex.details, 'not found');
      expect(ex.code, ApiErrorCode.resourceNotFound);
    });

    test('toString includes message', () {
      const ex = ApiException('something went wrong');
      expect(ex.toString(), contains('something went wrong'));
    });

    test('code can be null', () {
      const ex = ApiException('legacy error');
      expect(ex.code, isNull);
    });
  });

  group('ApiException.fromDioException', () {
    test('connection timeout maps to connectionTimeout code', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.connectionTimeout,
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.connectionTimeout);
    });

    test('send timeout maps to connectionTimeout code', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.sendTimeout,
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.connectionTimeout);
    });

    test('receive timeout maps to connectionTimeout code', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.receiveTimeout,
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.connectionTimeout);
    });

    test('connection error maps to connectionError code', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.connectionError,
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.connectionError);
    });

    test('cancel maps to requestCancelled code', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.cancel,
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.requestCancelled);
    });

    test('400 maps to badRequest', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 400,
            requestOptions: RequestOptions(path: '/test'),
          ),
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.badRequest);
      expect(ex.statusCode, 400);
    });

    test('401 maps to sessionExpired', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 401,
            requestOptions: RequestOptions(path: '/test'),
          ),
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.sessionExpired);
    });

    test('403 maps to permissionDenied', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 403,
            requestOptions: RequestOptions(path: '/test'),
          ),
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.permissionDenied);
    });

    test('404 maps to resourceNotFound', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 404,
            requestOptions: RequestOptions(path: '/test'),
          ),
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.resourceNotFound);
    });

    test('409 maps to conflict', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 409,
            requestOptions: RequestOptions(path: '/test'),
          ),
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.conflict);
    });

    test('413 maps to fileTooLarge', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 413,
            requestOptions: RequestOptions(path: '/test'),
          ),
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.fileTooLarge);
    });

    test('422 maps to validationError', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 422,
            requestOptions: RequestOptions(path: '/test'),
          ),
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.validationError);
    });

    test('429 maps to tooManyRequests', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 429,
            requestOptions: RequestOptions(path: '/test'),
          ),
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.tooManyRequests);
    });

    test('500 maps to serverError', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 500,
            requestOptions: RequestOptions(path: '/test'),
          ),
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.serverError);
    });

    test('extracts server message from response body', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 400,
            data: {'message': 'Invalid email format', 'error': 'Bad Request'},
            requestOptions: RequestOptions(path: '/test'),
          ),
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.message, 'Invalid email format');
      expect(ex.details, 'Bad Request');
    });

    test('unknown DioExceptionType maps to networkFailed', () {
      final ex = ApiException.fromDioException(
        DioException(
          type: DioExceptionType.unknown,
          requestOptions: RequestOptions(path: '/test'),
        ),
      );
      expect(ex.code, ApiErrorCode.networkFailed);
    });
  });
}
