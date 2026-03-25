# Profile Feature

> User profile viewing, editing, image management, and language preferences.

---

## Overview

The Profile feature allows users to view and edit their profile (name, phone, address), upload/delete profile images, view public profiles of other users, and change language preferences.

---

## File Inventory

### Data Layer

| File | Description |
|------|-------------|
| `data/user_profile_api.dart` | `UserProfileApi` — `uploadProfileImage()`, `deleteProfileImage()` |

### View Models

| File | Description |
|------|-------------|
| `view_model/profile_view_model.dart` | Profile state management (fetch, edit, image operations) |
| `view_model/public_profile_view_model.dart` | Public profile viewing for other users |

### Views

| File | Description |
|------|-------------|
| `view/edit_profile_view.dart` | Edit form for name, phone, address, and profile image |
| `view/language_picker_view.dart` | Language/locale selection |
| `view/public_profile_view.dart` | View another user's public profile |
| `view/worker_profile_detail_view.dart` | Detailed worker profile with reviews and ratings |

---

## API Methods

### `UserProfileApi`

| Method | Description |
|--------|-------------|
| `uploadProfileImage(token, userId, imageBytes, fileName)` | Uploads image via multipart POST; returns public URL |
| `deleteProfileImage(token, userId)` | Deletes profile image via DELETE |

---

## Backend Endpoints Used

| Endpoint | Method |
|----------|--------|
| `POST /api/v1/users/{userId}/profile-image` | Upload profile image (multipart) |
| `DELETE /api/v1/users/{userId}/profile-image` | Delete profile image |
| `GET /api/v1/public/worker/{workerId}` | View public worker profile |
| `GET /api/v1/public/client/{clientId}` | View public client profile |
| `PATCH /api/v1/client/update/{clientId}` | Update client profile |
| `PATCH /api/v1/worker/update/{workerId}` | Update worker profile |
