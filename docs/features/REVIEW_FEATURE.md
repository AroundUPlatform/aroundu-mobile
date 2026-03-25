# Review Feature

> Post-job bi-directional reviews with eligibility checks, rating display, and worker review history.

---

## Overview

The Review feature allows clients to rate workers and workers to rate clients after a job reaches `PAYMENT_RELEASED` or `COMPLETED` status. Includes eligibility checking, star-rating input, and per-worker review history.

---

## File Inventory

### Data Layer

| File | Description |
|------|-------------|
| `data/review_api.dart` | `ReviewApi` — `submitReview`, `submitWorkerReview`, `getWorkerReviews`, `getJobReview`, `checkReviewEligibility` |

### Models

| File | Description |
|------|-------------|
| `model/review_models.dart` | `ReviewItem` — reviewer, reviewee, rating, comment, timestamp |

### View Models

| File | Description |
|------|-------------|
| `view_model/review_view_model.dart` | Review submission state, eligibility check, worker reviews fetching |

### Views

| File | Description |
|------|-------------|
| `view/leave_review_view.dart` | Star-rating picker with optional comment textarea |
| `view/reviews_list_view.dart` | Scrollable list of all reviews for a given entity |
| `view/worker_reviews_view.dart` | Worker-specific review list with aggregate rating |

---

## API Methods

### `ReviewApi`

| Method | Description |
|--------|-------------|
| `submitReview(token, jobId, clientId, rating, comment)` | Client → Worker review |
| `submitWorkerReview(token, jobId, workerId, rating, comment)` | Worker → Client review |
| `getWorkerReviews(workerId, token?)` | List all reviews for a worker |
| `getJobReview(jobId, token?)` | Get the review for a specific job |
| `checkReviewEligibility(token, jobId, userId)` | Check if user already reviewed this job |

---

## Key Flow

```
Job reaches PAYMENT_RELEASED or COMPLETED
  │
  ├─ Client view: "Leave a Review" button appears
  │    → checkReviewEligibility() → eligible?
  │    → LeaveReviewView → star rating + comment
  │    → submitReview() → success toast
  │
  └─ Worker view: "Leave a Review" button appears
       → checkReviewEligibility() → eligible?
       → LeaveReviewView → star rating + comment
       → submitWorkerReview() → success toast
```

---

## Backend Endpoints Used

| Endpoint | Method |
|----------|--------|
| `POST /api/v1/reviews/jobs/{jobId}` | Client submits review |
| `POST /api/v1/reviews/jobs/{jobId}/worker` | Worker submits review |
| `GET /api/v1/reviews/workers/{workerId}` | Get worker's reviews |
| `GET /api/v1/reviews/jobs/{jobId}` | Get job review |
| `GET /api/v1/reviews/jobs/{jobId}/eligibility` | Check review eligibility |
