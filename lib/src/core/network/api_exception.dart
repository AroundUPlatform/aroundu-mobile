import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

import '../l10n/l10n_extension.dart';

/// Typed error codes so UI can map to localised messages.
enum ApiErrorCode {
  connectionTimeout,
  connectionError,
  requestCancelled,
  badRequest,
  sessionExpired,
  permissionDenied,
  resourceNotFound,
  conflict,
  fileTooLarge,
  validationError,
  tooManyRequests,
  serverError,
  requestFailed,
  networkFailed,
  malformedResponse,
  malformedSkillResponse,
  malformedAdminResponse,
  adminAccessRequired,
}

class ApiException implements Exception {
  const ApiException(this.message, {this.statusCode, this.details, this.code});

  final String message;
  final int? statusCode;
  final String? details;
  final ApiErrorCode? code;

  /// Locale-aware error message for display in the UI.
  String localizedMessage(BuildContext context) {
    final l10n = context.l10n;
    switch (code) {
      case ApiErrorCode.connectionTimeout:
        return l10n.errorConnectionTimeout;
      case ApiErrorCode.connectionError:
        return l10n.errorConnectionError;
      case ApiErrorCode.requestCancelled:
        return l10n.errorRequestCancelled;
      case ApiErrorCode.badRequest:
        return l10n.errorBadRequest;
      case ApiErrorCode.sessionExpired:
        return l10n.errorSessionExpired;
      case ApiErrorCode.permissionDenied:
        return l10n.errorPermissionDenied;
      case ApiErrorCode.resourceNotFound:
        return l10n.errorResourceNotFound;
      case ApiErrorCode.conflict:
        return l10n.errorConflict;
      case ApiErrorCode.fileTooLarge:
        return l10n.errorFileTooLarge;
      case ApiErrorCode.validationError:
        return l10n.errorValidationError;
      case ApiErrorCode.tooManyRequests:
        return l10n.errorTooManyRequests;
      case ApiErrorCode.serverError:
        return l10n.errorServerError;
      case ApiErrorCode.requestFailed:
        return l10n.errorRequestFailed(statusCode?.toString() ?? '?');
      case ApiErrorCode.networkFailed:
        return l10n.errorNetworkFailed;
      case ApiErrorCode.malformedResponse:
        return l10n.errorMalformedResponse;
      case ApiErrorCode.malformedSkillResponse:
        return l10n.errorMalformedSkillResponse;
      case ApiErrorCode.malformedAdminResponse:
        return l10n.errorMalformedAdminResponse;
      case ApiErrorCode.adminAccessRequired:
        return l10n.errorAdminAccessRequired;
      case null:
        return message;
    }
  }

  /// Convert a [DioException] into a structured [ApiException].
  factory ApiException.fromDioException(DioException err) {
    final response = err.response;
    final statusCode = response?.statusCode;

    // Determine typed code first
    ApiErrorCode code = _codeForDioType(err.type, statusCode);

    // Try to extract backend message from ApiResponse envelope
    String message = _defaultMessage(err.type, statusCode);
    String? details;

    if (response != null) {
      final body = response.data;
      if (body is Map<String, dynamic>) {
        final serverMsg = body['message'];
        if (serverMsg is String && serverMsg.isNotEmpty) {
          message = serverMsg;
        }
        final serverDetails =
            body['error'] ?? body['details'] ?? body['errors'];
        if (serverDetails != null) {
          details = serverDetails.toString();
        }
      }
    }

    return ApiException(
      message,
      statusCode: statusCode,
      details: details,
      code: code,
    );
  }

  static ApiErrorCode _codeForDioType(DioExceptionType type, int? statusCode) {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ApiErrorCode.connectionTimeout;
      case DioExceptionType.connectionError:
        return ApiErrorCode.connectionError;
      case DioExceptionType.cancel:
        return ApiErrorCode.requestCancelled;
      case DioExceptionType.badResponse:
        return _codeForStatus(statusCode);
      default:
        return ApiErrorCode.networkFailed;
    }
  }

  static ApiErrorCode _codeForStatus(int? statusCode) {
    switch (statusCode) {
      case 400:
        return ApiErrorCode.badRequest;
      case 401:
        return ApiErrorCode.sessionExpired;
      case 403:
        return ApiErrorCode.permissionDenied;
      case 404:
        return ApiErrorCode.resourceNotFound;
      case 409:
        return ApiErrorCode.conflict;
      case 413:
        return ApiErrorCode.fileTooLarge;
      case 422:
        return ApiErrorCode.validationError;
      case 429:
        return ApiErrorCode.tooManyRequests;
      case 500:
      case 502:
      case 503:
      case 504:
        return ApiErrorCode.serverError;
      default:
        return ApiErrorCode.requestFailed;
    }
  }

  static String _defaultMessage(DioExceptionType type, int? statusCode) {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timed out. Check your network and try again.';
      case DioExceptionType.connectionError:
        return 'Unable to connect to the server. Check your network.';
      case DioExceptionType.cancel:
        return 'Request was cancelled.';
      case DioExceptionType.badResponse:
        return _messageForStatus(statusCode);
      default:
        return 'Network request failed.';
    }
  }

  static String _messageForStatus(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Invalid request. Please check your input.';
      case 401:
        return 'Session expired. Please log in again.';
      case 403:
        return 'You do not have permission to perform this action.';
      case 404:
        return 'Resource not found.';
      case 409:
        return 'Conflict: the action cannot be completed in the current state.';
      case 413:
        return 'File too large. Maximum size is 5 MB.';
      case 422:
        return 'Validation error. Please review your input.';
      case 429:
        return 'Too many requests. Please wait and try again.';
      case 500:
      case 502:
      case 503:
      case 504:
        return 'Server error. Please try again later.';
      default:
        return 'Request failed with status $statusCode';
    }
  }

  /// User-visible message with HTTP code/details when available.
  String get userMessage {
    final status = statusCode == null ? '' : ' (HTTP $statusCode)';
    final detailText = details?.trim();
    if (detailText == null || detailText.isEmpty) {
      return '$message$status';
    }
    return '$message$status: $detailText';
  }

  @override
  String toString() {
    final status = statusCode == null ? '' : ' (HTTP $statusCode)';
    final detail = details == null || details!.isEmpty ? '' : ': $details';
    return '$message$status$detail';
  }
}
