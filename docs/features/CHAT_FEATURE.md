# Chat Feature

> Real-time job-scoped messaging with WebSocket push, delivery receipts, and AI suggestions.

---

## Overview

The Chat feature provides real-time messaging between clients and workers within the context of a specific job. Conversations are auto-created on bid acceptance. The feature supports WebSocket live updates, delivery/read receipts, polling fallback, and AI-generated reply suggestions.

---

## File Inventory

### Data Layer

| File | Description |
|------|-------------|
| `data/chat_api.dart` | `ChatApi` — HTTP calls: `sendMessage`, `getMessages`, `getConversations`, `getConversationsGrouped`, `markAsRead`, `markAsDelivered` |

### Models

| File | Description |
|------|-------------|
| `model/chat_models.dart` | `Conversation`, `ChatMessage`, `JobConversationsGroup`, `MessageStatus` (sent/delivered/read) |
| `model/ai_chat_suggestions.dart` | AI-generated smart reply suggestions |

### View Models

| File | Description |
|------|-------------|
| `view_model/chat_view_model.dart` | `ConversationsController`, `GroupedConversationsController`, `ChatMessagesController` with WebSocket subscriptions and polling |
| `view_model/ai_chat_suggester_provider.dart` | On-device AI provider for generating contextual reply suggestions |

### Views

| File | Description |
|------|-------------|
| `view/conversations_view.dart` | Flat conversation list (worker view) |
| `view/job_conversations_view.dart` | Conversations grouped by job (client/provider view) |
| `view/chat_detail_view.dart` | Full chat screen with message list, input, typing indicator |

---

## Key Providers

| Provider | Type | Purpose |
|----------|------|---------|
| `conversationsControllerProvider` | `AsyncNotifier<List<Conversation>>` | Flat conversation list |
| `groupedConversationsControllerProvider` | `AsyncNotifier<List<JobConversationsGroup>>` | Grouped conversation list |
| `chatMessagesControllerProvider` | `NotifierProvider.family<..., int>` | Messages for a specific conversation (by ID) |

---

## `ChatMessagesState`

| Field | Type | Description |
|-------|------|-------------|
| `messages` | `List<ChatMessage>` | Loaded messages |
| `isLoading` | `bool` | Initial load in progress |
| `isSending` | `bool` | Message send in progress |
| `isOtherTyping` | `bool` | Typing indicator from other participant |
| `errorMessage` | `String?` | Current error |

---

## WebSocket Integration

The chat feature uses STOMP WebSocket for real-time updates:

```
ChatMessagesController.build(conversationId)
  │
  ├─ _subscribeToWebSocket()
  │    ├─ Subscribe to /topic/conversation.{id}      → new messages
  │    ├─ Subscribe to /topic/conversation.{id}.status → delivery/read updates
  │    └─ Subscribe to /topic/conversation.{id}.typing → typing indicators
  │
  └─ _loadMessages() → initial HTTP fetch

sendMessage()
  ├─ POST /api/v1/chat/jobs/{jobId}/messages  (HTTP)
  └─ Optimistic UI update → add message to state immediately
```

### Polling Fallback

When WebSocket connection is unavailable, conversations auto-poll every 15 seconds:

```
ConversationsController.build()
  ├─ _ensureWebSocketConnected()
  ├─ _fetch()  (initial load)
  └─ _startPolling()  (every 15s)
```

---

## AI Chat Suggestions

| Provider | Description |
|----------|-------------|
| `aiChatSuggesterProvider` | Uses on-device LLM to generate 3 contextual reply suggestions based on conversation history and job context |

---

## Backend Endpoints Used

| Endpoint | Method |
|----------|--------|
| `POST /api/v1/chat/jobs/{jobId}/messages` | `ChatApi.sendMessage()` |
| `GET /api/v1/chat/conversations/{id}/messages` | `ChatApi.getMessages()` |
| `GET /api/v1/chat/conversations` | `ChatApi.getConversations()` |
| `GET /api/v1/chat/conversations/grouped` | `ChatApi.getConversationsGrouped()` |
| `POST /api/v1/chat/conversations/{id}/read` | `ChatApi.markAsRead()` |
| `POST /api/v1/chat/conversations/{id}/delivered` | `ChatApi.markAsDelivered()` |
