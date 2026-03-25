# Auth Feature

> Login, registration, splash, onboarding, and role selection for all user types.

---

## Overview

The Auth feature handles the complete authentication lifecycle — splash screen session restore, onboarding carousel, login with JWT, multi-role registration (Client/Worker), and post-login role selection. State is managed via Riverpod's `AuthController` with device persistence.

---

## File Inventory

### Data Layer

| File | Description |
|------|-------------|
| `data/auth_api.dart` | Raw HTTP calls: `login`, `registerClient`, `registerWorker`, `fetchClientProfile`, `fetchWorkerProfile` |

### View Models

| File | Description |
|------|-------------|
| `view_model/auth_view_model.dart` | `AuthController` (AsyncNotifier) — session state, login, register, logout, role mapping |
| `view_model/auth_ui_view_model.dart` | `RegisterFormUiController` — registration form UI state (role, country, currency, password visibility) |
| `view_model/admin_view_model.dart` | Admin-specific auth state management |

### Views

| File | Description |
|------|-------------|
| `view/splash_view.dart` | Splash screen with auto-routing based on session state |
| `view/onboarding_view.dart` | Onboarding carousel for first-time users |
| `view/login_view.dart` | Login form with email/password validation |
| `view/register_view.dart` | Registration form with role selection, location, and validation |
| `view/role_selection_view.dart` | Post-login role picker for multi-role users |

---

## `AuthState` (Immutable State Object)

| Field | Type | Description |
|-------|------|-------------|
| `token` | `String?` | JWT bearer token |
| `userId` | `int?` | User's role-specific ID |
| `clientId` | `int?` | Client ID (if role is CLIENT) |
| `workerId` | `int?` | Worker ID (if role is WORKER) |
| `email` | `String?` | User's email |
| `role` | `UserRole?` | `client`, `worker`, or `admin` |
| `isLoading` | `bool` | Whether an auth operation is in progress |
| `errorMessage` | `String?` | Current error to display |
| `currency` | `String?` | User's preferred currency |

---

## Key Flows

### Login Flow
```
LoginView._submit()
  → AuthController.login(email, password)
    → AuthApi.login()  → JWT + role
    → fetchClientProfile() or fetchWorkerProfile()
    → _persistSession()
    → state = authenticated
  → _routeAfterAuth() → shell based on role
```

### Registration Flow
```
RegisterView._submit()
  → AuthController.register(input)
    → AuthApi.registerClient() or registerWorker()
    → AuthController.login() (auto-login)
```

### Session Restore
```
SplashView.initState()
  → AuthController._restoreSession()
    → LocalStorage.readAuthSession()
    → state = restored session (or unauthenticated)
  → _routeToNextScreen()
```

---

## Persistence

Uses `LocalStorage` (SharedPreferences) to persist:
- Auth session (token, userId, role, email, currency)
- Restored on splash screen startup

---

## Backend Endpoints Used

| Endpoint | Method |
|----------|--------|
| `POST /api/v1/auth/login` | `AuthApi.login()` |
| `POST /api/v1/client/register` | `AuthApi.registerClient()` |
| `POST /api/v1/worker/register` | `AuthApi.registerWorker()` |
| `GET /api/v1/client/me` | `AuthApi.fetchClientProfile()` |
| `GET /api/v1/worker/me` | `AuthApi.fetchWorkerProfile()` |
