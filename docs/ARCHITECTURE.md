# AroundU Mobile Architecture (MVVM)

## Overview
The mobile app now follows a strict **MVVM** + **feature-first** structure with **Riverpod** for all business state management.

- **Model**: Pure data models (`features/*/model`)
- **ViewModel**: Riverpod notifiers/controllers (`features/*/view_model`)
- **View**: Flutter screens/widgets (`features/*/view`)

## Folder Structure

```text
lib/
  main.dart
  app.dart
  src/
    core/
      ai/
        run_anywhere_service.dart     # On-device LLM bridge (RunAnywhere SDK)
        model_catalog.dart            # Model specs and defaults
        device_checker.dart           # RAM/disk compatibility
        ai_output_validator.dart      # LLM JSON output parser
      config/
        app_environment.dart
      fx/
        exchange_rate_notifier.dart   # Currency rate caching
      logging/
        app_logger.dart
      network/
        api_client.dart               # Dio-based HTTP client
        dio_client.dart               # Dio instance config
        api_exception.dart            # Typed error codes
        encryption_interceptor.dart   # AES-256 payload encryption
        websocket_service.dart        # STOMP WebSocket client
      providers/
        core_providers.dart           # Root Riverpod providers
        ai/
          ai_service_provider.dart
          model_manager_provider.dart
      storage/
        local_storage.dart
      theme/
        app_theme.dart
      view_model/
        theme_view_model.dart
      widgets/
        primary_button.dart
        loading_overlay.dart
        error_retry_widget.dart
    features/
      admin/
        data/
          admin_api.dart              # Admin overview endpoint
        view/
          admin_dashboard_view.dart
        view_model/
          admin_view_model.dart
      auth/
        data/
          auth_api.dart
        view/
          splash_view.dart
          onboarding_view.dart
          login_view.dart
          register_view.dart
          role_selection_view.dart
        view_model/
          auth_ui_view_model.dart
          auth_view_model.dart
      chat/
        data/
          chat_api.dart               # Messaging HTTP calls
        model/
          chat_models.dart            # Conversation, ChatMessage, MessageStatus
        view/
          conversations_view.dart     # Flat conversation list
          job_conversations_view.dart # Grouped by job (client)
          chat_detail_view.dart       # Chat screen
        view_model/
          chat_view_model.dart        # 3 controllers + WebSocket
          ai_chat_suggester_provider.dart  # AI reply suggestions
      jobs/
        data/
          job_api.dart
          skill_api.dart
        model/
          job_item.dart
          job_workflow_models.dart     # BidItem, JobCodeInfo, PaymentInfo
          parsed_job_data.dart        # AI-parsed job creation
          ranked_job_feed.dart        # AI-ranked feed
        view/
          provider_shell_view.dart
          worker_shell_view.dart
          location_picker_screen.dart
          admin_shell_view.dart
          widgets/
            job_card.dart
            job_shared_widgets.dart
            ai_describe_job_sheet.dart
            skill_suggest_field.dart
        view_model/
          create_job_form_view_model.dart
          job_view_model.dart
          navigation_view_model.dart
          worker_skills_view_model.dart
          skill_suggest_view_model.dart
          ai_job_parser_provider.dart       # AI job description parser
          ai_bid_generator_provider.dart    # AI bid suggestion
          ai_job_ranking_provider.dart      # AI feed ranking
      profile/
        data/
          user_profile_api.dart       # Profile image upload/delete
        view/
          edit_profile_view.dart
          language_picker_view.dart
          public_profile_view.dart
          worker_profile_detail_view.dart
        view_model/
          profile_view_model.dart
          public_profile_view_model.dart
      review/
        data/
          review_api.dart             # Review CRUD + eligibility
        model/
          review_models.dart
        view/
          leave_review_view.dart
          reviews_list_view.dart
          worker_reviews_view.dart
        view_model/
          review_view_model.dart
```

## State Management Rules
- Business/session/job state is managed in Riverpod ViewModels only.
- Views only hold widget lifecycle objects (e.g. text/page controllers).
- Ephemeral interactive state (toggle visibility, page index, selected dropdown values) is managed in Riverpod UI ViewModels/providers.
- API/network state is exposed via `AsyncNotifier` and `Notifier` state objects.
- Shared presentation widgets are placed in `features/*/view/widgets` to avoid duplicated screen code.
- Persistent app state (auth session, tab indexes, worker skills) is saved via `LocalStorage` and restored by Riverpod controllers.
- Theme mode is managed in `ThemeModeController` and persisted via `LocalStorage`.

## Data Flow
1. View triggers a ViewModel action (e.g. `login`, `register`, `submit job`, `send message`).
2. ViewModel calls feature API data source (`AuthApi`, `JobApi`, `ChatApi`, `ReviewApi`, `AdminApi`, `UserProfileApi`).
3. Data source uses core `ApiClient` (HTTP) or `WebSocketService` (real-time).
4. ViewModel maps API data into Model objects and updates provider state.
5. View reacts to provider state changes.
6. *(Optional)* AI providers call `RunAnywhereService` for on-device inference and emit parsed results.

## API Configuration
- Base URL is configured via `API_BASE_URL` dart define.
- Default (Android emulator): `http://10.0.2.2:20232`
- Default (iOS simulator): `http://localhost:20232`

Example run command:

```bash
flutter run --dart-define=API_BASE_URL=http://localhost:20232
```

## Cleanup Completed
Removed legacy non-MVVM code paths and unused old UI stacks from `lib/`:
- old auth/routes/provider/worker/constants/maps/models modules
- obsolete localization folder not used by the new runtime flow

The active runtime now uses only `lib/app.dart`, `lib/main.dart`, and `lib/src/**` in this MVVM layout.
