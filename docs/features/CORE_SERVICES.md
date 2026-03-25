# Core Services

> Shared infrastructure — networking, storage, theming, localization, encryption, and core providers.

---

## Overview

Core services provide the shared foundation used by all features. This includes the HTTP client, WebSocket service, local storage, theming, localization, exchange rate management, and the Riverpod provider wiring.

---

## File Inventory

### Network (`lib/src/core/network/`)

| File | Description |
|------|-------------|
| `api_client.dart` | `ApiClient` — Dio-based HTTP client with JSON/multipart support, auth headers, error mapping |
| `dio_client.dart` | `DioClient` — Dio instance configuration: interceptors, base URL, timeouts |
| `api_exception.dart` | `ApiException` with typed `ApiErrorCode` enum for consistent error handling |
| `encryption_interceptor.dart` | Dio interceptor: AES-256 payload encryption/decryption for sensitive requests |
| `websocket_service.dart` | STOMP WebSocket client for real-time chat messaging |

### Storage (`lib/src/core/storage/`)

| File | Description |
|------|-------------|
| `local_storage.dart` | SharedPreferences wrapper: auth session, preferences, cached data |

### Theme (`lib/src/core/theme/`)

| File | Description |
|------|-------------|
| `app_theme.dart` | Material 3 theme: light/dark variants, color scheme, typography |

### Localization (`lib/src/core/l10n/`)

| File | Description |
|------|-------------|
| `app_localizations.dart` | ARB-based internationalization |
| `*.arb` | Translation files per locale |

### Providers (`lib/src/core/providers/`)

| File | Description |
|------|-------------|
| `core_providers.dart` | Root-level Riverpod providers: `apiClientProvider`, `chatApiProvider`, `reviewApiProvider`, `adminApiProvider`, `userProfileApiProvider`, `exchangeRateProvider`, `webSocketServiceProvider` |
| `ai/ai_service_provider.dart` | AI readiness state provider |
| `ai/model_manager_provider.dart` | Model download/load lifecycle manager |

### Exchange Rates (`lib/src/core/fx/`)

| File | Description |
|------|-------------|
| `exchange_rate_notifier.dart` | Riverpod notifier: fetches and caches exchange rate from backend |

### Logging (`lib/src/core/logging/`)

| File | Description |
|------|-------------|
| `app_logger.dart` | Tagged logger with log level filtering |

### Widgets (`lib/src/core/widgets/`)

| File | Description |
|------|-------------|
| `loading_overlay.dart` | Full-screen loading indicator |
| `error_retry_widget.dart` | Error display with retry button |
| Various shared widgets | Buttons, cards, inputs used across features |

---

## `ApiClient` — HTTP Methods

| Method | Description |
|--------|-------------|
| `getJson(path, bearerToken, query)` | GET with JSON response |
| `getAny(path, bearerToken, query)` | GET with flexible response type |
| `postJson(path, bearerToken, body, query)` | POST with JSON body |
| `postAny(path, bearerToken, body, query)` | POST with flexible response |
| `patchJson(path, bearerToken, body, query)` | PATCH with JSON body |
| `deleteJson(path, bearerToken)` | DELETE |
| `postMultipart(path, bearerToken, fieldName, fileName, fileBytes)` | Multipart file upload |

---

## Error Handling

### `ApiErrorCode` Enum

| Code | Description |
|------|-------------|
| `unauthorized` | 401 — token expired or invalid |
| `forbidden` | 403 — insufficient permissions |
| `notFound` | 404 — resource not found |
| `conflict` | 409 — duplicate resource |
| `rateLimited` | 429 — rate limit exceeded |
| `requestFailed` | General request failure |
| `malformedResponse` | Response parsing error |
| `networkError` | Connection failure |

---

## Core Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `apiClientProvider` | `Provider<ApiClient>` | Singleton HTTP client |
| `chatApiProvider` | `Provider<ChatApi>` | Chat data source |
| `reviewApiProvider` | `Provider<ReviewApi>` | Review data source |
| `adminApiProvider` | `Provider<AdminApi>` | Admin data source |
| `userProfileApiProvider` | `Provider<UserProfileApi>` | Profile image operations |
| `exchangeRateProvider` | `AsyncNotifier<ExchangeRateDTO>` | Exchange rate cache |
| `webSocketServiceProvider` | `Provider<WebSocketService>` | WebSocket singleton |

---

## WebSocket Service

| Method | Description |
|--------|-------------|
| `connect(token)` | Connect to STOMP endpoint with JWT auth |
| `subscribe(destination, callback)` | Subscribe to a topic |
| `send(destination, body)` | Publish to a destination |
| `disconnect()` | Clean disconnect |
| `isConnected` | Connection status |

---

## Backend Endpoints Used

| Endpoint | Provider |
|----------|---------|
| `GET /api/v1/fx/rate` | `exchangeRateProvider` |
| `ws://host/ws` | `webSocketServiceProvider` |
