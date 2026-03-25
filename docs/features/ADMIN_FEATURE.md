# Admin Feature

> Platform administration dashboard with overview statistics.

---

## Overview

The Admin feature provides a dashboard for platform administrators to monitor key metrics — total users, active/open jobs, and daily job activity. Only accessible to users with `ROLE_ADMIN`.

---

## File Inventory

### Data Layer

| File | Description |
|------|-------------|
| `data/admin_api.dart` | `AdminApi` — `fetchOverview()` returns `AdminOverview` |

### Models (in `admin_api.dart`)

| Class | Description |
|-------|-------------|
| `AdminOverview` | `totalClients`, `totalWorkers`, `activeJobs`, `openJobs`, `jobsCreatedToday`, `jobsCompletedToday` |

### View Models

| File | Description |
|------|-------------|
| `view_model/admin_view_model.dart` | `AdminDashboardController` — fetches and caches overview data |

### Views

| File | Description |
|------|-------------|
| `view/admin_dashboard_view.dart` | Dashboard with metric cards and summary statistics |

---

## `AdminOverview` Fields

| Field | Type | Description |
|-------|------|-------------|
| `totalClients` | `int` | Total registered clients |
| `totalWorkers` | `int` | Total registered workers |
| `activeJobs` | `int` | Jobs currently in-progress |
| `openJobs` | `int` | Jobs open for bidding |
| `jobsCreatedToday` | `int` | Jobs created today |
| `jobsCompletedToday` | `int` | Jobs completed today |

---

## Backend Endpoints Used

| Endpoint | Auth | Method |
|----------|------|--------|
| `GET /api/v1/admin/overview` | `ROLE_ADMIN` | `AdminApi.fetchOverview()` |
