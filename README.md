# AroundU Mobile

Flutter mobile client for the AroundU local-services platform.

## Architecture
This project now follows **MVVM** with **Riverpod** state management.

- Full architecture doc: `docs/ARCHITECTURE.md`
- Method-level reference: `docs/CODEBASE_METHODS.md`

## Tech
- Flutter + Dart
- Riverpod 2.x
- HTTP (REST)
- Material 3

## Runtime API Configuration
Backend base URL is controlled via dart-define:

```bash
flutter run --dart-define=API_BASE_URL=http://localhost:20232
```

If `API_BASE_URL` is not provided, default is:

```text
Android emulator: http://10.0.2.2:20232
iOS simulator: http://localhost:20232
```

For Android emulator, `localhost` points to the emulator itself, not your Mac.

For Android physical devices, use your machine LAN IP, or use adb reverse and then:

```bash
adb reverse tcp:20232 tcp:20232
flutter run --dart-define=API_BASE_URL=http://localhost:20232
```

### Connecting to EC2-hosted Backend (k3s)

When the backend is deployed on an EC2 instance via Kubernetes (k3s), the NGINX Ingress Controller serves traffic on port 80:

```bash
flutter run --dart-define=API_BASE_URL=http://<EC2-PUBLIC-IP>
```

WebSocket (STOMP) connections follow the same host:

```text
ws://<EC2-PUBLIC-IP>/ws/
```

If a domain name is pointed at the EC2 instance:

```bash
flutter run --dart-define=API_BASE_URL=http://yourdomain.com
```

> **Note:** For production with HTTPS, replace `http://` with `https://` and `ws://` with `wss://` once TLS is configured on the cluster.

## Debugging API Errors
- In debug mode, API request/response logs are printed automatically.
- To force logs in non-debug runs:

```bash
flutter run --dart-define=ENABLE_APP_LOGS=true
```

- Logs include:
  - method + URL
  - sanitized headers/body
  - response status/body
  - stack traces for failed requests

## Device Persistence
- Auth session is persisted on device and restored on app restart.
- Worker selected skills and role tab selections are also persisted.
- Theme preference (light/dark) is persisted and restored.

## App Structure

```text
lib/
  main.dart
  app.dart
  src/
    core/
    features/
      auth/
      jobs/
```

## Notes
- Legacy non-MVVM codepaths were removed from `lib/`.
- All business/application state is managed in Riverpod view models.
