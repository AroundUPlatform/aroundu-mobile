# AroundU Flutter – Manual Testing Checklist

> Run through each journey end-to-end after every full build.
> Mark ✅ / ❌ / ⚠️ (passes with caveat).

---

## Pre-requisites
- [ ] Backend running locally (`docker compose up` or Spring Boot)
- [ ] Test accounts: **Client** and **Worker** registered & verified
- [ ] At least one `Skill` seeded in the database
- [ ] Device/emulator has location services enabled

---

## Journey 1 — Client Posts a Job

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| 1.1 | Client taps "Post Job" → fills form → submits | Job created; lands on job detail; status badge = **Open For Offers** | |
| 1.2 | Worker opens feed → new job appears | Job card shows title, distance, budget | |
| 1.3 | Worker taps job → places bid | Bid sent; confirmation toast; bid appears in list | |
| 1.4 | Client opens job detail → sees bid list | Bid shows worker name, amount, notes | |
| 1.5 | Client taps "Accept" on a bid | Status changes to **Offer Accepted**; other bids disappear or disabled | |
| 1.6 | **Verify chat auto-created**: Client goes to Chat tab | Conversation with the accepted worker is listed | |
| 1.7 | Worker receives notification and taps "Accept Handshake" | Status changes to **Ready to Start** | |
| 1.8 | Client locks escrow (if ESCROW payment) | Payment lock confirmation; status remains **Ready to Start** | |
| 1.9 | Worker taps "Start Task" | Status changes to **In Progress** | |

---

## Journey 2 — Task Completion & Payment

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| 2.1 | Worker taps "Mark Complete" | Status changes to **Pending Payment** | |
| 2.2 | Client sees updated status | Badge = **Pending Payment** (warning color) | |
| 2.3 | Client enters release code / taps "Release Payment" | Payment released; status → **Payment Released** | |
| 2.4 | Client writes review (5 ⭐, comment) | Review submitted; "Review Submitted" confirmation | |
| 2.5 | Worker writes review for client | Review submitted from worker side | |
| 2.6 | Opening reviews page shows both reviews | Ratings & comments visible | |
| 2.7 | **Guard**: Client tries to review again | Error: "review already submitted" | |

---

## Journey 3 — Chat

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| 3.1 | After bid acceptance, open chat tab | Conversation present with correct participants | |
| 3.2 | Client sends message | Message appears in chat; real-time or on refresh | |
| 3.3 | Worker receives and replies | Message thread shows both sides chronologically | |
| 3.4 | Mark-as-read: open conversation | Unread badge disappears | |

---

## Escrow Edge Cases

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| E.1 | Try to lock escrow on OPEN_FOR_BIDS job | Error: "cannot lock before worker assignment" | |
| E.2 | Lock escrow → try locking again | Error: "escrow already exists" | |
| E.3 | Different client tries to lock escrow | Error: "does not own this job" | |
| E.4 | Release without completing task first | Error: "invalid state for release" | |

---

## State Transition Guards (via Worker actions)

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| S.1 | Worker tries to cancel job | Error: "Workers can only transition to IN_PROGRESS or COMPLETED_PENDING_PAYMENT" | |
| S.2 | Worker marks IN_PROGRESS on already completed job | Error: "Invalid status transition" | |
| S.3 | Client tries OPEN_FOR_BIDS → IN_PROGRESS | Error: "Invalid status transition" | |

---

## Review Guards

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| R.1 | Submit review on OPEN_FOR_BIDS job | Error: job not eligible for review | |
| R.2 | Submit duplicate client review | Error: "review already submitted" | |
| R.3 | Worker submits review on COMPLETED job | Review saved; rating visible | |
| R.4 | Check eligibility API before showing review button | Returns `eligible: true` only after PAYMENT_RELEASED / COMPLETED | |

---

## Offline / Error Scenarios

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| O.1 | Kill backend → try any action | Graceful error message; no crash | |
| O.2 | Slow network → submit bid | Loading indicator shown; no double-submit | |
| O.3 | Session expired → any API call | Redirect to login; token cleared | |

---

## OTP Code Flow

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| C.1 | Client taps "Generate Start Code" (READY_TO_START) | 6-digit code shown; code card visible | |
| C.2 | Worker enters correct start code | Status → **In Progress**; success toast | |
| C.3 | Worker enters wrong code 5 times | Code locked; "Regenerate" button shown to client | |
| C.4 | Client taps "Regenerate" | New code generated; old code invalidated | |
| C.5 | Client fetches release code (after IN_PROGRESS) | Release code shown; start code hidden | |
| C.6 | Client verifies release code | Status → **Pending Payment** | |
| C.7 | Try regenerate within 1 minute | Error: "Rate limited, try again later" | |

---

## Profile Management

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| P.1 | Navigate to Account → tap Edit Profile | Edit form shows current name, phone, address | |
| P.2 | Upload profile image (camera/gallery) | Image uploaded; new image visible; public URL returned | |
| P.3 | Delete profile image | Image removed; default avatar shown | |
| P.4 | View worker's public profile from job card | Public profile shows name, rating, review count | |
| P.5 | Change language (Language Picker) | App text updates to selected locale | |
| P.6 | Update name and phone → save | Success toast; profile reflects changes | |

---

## Admin Dashboard

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| A.1 | Login as Admin → admin shell loads | Dashboard shows metric cards | |
| A.2 | Verify metrics: totalClients, totalWorkers | Counts match database | |
| A.3 | Verify: activeJobs, openJobs | Counts match current job statuses | |
| A.4 | Verify: jobsCreatedToday, jobsCompletedToday | Match today's activity | |
| A.5 | Non-admin tries `/api/v1/admin/overview` | 403 Forbidden | |

---

## AI Features (On-Device)

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| AI.1 | Open AI Setup → download default model | Progress bar shows; model downloads successfully | |
| AI.2 | Create Job → tap "AI Describe" → enter description | Structured job data parsed from free text | |
| AI.3 | Worker feed → AI ranking toggle | Feed re-ordered by relevance score | |
| AI.4 | Place bid → tap "AI Suggest" | Suggested bid amount + reasoning shown | |
| AI.5 | Chat → AI suggestions appear | 3 contextual reply suggestions below input | |
| AI.6 | Delete model from AI Setup | Model removed; disk space freed | |
| AI.7 | **Graceful degradation**: AI features without model | Feature quietly unavailable; no crash | |

---

## WebSocket / Real-Time

| # | Step | Expected | Pass? |
|---|------|----------|-------|
| W.1 | Two devices: send chat message | Message appears on other device within 1-2 seconds | |
| W.2 | Read receipt: open conversation | Sender sees "Read" status update | |
| W.3 | Typing indicator | Recipient sees "typing…" indicator | |
| W.4 | WebSocket disconnects → polling fallback | Conversations refresh every 15 seconds | |

---

## Sign-off

| Role | Name | Date | Verdict |
|------|------|------|---------|
| QA | | | |
| Dev | | | |
| PM | | | |
