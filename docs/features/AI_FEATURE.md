# AI Feature

> On-device AI capabilities — job description parsing, bid generation, feed ranking, chat suggestions, and model management.

---

## Overview

The AI feature powers on-device inference using the **RunAnywhere SDK** with llama.cpp backend. All AI operations run locally — no data leaves the device. The feature provides job description parsing, smart bid generation, feed ranking, and chat reply suggestions. Users manage model downloads and lifecycle through the AI setup screen.

---

## File Inventory

### Core AI Layer (`lib/src/core/ai/`)

| File | Description |
|------|-------------|
| `run_anywhere_service.dart` | Low-level static bridge to RunAnywhere SDK: init, download, load, delete, generateStream |
| `model_catalog.dart` | Model specifications: ID, name, URL, memory/storage requirements, default model |
| `device_checker.dart` | Checks device RAM/disk to determine model compatibility |
| `ai_output_validator.dart` | Validates and parses LLM JSON output with fallback extraction |

### AI Providers (`lib/src/core/providers/ai/`)

| File | Description |
|------|-------------|
| `ai_service_provider.dart` | Riverpod provider exposing AI service readiness state |
| `model_manager_provider.dart` | `ModelManagerNotifier` — manages download, load, delete lifecycle with progress tracking |

### Feature-Level AI Providers

| File | Location | Description |
|------|----------|-------------|
| `ai_job_parser_provider.dart` | `features/jobs/view_model/` | Parses natural language job descriptions into structured `ParsedJobData` |
| `ai_bid_generator_provider.dart` | `features/jobs/view_model/` | Suggests bid amounts based on job details and market context |
| `ai_job_ranking_provider.dart` | `features/jobs/view_model/` | Re-ranks worker feed by relevance using worker skills and preferences |
| `ai_chat_suggester_provider.dart` | `features/chat/view_model/` | Generates 3 contextual reply suggestions from conversation history |

### Views

| File | Description |
|------|-------------|
| `view/ai_analysis_panel.dart` | Reusable AI analysis results panel |
| `view/ai_setup_screen.dart` | Model download/delete management UI |

---

## `RunAnywhereService` — Static API

| Method | Description |
|--------|-------------|
| `ensureSDKInitialized()` | Idempotent: `initialize()` → `register()` → add catalog models |
| `getDownloadedModelIds()` | Returns IDs of locally available models |
| `isModelDownloaded(id)` | Check if a specific model is on disk |
| `downloadModel(id, onProgress)` | Downloads model with progress callback (0.0–1.0 fraction + bytes) |
| `loadModel(id)` | Loads model into memory (skips if already loaded) |
| `deleteModel(id)` | Unloads (if loaded) + deletes from disk |
| `getModelDiskSizes()` | Returns byte sizes for all downloaded models |
| `generateStream(prompt, systemPrompt, maxTokens, temperature)` | Streams tokens from on-device LLM |

---

## `ModelManagerNotifier` — State Machine

| State | Description |
|-------|-------------|
| `notReady` | SDK not initialized |
| `idle(downloaded, loaded)` | Ready, showing which models are available |
| `downloading(id, progress, bytesDownloaded)` | Download in progress |
| `loading(id)` | Loading model into memory |
| `error(message)` | Operation failed |

---

## AI Use Cases

### 1. Job Description Parser

```
User types: "I need someone to fix my kitchen sink, about 2 hours work"
  → AI produces:
    { title: "Kitchen Sink Repair",
      shortDescription: "Fix kitchen sink plumbing",
      longDescription: "...",
      suggestedSkills: ["Plumbing"],
      estimatedDuration: "2 hours" }
```

### 2. Bid Generator

```
Job: "Kitchen Sink Repair" ($50-100 range, 2 hours)
  → AI suggests: { amount: 75, reasoning: "Mid-range for standard plumbing repair" }
```

### 3. Feed Ranker

```
Worker skills: ["Plumbing", "Carpentry"]
Feed: [job1: Electrical, job2: Plumbing, job3: Painting]
  → Re-ranked: [job2, job3, job1] with relevance scores
```

### 4. Chat Suggester

```
Last message: "When can you start the work?"
  → Suggestions: ["Tomorrow morning at 9 AM", "I'm available this afternoon", "Can we discuss the time?"]
```

---

## Model Catalog

| ID | Name | Size | Memory Required |
|----|------|------|-----------------|
| `default` (Qwen-2.5) | Default reasoning model | ~1.5 GB | ~2 GB RAM |

---

## Design Principles

1. **All inference is local** — no data leaves the device
2. **Graceful degradation** — AI features are optional; app works fully without them
3. **Progressive download** — model is downloaded only when user opts in
4. **Debug logging** — full prompt and chain-of-thought logged in debug builds
5. **Structured output** — all AI outputs validated and parsed with fallback extraction
