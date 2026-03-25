# AroundU Mobile Method Reference

This file documents the purpose of each method in the current MVVM codebase.

## `lib/main.dart`
- `main`: Bootstraps Flutter, enforces portrait mode, and mounts `ProviderScope`.

## `lib/app.dart`
- `AroundUApp.build`: Builds `MaterialApp`, theme, and named routes.

## `lib/src/core/config/app_environment.dart`
- `AppEnvironment.apiBaseUrl`: Resolves API base URL from dart-define override or platform-aware local defaults.

## `lib/src/core/network/api_client.dart`
- `ApiClient.getJson`: Sends authenticated/unauthenticated GET request and returns decoded JSON map.
- `ApiClient.postJson`: Sends JSON POST request and returns decoded JSON map.
- `ApiClient.patchJson`: Sends JSON PATCH request and returns decoded JSON map.
- `ApiClient._executeRequest`: Executes request with standardized logging + network error wrapping.
- `ApiClient._buildUri`: Builds URI path + query parameters including list query keys.
- `ApiClient._headers`: Builds standard request headers and injects bearer token if present.
- `ApiClient._decodeAsMap`: Decodes success responses and throws on malformed payload.
- `ApiClient._toApiException`: Maps HTTP error body/status to `ApiException`.
- `ApiClient._logRequest`: Logs request metadata and sanitized payload for debugging.
- `ApiClient._logResponse`: Logs response status/body for debugging.
- `ApiClient._sanitizeHeaders`: Redacts sensitive header values before logging.
- `ApiClient._sanitizePayload`: Redacts sensitive payload keys before logging.
- `ApiClient._truncate`: Truncates long log payloads.

## `lib/src/core/network/api_exception.dart`
- `ApiException.userMessage`: Builds a user-friendly message with status/details.
- `ApiException.toString`: Builds a debug-friendly full error string.

## `lib/src/core/logging/app_logger.dart`
- `AppLogger.debug`: Prints debug logs when logging is enabled.
- `AppLogger.error`: Prints structured error logs with optional stack trace.

## `lib/src/core/storage/local_storage.dart`
- `LocalStorage.readAuthSession`: Reads persisted auth session JSON payload.
- `LocalStorage.saveAuthSession`: Persists auth session JSON payload.
- `LocalStorage.clearAuthSession`: Clears persisted auth session payload.
- `LocalStorage.readProviderTabIndex`: Reads persisted provider tab index.
- `LocalStorage.saveProviderTabIndex`: Persists provider tab index.
- `LocalStorage.readWorkerTabIndex`: Reads persisted worker tab index.
- `LocalStorage.saveWorkerTabIndex`: Persists worker tab index.
- `LocalStorage.readWorkerSkills`: Reads persisted worker skill labels.
- `LocalStorage.saveWorkerSkills`: Persists worker skill labels.
- `LocalStorage.readThemeMode`: Reads persisted app theme mode.
- `LocalStorage.saveThemeMode`: Persists app theme mode.

## `lib/src/features/auth/data/auth_api.dart`
- `RegistrationRequest.toClientPayload`: Converts registration input to client registration API body.
- `RegistrationRequest.toWorkerPayload`: Converts registration input to worker registration API body.
- `AuthApi.login`: Calls `/api/v1/auth/login` and returns token/session payload.
- `AuthApi.registerClient`: Calls `/api/v1/client/register` and validates success envelope.
- `AuthApi.registerWorker`: Calls `/api/v1/worker/register` and validates success envelope.
- `AuthApi.fetchClientProfile`: Calls `/api/v1/client/me` and extracts profile location/currency.
- `AuthApi.fetchWorkerProfile`: Calls `/api/v1/worker/me` and extracts location/skills/currency.
- `AuthApi._ensureSuccessEnvelope`: Verifies backend `success=true` wrapper.
- `AuthApi._readDataMap`: Extracts `data` object from wrapped API response.
- `AuthApi._asMap`: Safe map cast helper.
- `AuthApi._asInt`: Safe integer parse helper.

## `lib/src/features/jobs/data/job_api.dart`
- `JobApi.fetchClientJobs`: Calls provider job-list endpoint and returns page content list.
- `JobApi.fetchWorkerFeed`: Calls worker feed endpoint and returns page content list.
- `JobApi.createJob`: Calls create-job endpoint with mapped request payload.
- `JobApi._readPageContent`: Reads `data.content` list from wrapped page response.
- `JobApi._readDataMap`: Validates and unwraps backend `ApiResponse` envelope.

## `lib/src/features/auth/view_model/auth_view_model.dart`
- `AuthState.isAuthenticated`: Returns session validity from token/user id.
- `AuthState.copyWith`: Updates auth state immutably with optional clear flags.
- `AuthController.build`: Initializes default unauthenticated state.
- `AuthController._restoreSession`: Hydrates session state from device persistence.
- `AuthController.login`: Performs login + profile hydration (role, ids, skills, currency).
- `AuthController.register`: Registers provider/worker using selected role payload.
- `AuthController.setRole`: Updates selected role in state.
- `AuthController.clearError`: Clears current auth error from state.
- `AuthController.logout`: Clears session/auth state.
- `AuthController._mapRole`: Maps backend authority role to app role enum.
- `AuthController._errorMessage`: Normalizes thrown exceptions to user-facing messages.
- `AuthController._persistSession`: Persists authenticated session fields on device.
- `AuthController._roleToWire`: Maps app role enum to persisted backend role string.
- `AuthController._asInt`: Safe integer parse helper for restored session values.

## `lib/src/features/auth/view_model/auth_ui_view_model.dart`
- `RegisterFormUiState.copyWith`: Updates register-form UI state immutably.
- `RegisterFormUiController.build`: Initializes register-form UI defaults.
- `RegisterFormUiController.setRole`: Updates selected registration role chip.
- `RegisterFormUiController.setCountry`: Updates selected registration country.
- `RegisterFormUiController.setCurrency`: Updates selected registration currency.
- `RegisterFormUiController.togglePasswordVisibility`: Toggles register password visibility.

## `lib/src/features/jobs/view_model/job_view_model.dart`
- `ApiJobRepository.fetchProviderJobs`: Loads provider jobs from authenticated API.
- `ApiJobRepository.fetchWorkerFeed`: Loads worker feed jobs from authenticated API.
- `ApiJobRepository.createJob`: Creates job for logged-in provider with mapped payload.
- `ApiJobRepository._mapSummaryToJobItem`: Maps backend summary DTO to UI `JobItem` model.
- `ApiJobRepository._mapStatus`: Converts backend job status to UI job status enum.
- `ApiJobRepository._mapUrgencyToCategory`: Converts backend urgency to UI category label.
- `ApiJobRepository._skillIdsForCategory`: Maps UI category to backend skill ids.
- `ApiJobRepository._toDouble`: Safe double parse helper.
- `ProviderJobsController.build`: Initial provider jobs load.
- `ProviderJobsController.refresh`: Explicitly reloads provider jobs.
- `WorkerFeedController.build`: Initial worker feed load.
- `WorkerFeedController.refresh`: Explicitly reloads worker feed.
- `CreateJobController.build`: Initializes create-job async notifier.
- `CreateJobController.submit`: Creates job and invalidates job/feed providers.

## `lib/src/features/jobs/view_model/create_job_form_view_model.dart`
- `createJobSelectedCategoryProvider`: Stores create-job selected category UI state.

## `lib/src/features/jobs/view_model/navigation_view_model.dart`
- `ProviderTabIndexController.build`: Initializes provider tab index and restores persisted value.
- `ProviderTabIndexController.setIndex`: Updates and persists provider tab selection.
- `ProviderTabIndexController.reset`: Resets provider tab index to the default tab.
- `WorkerTabIndexController.build`: Initializes worker tab index and restores persisted value.
- `WorkerTabIndexController.setIndex`: Updates and persists worker tab selection.
- `WorkerTabIndexController.reset`: Resets worker tab index to the default tab.

## `lib/src/features/jobs/view_model/worker_skills_view_model.dart`
- `WorkerSkillsController.build`: Initializes worker skill state and restores persisted values.
- `WorkerSkillsController.toggleSkill`: Updates and persists worker skill toggles.
- `WorkerSkillsController._restore`: Loads persisted worker skill values.
- `WorkerSkillsController._persist`: Saves current worker skill values.

## `lib/src/features/auth/view/splash_view.dart`
- `_SplashScreenState.initState`: Starts delayed routing timer.
- `_SplashScreenState._routeToNextScreen`: Routes based on authentication/role state.
- `_SplashScreenState.dispose`: Cancels timer.
- `_SplashScreenState.build`: Renders splash branding/loading UI.

## `lib/src/features/auth/view/onboarding_view.dart`
- `_OnboardingScreenState.dispose`: Disposes page controller.
- `_OnboardingScreenState._toLogin`: Navigates to login route.
- `_OnboardingScreenState._goNext`: Advances onboarding page or finishes flow.
- `_OnboardingScreenState.build`: Renders onboarding carousel and controls.
- `_OnboardingCard.build`: Renders one onboarding slide card.

## `lib/src/features/auth/view/login_view.dart`
- `_LoginScreenState.dispose`: Disposes form controllers.
- `_LoginScreenState._validateEmail`: Validates email format and required value.
- `_LoginScreenState._validatePassword`: Validates password constraints.
- `_LoginScreenState._routeAfterAuth`: Routes to shell based on authenticated role.
- `_LoginScreenState._submit`: Executes login action through auth ViewModel.
- `_LoginScreenState.build`: Renders login form and auth feedback.

## `lib/src/features/auth/view/register_view.dart`
- `_RegisterScreenState.dispose`: Disposes registration form controllers.
- `_RegisterScreenState._required`: Generic required-field validator.
- `_RegisterScreenState._validateEmail`: Validates registration email.
- `_RegisterScreenState._validatePhone`: Validates registration phone number.
- `_RegisterScreenState._validatePassword`: Validates registration password.
- `_RegisterScreenState._submit`: Builds registration input and calls auth ViewModel register.
- `_RegisterScreenState.build`: Renders registration form with role and location inputs.

## `lib/src/features/auth/view/role_selection_view.dart`
- `_RoleSelectionScreenState.initState`: Reads role and guards unauthenticated access.
- `_RoleSelectionScreenState._guardAuthenticatedAccess`: Defers guard checks until auth hydration completes.
- `_RoleSelectionScreenState._continue`: Persists role selection and routes to target shell.
- `_RoleSelectionScreenState.build`: Renders role selection UI.
- `_RoleCard.build`: Renders selectable role card UI.

## `lib/src/features/jobs/view/provider_shell_view.dart`
- `ProviderShellScreen.build`: Renders provider shell with tab navigation.
- `_ProviderJobsTab._refresh`: Triggers provider jobs reload.
- `_ProviderJobsTab.build`: Renders jobs list/loading/error/empty states.
- `_CreateJobTabState.dispose`: Disposes create-job form controllers.
- `_CreateJobTabState._required`: Generic required validator for create-job fields.
- `_CreateJobTabState._submit`: Sends create-job request via ViewModel.
- `_CreateJobTabState.build`: Renders create-job form and async status.
- `_ProviderAccountTab._logout`: Clears auth + tab state and routes to login.
- `_ProviderAccountTab.build`: Renders provider account/settings view.
- `_showJobDetailSheet`: Opens provider-side job detail bottom sheet.

## `lib/src/features/jobs/view/worker_shell_view.dart`
- `WorkerShellScreen.build`: Renders worker shell with tab navigation.
- `_WorkerFeedTab._refresh`: Triggers worker feed reload.
- `_WorkerFeedTab.build`: Renders worker feed list/loading/error/empty states.
- `_WorkerSkillsTab.build`: Renders editable worker skills chips.
- `_WorkerAccountTab._logout`: Clears auth + tab state and routes to login.
- `_WorkerAccountTab.build`: Renders worker account/settings view.
- `_showJobPreviewSheet`: Opens worker-side job preview bottom sheet.

## `lib/src/features/jobs/view/widgets/job_card.dart`
- `JobCard.build`: Renders reusable job summary card with optional tap callback.
- `_StatusBadge.build`: Renders status chip for job state.
- `_MetaChip.build`: Renders compact metadata chip (location/category/price/etc.).

## `lib/src/features/jobs/view/widgets/job_shared_widgets.dart`
- `AccountDetailRow.build`: Renders a label/value account row.
- `CenteredListBody.build`: Renders centered content inside refreshable list scaffold.
- `MetaPill.build`: Renders metadata chip used in job detail sheets.

## `lib/src/core/widgets/primary_button.dart`
- `PrimaryButton.build`: Renders standard full-width CTA button with loading state.

## `lib/src/core/widgets/app_notification.dart`
- `AppNotifier.showInfo`: Shows custom top notification for informational messages.
- `AppNotifier.showSuccess`: Shows custom top notification for success messages.
- `AppNotifier.showWarning`: Shows custom top notification for warning messages.
- `AppNotifier.showError`: Shows custom top notification for error messages.
- `AppNotifier.show`: Core overlay notification renderer with auto-dismiss behavior.

## `lib/src/core/theme/app_theme.dart`
- `buildAroundUTheme`: Builds the global Material 3 theme and component styles.
- `buildAroundUDarkTheme`: Builds the dark Material 3 theme variant.
- `_buildTheme`: Shared light/dark theme factory.

## `lib/src/core/view_model/theme_view_model.dart`
- `ThemeModeController.build`: Initializes theme mode and restores persisted mode.
- `ThemeModeController.setThemeMode`: Updates and persists selected theme mode.
- `ThemeModeController.toggle`: Switches between light and dark mode.
- `ThemeModeController._restore`: Restores persisted theme mode from storage.
- `ThemeModeController._persist`: Persists current theme mode to storage.
- `ThemeModeController._decodeThemeMode`: Maps persisted string to `ThemeMode`.

## `lib/src/features/jobs/model/job_item.dart`
- `JobStatusView.label`: Converts enum value to display label.
- `JobStatusView.color`: Converts enum value to status color.
- `JobStatusView.isActive`: Returns whether the status represents an active (in-progress) job.
- `JobStatusView.isReviewEligible`: Returns whether reviews can be submitted in this status.
- `JobItem.copyWith`: Creates immutable updated copy of `JobItem`.

---

## `lib/src/core/network/dio_client.dart`
- `DioClient.instance`: Returns configured Dio singleton with base URL, timeouts, and interceptors.

## `lib/src/core/network/encryption_interceptor.dart`
- `EncryptionInterceptor.onRequest`: AES-256 encrypts sensitive request payloads before sending.
- `EncryptionInterceptor.onResponse`: Decrypts AES-256 encrypted response payloads.

## `lib/src/core/network/websocket_service.dart`
- `WebSocketService.connect`: Connects to STOMP WebSocket endpoint with JWT auth.
- `WebSocketService.subscribe`: Subscribes to a topic with callback handler.
- `WebSocketService.send`: Publishes payload to a STOMP destination.
- `WebSocketService.disconnect`: Graceful WebSocket disconnect.

## `lib/src/core/fx/exchange_rate_notifier.dart`
- `ExchangeRateNotifier.build`: Fetches exchange rate from backend on init.
- `ExchangeRateNotifier.refresh`: Re-fetches current exchange rate.

## `lib/src/core/ai/run_anywhere_service.dart`
- `RunAnywhereService.ensureSDKInitialized`: Idempotent SDK init: initialize → register → add catalog models.
- `RunAnywhereService.getDownloadedModelIds`: Returns IDs of locally available models.
- `RunAnywhereService.isModelDownloaded`: Checks if a specific model is on disk.
- `RunAnywhereService.downloadModel`: Downloads model with progress callback.
- `RunAnywhereService.loadModel`: Loads model into memory (skip if already loaded).
- `RunAnywhereService.deleteModel`: Unloads and deletes model from disk.
- `RunAnywhereService.getModelDiskSizes`: Returns on-disk byte sizes for all downloaded models.
- `RunAnywhereService.generateStream`: Streams tokens from on-device LLM with debug logging.

## `lib/src/core/ai/model_catalog.dart`
- `kDefaultModel`: Default model specification (Qwen-2.5).
- `findModelSpec`: Looks up a model spec by ID.

## `lib/src/core/ai/device_checker.dart`
- `DeviceChecker.checkDevice`: Returns RAM/disk availability for model compatibility.

## `lib/src/core/ai/ai_output_validator.dart`
- `AiOutputValidator.parseJson`: Parses and validates JSON from LLM output with fallback extraction.

## `lib/src/core/providers/ai/model_manager_provider.dart`
- `ModelManagerNotifier.build`: Initializes model manager state.
- `ModelManagerNotifier.download`: Downloads a model with progress tracking.
- `ModelManagerNotifier.load`: Loads a model into memory.
- `ModelManagerNotifier.delete`: Unloads and deletes a model.
- `ModelManagerNotifier.refresh`: Refreshes downloaded model list.

---

## `lib/src/features/chat/data/chat_api.dart`
- `ChatApi.sendMessage`: POST `/api/v1/chat/jobs/{jobId}/messages` — sends a message in a job conversation.
- `ChatApi.getMessages`: GET `/api/v1/chat/conversations/{id}/messages` — paginated message history.
- `ChatApi.getConversations`: GET `/api/v1/chat/conversations` — lists all conversations.
- `ChatApi.getConversationsGrouped`: GET `/api/v1/chat/conversations/grouped` — grouped by job.
- `ChatApi.markAsRead`: POST `/api/v1/chat/conversations/{id}/read` — mark messages as read.
- `ChatApi.markAsDelivered`: POST `/api/v1/chat/conversations/{id}/delivered` — mark messages as delivered.

## `lib/src/features/chat/view_model/chat_view_model.dart`
- `ConversationsController.build`: Initializes flat conversation list with WebSocket and polling.
- `ConversationsController.refresh`: Manually re-fetches conversations.
- `GroupedConversationsController.build`: Initializes grouped conversation list with WebSocket and polling.
- `GroupedConversationsController.refresh`: Manually re-fetches grouped conversations.
- `ChatMessagesController.build`: Initializes messages for a conversation with WebSocket subscriptions.
- `ChatMessagesController.sendMessage`: Sends message via HTTP with optimistic UI update.
- `ChatMessagesController.sendTyping`: Sends typing indicator via WebSocket.
- `ChatMessagesController.refresh`: Re-fetches messages from server.

## `lib/src/features/chat/view_model/ai_chat_suggester_provider.dart`
- `AiChatSuggesterProvider.suggest`: Generates 3 contextual reply suggestions using on-device AI.

---

## `lib/src/features/review/data/review_api.dart`
- `ReviewApi.submitReview`: POST `/api/v1/reviews/jobs/{jobId}` — client submits review.
- `ReviewApi.submitWorkerReview`: POST `/api/v1/reviews/jobs/{jobId}/worker` — worker submits review.
- `ReviewApi.getWorkerReviews`: GET `/api/v1/reviews/workers/{workerId}` — all reviews for a worker.
- `ReviewApi.getJobReview`: GET `/api/v1/reviews/jobs/{jobId}` — single job review.
- `ReviewApi.checkReviewEligibility`: GET `/api/v1/reviews/jobs/{jobId}/eligibility` — eligibility check.

## `lib/src/features/review/view_model/review_view_model.dart`
- `ReviewController.submitReview`: Submits a review and invalidates related providers.
- `ReviewController.checkEligibility`: Checks if current user can leave a review.
- `WorkerReviewsController.build`: Loads a worker's review list.

---

## `lib/src/features/admin/data/admin_api.dart`
- `AdminApi.fetchOverview`: GET `/api/v1/admin/overview` — returns `AdminOverview` platform stats.
- `AdminOverview.fromMap`: Factory parsing admin overview map to typed object.

## `lib/src/features/admin/view_model/admin_view_model.dart`
- `AdminDashboardController.build`: Fetches admin overview on init.
- `AdminDashboardController.refresh`: Re-fetches admin dashboard data.

---

## `lib/src/features/profile/data/user_profile_api.dart`
- `UserProfileApi.uploadProfileImage`: POST multipart `/api/v1/users/{userId}/profile-image` — returns public URL.
- `UserProfileApi.deleteProfileImage`: DELETE `/api/v1/users/{userId}/profile-image`.

## `lib/src/features/profile/view_model/profile_view_model.dart`
- `ProfileController.uploadImage`: Uploads profile image and updates state.
- `ProfileController.deleteImage`: Deletes profile image and updates state.
- `ProfileController.updateProfile`: Updates profile fields via API.

## `lib/src/features/profile/view_model/public_profile_view_model.dart`
- `PublicProfileController.build`: Fetches public profile for a user by ID and role.

---

## `lib/src/features/jobs/view_model/ai_job_parser_provider.dart`
- `AiJobParserProvider.parse`: Parses natural language job description into structured `ParsedJobData`.

## `lib/src/features/jobs/view_model/ai_bid_generator_provider.dart`
- `AiBidGeneratorProvider.suggest`: Generates bid amount suggestions based on job details.

## `lib/src/features/jobs/view_model/ai_job_ranking_provider.dart`
- `AiJobRankingProvider.rank`: Re-ranks worker feed by relevance using worker skills.

## `lib/src/features/jobs/view_model/skill_suggest_view_model.dart`
- `SkillSuggestController.search`: Searches skills by query string.
- `SkillSuggestController.clear`: Clears suggestion list.

## `lib/src/features/jobs/data/skill_api.dart`
- `SkillApi.fetchAllSkills`: GET `/api/v1/skills` — returns all available skills.
- `SkillApi.searchSkills`: GET `/api/v1/skills/search` — search by query.

