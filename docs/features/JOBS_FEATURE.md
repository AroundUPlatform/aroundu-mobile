# Jobs Feature

> Job creation, listing, worker feed, bid workflow, OTP verification, payment, and AI-powered assistance.

---

## Overview

The Jobs feature is the core of the mobile app. Clients create/manage jobs, workers discover them via a geo-enabled feed, and both sides progress through the full job lifecycle: bidding, handshake, OTP start/release codes, payment, and review.

---

## File Inventory

### Data Layer

| File | Description |
|------|-------------|
| `data/job_api.dart` | Raw HTTP calls: job CRUD, status updates, bids, codes, payments, worker feed, cancel |
| `data/skill_api.dart` | Skill fetching and management API |

### Models

| File | Description |
|------|-------------|
| `model/job_item.dart` | `JobItem` model with `JobStatusView` enum (label, color, `isActive`, `isReviewEligible`) |
| `model/job_workflow_models.dart` | `BidItem`, `JobCodeInfo`, `PaymentInfo` for workflow sheet state |
| `model/parsed_job_data.dart` | AI-parsed job creation data |
| `model/ranked_job_feed.dart` | AI-ranked job feed results |
| `model/ai_suggested_bid.dart` | AI-generated bid suggestions |

### View Models

| File | Description |
|------|-------------|
| `view_model/job_view_model.dart` | `JobRepository` interface + `ApiJobRepository` + `ProviderJobsController` + `WorkerFeedController` + `CreateJobController` |
| `view_model/navigation_view_model.dart` | Tab index controllers with persistence |
| `view_model/worker_skills_view_model.dart` | Worker skill toggles with persistence |
| `view_model/create_job_form_view_model.dart` | Create-job form UI state |
| `view_model/skill_suggest_view_model.dart` | Skill suggestion autocomplete |
| `view_model/ai_job_parser_provider.dart` | On-device AI job description parsing |
| `view_model/ai_bid_generator_provider.dart` | On-device AI bid amount suggestion |
| `view_model/ai_job_ranking_provider.dart` | On-device AI feed ranking |

### Views

| File | Description |
|------|-------------|
| `view/provider_shell_view.dart` | Client shell: My Jobs tab, Create tab, Chat tab, Account tab + job workflow bottom sheet |
| `view/worker_shell_view.dart` | Worker shell: Feed tab, My Jobs tab, Skills tab, Chat tab, Account tab + job workflow bottom sheet |
| `view/location_picker_screen.dart` | Map-based location picker with reverse geocoding |
| `view/admin_shell_view.dart` | Admin dashboard shell |
| `view/widgets/job_card.dart` | Reusable job summary card |
| `view/widgets/job_shared_widgets.dart` | Shared UI components (MetaPill, AccountDetailRow, etc.) |
| `view/widgets/ai_describe_job_sheet.dart` | AI-assisted job description form |
| `view/widgets/skill_suggest_field.dart` | Autocomplete skill input |

---

## Key Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `providerJobsControllerProvider` | `AsyncNotifier` | Client's job list |
| `workerFeedControllerProvider` | `AsyncNotifier` | Worker's nearby job feed |
| `workerMyJobsProvider(filter)` | `FutureProvider.family` | Worker's jobs filtered by status |
| `createJobControllerProvider` | `AsyncNotifier` | Create job flow |

---

## `JobRepository` Interface

| Method | Description |
|--------|-------------|
| `fetchProviderJobs()` | Client's active jobs |
| `fetchProviderPastJobs()` | Client's completed/cancelled jobs |
| `fetchWorkerFeed()` | Geo-radius worker feed |
| `fetchWorkerMyJobs(statuses)` | Worker's jobs by status |
| `createJob(input)` | Create a new job |
| `fetchJobForCurrentRole(jobId)` | Role-specific job detail |
| `updateJobStatus(...)` | Update job status |
| `deleteJob(jobId)` | Delete a job |
| `fetchBids(jobId)` | List bids for a job |
| `placeBid(input)` | Worker places a bid |
| `acceptBid(bidId)` | Client accepts a bid |
| `handshakeBid(...)` | Worker handshake |
| `generateCodes(jobId)` | Generate OTP codes |
| `fetchCodes(jobId)` | Fetch current OTP codes |
| `verifyStartCode(...)` | Worker verifies start code |
| `verifyReleaseCode(...)` | Client verifies release code |
| `lockEscrow(...)` | Lock escrow payment |
| `releaseEscrow(...)` | Release escrow payment |

---

## Client Workflow Sheet

Status-driven UI actions (in `_ProviderJobWorkflowSheet`):

| Status | UI Actions |
|--------|------------|
| `OPEN_FOR_BIDS` | Bid list with accept buttons |
| `BID_SELECTED_AWAITING_HANDSHAKE` | "Generate Start Code" button |
| `READY_TO_START` | Start code card (copy) + Lock Escrow button |
| `IN_PROGRESS` | Release code card (copy) + "Verify & Release Payment" |
| `COMPLETED` | "Leave a Review" button |
| Any non-terminal | Cancel Task, Delete Task |

## Worker Workflow Sheet

| Status | UI Actions |
|--------|------------|
| `OPEN_FOR_BIDS` | Place Offer form (amount, partner name, notes) |
| `BID_SELECTED_AWAITING_HANDSHAKE` | Accept / Decline handshake |
| `READY_TO_START` | Start code input + "Verify & Start Work" |
| `IN_PROGRESS` | Lock card (work in progress, wait for release code) |

---

## Backend Endpoints Used

| Endpoint | Used By |
|----------|---------|
| `POST /api/v1/jobs` | `createJob()` |
| `GET /api/v1/jobs/client/{id}` | `fetchProviderJobs()` |
| `GET /api/v1/jobs/worker/{id}/feed` | `fetchWorkerFeed()` |
| `POST /api/v1/bid/jobs/{id}/bids` | `placeBid()` |
| `POST /api/v1/bid/bids/{id}/accept` | `acceptBid()` |
| `POST /api/v1/bid/bids/{id}/handshake` | `handshakeBid()` |
| `POST /api/v1/jobs/{id}/codes` | `generateCodes()` |
| `GET /api/v1/jobs/{id}/codes` | `fetchCodes()` |
| `POST /api/v1/jobs/{id}/codes/start` | `verifyStartCode()` |
| `POST /api/v1/jobs/{id}/codes/release` | `verifyReleaseCode()` |
| `POST /api/v1/jobs/{id}/payments/lock` | `lockEscrow()` |
| `POST /api/v1/jobs/{id}/payments/release` | `releaseEscrow()` |
