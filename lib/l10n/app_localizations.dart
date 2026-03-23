import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('it'),
    Locale('ja'),
    Locale('kn'),
    Locale('ko'),
    Locale('ml'),
    Locale('mr'),
    Locale('nl'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('ta'),
    Locale('te'),
    Locale('ur'),
    Locale('zh'),
    Locale('zh', 'TW'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'AroundU'**
  String get appName;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get loginTitle;

  /// No description provided for @registerTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get registerTitle;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @confirmPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPasswordLabel;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @loginButton.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get loginButton;

  /// No description provided for @registerButton.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get registerButton;

  /// No description provided for @orContinueWith.
  ///
  /// In en, this message translates to:
  /// **'Or continue with'**
  String get orContinueWith;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcomeBack;

  /// No description provided for @loginSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to continue as provider or worker.'**
  String get loginSubtitle;

  /// No description provided for @noAccountYet.
  ///
  /// In en, this message translates to:
  /// **'No account yet?'**
  String get noAccountYet;

  /// No description provided for @createOne.
  ///
  /// In en, this message translates to:
  /// **'Create one'**
  String get createOne;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailRequired;

  /// No description provided for @enterValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get enterValidEmail;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordRequired;

  /// No description provided for @minimumSixCharacters.
  ///
  /// In en, this message translates to:
  /// **'Minimum 6 characters'**
  String get minimumSixCharacters;

  /// No description provided for @unableToLogin.
  ///
  /// In en, this message translates to:
  /// **'Unable to login. Please retry.'**
  String get unableToLogin;

  /// No description provided for @fieldRequired.
  ///
  /// In en, this message translates to:
  /// **'{field} is required'**
  String fieldRequired(String field);

  /// No description provided for @enterValidPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid phone number'**
  String get enterValidPhone;

  /// No description provided for @unableToRegister.
  ///
  /// In en, this message translates to:
  /// **'Unable to register'**
  String get unableToRegister;

  /// No description provided for @registrationSuccess.
  ///
  /// In en, this message translates to:
  /// **'Registration successful. Please log in.'**
  String get registrationSuccess;

  /// No description provided for @registerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Register as provider or worker with your basic location profile.'**
  String get registerSubtitle;

  /// No description provided for @roleLabel.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get roleLabel;

  /// No description provided for @roleJobProvider.
  ///
  /// In en, this message translates to:
  /// **'Job Provider'**
  String get roleJobProvider;

  /// No description provided for @roleJobWorker.
  ///
  /// In en, this message translates to:
  /// **'Job Worker'**
  String get roleJobWorker;

  /// No description provided for @countryLabel.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get countryLabel;

  /// No description provided for @currencyLabel.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currencyLabel;

  /// No description provided for @cityLabel.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get cityLabel;

  /// No description provided for @postalCodeLabel.
  ///
  /// In en, this message translates to:
  /// **'Postal code'**
  String get postalCodeLabel;

  /// No description provided for @areaOptionalLabel.
  ///
  /// In en, this message translates to:
  /// **'Area (optional)'**
  String get areaOptionalLabel;

  /// No description provided for @fullAddressOptionalLabel.
  ///
  /// In en, this message translates to:
  /// **'Full address (optional)'**
  String get fullAddressOptionalLabel;

  /// No description provided for @alreadyRegistered.
  ///
  /// In en, this message translates to:
  /// **'Already registered?'**
  String get alreadyRegistered;

  /// No description provided for @logInLink.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get logInLink;

  /// No description provided for @onboardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Book Local Services Fast'**
  String get onboardingTitle1;

  /// No description provided for @onboardingSubtitle1.
  ///
  /// In en, this message translates to:
  /// **'Post your requirement in minutes and get matched with nearby verified workers.'**
  String get onboardingSubtitle1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Compare Bids Transparently'**
  String get onboardingTitle2;

  /// No description provided for @onboardingSubtitle2.
  ///
  /// In en, this message translates to:
  /// **'Review pricing, profiles, and timelines before assigning your job with confidence.'**
  String get onboardingSubtitle2;

  /// No description provided for @onboardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Track Every Job Clearly'**
  String get onboardingTitle3;

  /// No description provided for @onboardingSubtitle3.
  ///
  /// In en, this message translates to:
  /// **'Stay updated from job creation to completion with role-based dashboards.'**
  String get onboardingSubtitle3;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @newHereCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'New here? Create account'**
  String get newHereCreateAccount;

  /// No description provided for @roleSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Role'**
  String get roleSelectionTitle;

  /// No description provided for @roleClient.
  ///
  /// In en, this message translates to:
  /// **'Client'**
  String get roleClient;

  /// No description provided for @roleClientDesc.
  ///
  /// In en, this message translates to:
  /// **'I need help with tasks'**
  String get roleClientDesc;

  /// No description provided for @roleWorker.
  ///
  /// In en, this message translates to:
  /// **'Worker'**
  String get roleWorker;

  /// No description provided for @roleWorkerDesc.
  ///
  /// In en, this message translates to:
  /// **'I want to offer my skills'**
  String get roleWorkerDesc;

  /// No description provided for @continueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// No description provided for @roleSelectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Select the workflow you want to use in AroundU.'**
  String get roleSelectionSubtitle;

  /// No description provided for @signedInAs.
  ///
  /// In en, this message translates to:
  /// **'Signed in as {email}'**
  String signedInAs(String email);

  /// No description provided for @roleProviderDesc.
  ///
  /// In en, this message translates to:
  /// **'Post jobs and manage incoming bids.'**
  String get roleProviderDesc;

  /// No description provided for @roleWorkerDescAlt.
  ///
  /// In en, this message translates to:
  /// **'Browse nearby jobs and place bids quickly.'**
  String get roleWorkerDescAlt;

  /// No description provided for @homeTab.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTab;

  /// No description provided for @jobsTab.
  ///
  /// In en, this message translates to:
  /// **'Jobs'**
  String get jobsTab;

  /// No description provided for @chatTab.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chatTab;

  /// No description provided for @profileTab.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTab;

  /// No description provided for @providerTabMyTasks.
  ///
  /// In en, this message translates to:
  /// **'My Tasks'**
  String get providerTabMyTasks;

  /// No description provided for @providerTabPostTask.
  ///
  /// In en, this message translates to:
  /// **'Post Task'**
  String get providerTabPostTask;

  /// No description provided for @tasksNavLabel.
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get tasksNavLabel;

  /// No description provided for @postNavLabel.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get postNavLabel;

  /// No description provided for @workerTabTaskFeed.
  ///
  /// In en, this message translates to:
  /// **'Task Feed'**
  String get workerTabTaskFeed;

  /// No description provided for @feedNavLabel.
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get feedNavLabel;

  /// No description provided for @myJobs.
  ///
  /// In en, this message translates to:
  /// **'My Jobs'**
  String get myJobs;

  /// No description provided for @workerFeed.
  ///
  /// In en, this message translates to:
  /// **'Available Jobs'**
  String get workerFeed;

  /// No description provided for @createJob.
  ///
  /// In en, this message translates to:
  /// **'Create Job'**
  String get createJob;

  /// No description provided for @postJob.
  ///
  /// In en, this message translates to:
  /// **'Post a Job'**
  String get postJob;

  /// No description provided for @editJob.
  ///
  /// In en, this message translates to:
  /// **'Edit Job'**
  String get editJob;

  /// No description provided for @deleteJob.
  ///
  /// In en, this message translates to:
  /// **'Delete Job'**
  String get deleteJob;

  /// No description provided for @deleteJobConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this job?'**
  String get deleteJobConfirm;

  /// No description provided for @jobTitle.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get jobTitle;

  /// No description provided for @jobDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get jobDescription;

  /// No description provided for @jobCategory.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get jobCategory;

  /// No description provided for @jobBudget.
  ///
  /// In en, this message translates to:
  /// **'Budget'**
  String get jobBudget;

  /// No description provided for @jobLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get jobLocation;

  /// No description provided for @jobDueDate.
  ///
  /// In en, this message translates to:
  /// **'Due Date'**
  String get jobDueDate;

  /// No description provided for @jobSkills.
  ///
  /// In en, this message translates to:
  /// **'Skills Required'**
  String get jobSkills;

  /// No description provided for @jobUrgency.
  ///
  /// In en, this message translates to:
  /// **'Urgency'**
  String get jobUrgency;

  /// No description provided for @jobPaymentMode.
  ///
  /// In en, this message translates to:
  /// **'Payment Mode'**
  String get jobPaymentMode;

  /// No description provided for @urgencyNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get urgencyNormal;

  /// No description provided for @urgencyMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get urgencyMedium;

  /// No description provided for @urgencyUrgent.
  ///
  /// In en, this message translates to:
  /// **'Urgent'**
  String get urgencyUrgent;

  /// No description provided for @urgencyAsap.
  ///
  /// In en, this message translates to:
  /// **'ASAP'**
  String get urgencyAsap;

  /// No description provided for @paymentOffline.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get paymentOffline;

  /// No description provided for @paymentEscrow.
  ///
  /// In en, this message translates to:
  /// **'Escrow'**
  String get paymentEscrow;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @payInCash.
  ///
  /// In en, this message translates to:
  /// **'Pay in Cash'**
  String get payInCash;

  /// No description provided for @secureEscrow.
  ///
  /// In en, this message translates to:
  /// **'Secure Escrow'**
  String get secureEscrow;

  /// No description provided for @filterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// No description provided for @filterOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get filterOpen;

  /// No description provided for @filterActive.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get filterActive;

  /// No description provided for @filterInProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get filterInProgress;

  /// No description provided for @filterCompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get filterCompleted;

  /// No description provided for @filterCancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get filterCancelled;

  /// No description provided for @filterExpired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get filterExpired;

  /// No description provided for @filterNearby.
  ///
  /// In en, this message translates to:
  /// **'Nearby'**
  String get filterNearby;

  /// No description provided for @filterAllMine.
  ///
  /// In en, this message translates to:
  /// **'All Mine'**
  String get filterAllMine;

  /// No description provided for @filterBidPlaced.
  ///
  /// In en, this message translates to:
  /// **'Bid Placed'**
  String get filterBidPlaced;

  /// No description provided for @filterAccepted.
  ///
  /// In en, this message translates to:
  /// **'Accepted'**
  String get filterAccepted;

  /// No description provided for @noTasksPostedYet.
  ///
  /// In en, this message translates to:
  /// **'No tasks posted yet'**
  String get noTasksPostedYet;

  /// No description provided for @noOpenTasks.
  ///
  /// In en, this message translates to:
  /// **'No open tasks'**
  String get noOpenTasks;

  /// No description provided for @noActiveTasks.
  ///
  /// In en, this message translates to:
  /// **'No active tasks'**
  String get noActiveTasks;

  /// No description provided for @noTasksInProgress.
  ///
  /// In en, this message translates to:
  /// **'No tasks in progress'**
  String get noTasksInProgress;

  /// No description provided for @noCompletedTasks.
  ///
  /// In en, this message translates to:
  /// **'No completed tasks'**
  String get noCompletedTasks;

  /// No description provided for @noCancelledTasks.
  ///
  /// In en, this message translates to:
  /// **'No cancelled tasks'**
  String get noCancelledTasks;

  /// No description provided for @noExpiredTasks.
  ///
  /// In en, this message translates to:
  /// **'No expired tasks'**
  String get noExpiredTasks;

  /// No description provided for @unableToLoadTasks.
  ///
  /// In en, this message translates to:
  /// **'Unable to load tasks'**
  String get unableToLoadTasks;

  /// No description provided for @noNearbyJobs.
  ///
  /// In en, this message translates to:
  /// **'No nearby jobs right now'**
  String get noNearbyJobs;

  /// No description provided for @noJobsYetBid.
  ///
  /// In en, this message translates to:
  /// **'No jobs yet — place a bid to get started!'**
  String get noJobsYetBid;

  /// No description provided for @noPendingBids.
  ///
  /// In en, this message translates to:
  /// **'No pending bids'**
  String get noPendingBids;

  /// No description provided for @noAcceptedJobs.
  ///
  /// In en, this message translates to:
  /// **'No accepted jobs'**
  String get noAcceptedJobs;

  /// No description provided for @noJobsInProgress.
  ///
  /// In en, this message translates to:
  /// **'No jobs in progress'**
  String get noJobsInProgress;

  /// No description provided for @noCompletedJobsYet.
  ///
  /// In en, this message translates to:
  /// **'No completed jobs yet'**
  String get noCompletedJobsYet;

  /// No description provided for @noCancelledJobs.
  ///
  /// In en, this message translates to:
  /// **'No cancelled jobs'**
  String get noCancelledJobs;

  /// No description provided for @noExpiredJobs.
  ///
  /// In en, this message translates to:
  /// **'No expired jobs'**
  String get noExpiredJobs;

  /// No description provided for @pullDownToRefreshCheck.
  ///
  /// In en, this message translates to:
  /// **'Pull down to refresh and check again.'**
  String get pullDownToRefreshCheck;

  /// No description provided for @unableToLoadJobs.
  ///
  /// In en, this message translates to:
  /// **'Unable to load jobs'**
  String get unableToLoadJobs;

  /// No description provided for @postNewTask.
  ///
  /// In en, this message translates to:
  /// **'Post a New Task'**
  String get postNewTask;

  /// No description provided for @postTaskSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Add clear details so workers can send accurate offers.'**
  String get postTaskSubtitle;

  /// No description provided for @taskTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Task title'**
  String get taskTitleLabel;

  /// No description provided for @savingLocation.
  ///
  /// In en, this message translates to:
  /// **'Saving location…'**
  String get savingLocation;

  /// No description provided for @tapToSelectLocation.
  ///
  /// In en, this message translates to:
  /// **'Tap to select location'**
  String get tapToSelectLocation;

  /// No description provided for @postTaskButton.
  ///
  /// In en, this message translates to:
  /// **'Post Task'**
  String get postTaskButton;

  /// No description provided for @addSkillWarning.
  ///
  /// In en, this message translates to:
  /// **'Add at least one required skill for this task'**
  String get addSkillWarning;

  /// No description provided for @enterValidBudget.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid budget amount'**
  String get enterValidBudget;

  /// No description provided for @setJobLocationWarning.
  ///
  /// In en, this message translates to:
  /// **'Please set a job location before posting'**
  String get setJobLocationWarning;

  /// No description provided for @jobPostedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Job posted successfully'**
  String get jobPostedSuccess;

  /// No description provided for @failedToPostJob.
  ///
  /// In en, this message translates to:
  /// **'Failed to post job. Please retry.'**
  String get failedToPostJob;

  /// No description provided for @failedToSaveLocation.
  ///
  /// In en, this message translates to:
  /// **'Failed to save location'**
  String get failedToSaveLocation;

  /// No description provided for @unableToLoadJobWorkflow.
  ///
  /// In en, this message translates to:
  /// **'Unable to load job workflow'**
  String get unableToLoadJobWorkflow;

  /// No description provided for @unknownError.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get unknownError;

  /// No description provided for @statusOpenForBids.
  ///
  /// In en, this message translates to:
  /// **'Open for Bids'**
  String get statusOpenForBids;

  /// No description provided for @statusInProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get statusInProgress;

  /// No description provided for @statusCompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get statusCompleted;

  /// No description provided for @statusCancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get statusCancelled;

  /// No description provided for @statusPendingStart.
  ///
  /// In en, this message translates to:
  /// **'Pending Start'**
  String get statusPendingStart;

  /// No description provided for @statusPendingRelease.
  ///
  /// In en, this message translates to:
  /// **'Pending Release'**
  String get statusPendingRelease;

  /// No description provided for @bids.
  ///
  /// In en, this message translates to:
  /// **'Bids'**
  String get bids;

  /// No description provided for @noBids.
  ///
  /// In en, this message translates to:
  /// **'No bids yet'**
  String get noBids;

  /// No description provided for @placeBid.
  ///
  /// In en, this message translates to:
  /// **'Place Bid'**
  String get placeBid;

  /// No description provided for @bidAmount.
  ///
  /// In en, this message translates to:
  /// **'Bid Amount'**
  String get bidAmount;

  /// No description provided for @bidNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes (optional)'**
  String get bidNotes;

  /// No description provided for @yourBid.
  ///
  /// In en, this message translates to:
  /// **'Your Bid'**
  String get yourBid;

  /// No description provided for @acceptBid.
  ///
  /// In en, this message translates to:
  /// **'Accept Bid'**
  String get acceptBid;

  /// No description provided for @rejectBid.
  ///
  /// In en, this message translates to:
  /// **'Reject Bid'**
  String get rejectBid;

  /// No description provided for @bidAccepted.
  ///
  /// In en, this message translates to:
  /// **'Bid Accepted'**
  String get bidAccepted;

  /// No description provided for @bidRejected.
  ///
  /// In en, this message translates to:
  /// **'Bid Rejected'**
  String get bidRejected;

  /// No description provided for @bidPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get bidPending;

  /// No description provided for @offersSection.
  ///
  /// In en, this message translates to:
  /// **'Offers'**
  String get offersSection;

  /// No description provided for @noOffersReceivedYet.
  ///
  /// In en, this message translates to:
  /// **'No offers received yet.'**
  String get noOffersReceivedYet;

  /// No description provided for @offerAccepted.
  ///
  /// In en, this message translates to:
  /// **'Offer Accepted'**
  String get offerAccepted;

  /// No description provided for @offerRejected.
  ///
  /// In en, this message translates to:
  /// **'Offer Rejected'**
  String get offerRejected;

  /// No description provided for @offerPending.
  ///
  /// In en, this message translates to:
  /// **'Offer Pending'**
  String get offerPending;

  /// No description provided for @workerNumber.
  ///
  /// In en, this message translates to:
  /// **'Worker #{id}'**
  String workerNumber(int id);

  /// No description provided for @acceptThisOffer.
  ///
  /// In en, this message translates to:
  /// **'Accept this Offer'**
  String get acceptThisOffer;

  /// No description provided for @messageWorker.
  ///
  /// In en, this message translates to:
  /// **'Message Worker'**
  String get messageWorker;

  /// No description provided for @offerAcceptedSnack.
  ///
  /// In en, this message translates to:
  /// **'Offer accepted'**
  String get offerAcceptedSnack;

  /// No description provided for @yourOffer.
  ///
  /// In en, this message translates to:
  /// **'Your Offer'**
  String get yourOffer;

  /// No description provided for @bidStatusSelected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get bidStatusSelected;

  /// No description provided for @bidStatusRejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get bidStatusRejected;

  /// No description provided for @bidStatusPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get bidStatusPending;

  /// No description provided for @placeYourOffer.
  ///
  /// In en, this message translates to:
  /// **'Place Your Offer'**
  String get placeYourOffer;

  /// No description provided for @yourOfferAmount.
  ///
  /// In en, this message translates to:
  /// **'Your offer amount'**
  String get yourOfferAmount;

  /// No description provided for @messageToClientOptional.
  ///
  /// In en, this message translates to:
  /// **'Message to client (optional)'**
  String get messageToClientOptional;

  /// No description provided for @addPartnerOptional.
  ///
  /// In en, this message translates to:
  /// **'Add a partner (optional)'**
  String get addPartnerOptional;

  /// No description provided for @partnerNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Partner name'**
  String get partnerNameLabel;

  /// No description provided for @partnerFeeLabel.
  ///
  /// In en, this message translates to:
  /// **'Partner fee'**
  String get partnerFeeLabel;

  /// No description provided for @partnerFeeAmount.
  ///
  /// In en, this message translates to:
  /// **'+ {symbol}{amount} partner fee'**
  String partnerFeeAmount(String symbol, String amount);

  /// No description provided for @submitOffer.
  ///
  /// In en, this message translates to:
  /// **'Submit Offer'**
  String get submitOffer;

  /// No description provided for @enterValidOfferAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid offer amount'**
  String get enterValidOfferAmount;

  /// No description provided for @offerSubmittedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Offer submitted successfully'**
  String get offerSubmittedSuccess;

  /// No description provided for @clientSelectedYourOffer.
  ///
  /// In en, this message translates to:
  /// **'Client Selected Your Offer!'**
  String get clientSelectedYourOffer;

  /// No description provided for @handshakeHint.
  ///
  /// In en, this message translates to:
  /// **'Accept to confirm this job, or decline if you\'re no longer available.'**
  String get handshakeHint;

  /// No description provided for @handshakeAccepted.
  ///
  /// In en, this message translates to:
  /// **'Handshake accepted'**
  String get handshakeAccepted;

  /// No description provided for @handshakeDeclined.
  ///
  /// In en, this message translates to:
  /// **'Handshake declined'**
  String get handshakeDeclined;

  /// No description provided for @acceptJob.
  ///
  /// In en, this message translates to:
  /// **'Accept Job'**
  String get acceptJob;

  /// No description provided for @decline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get decline;

  /// No description provided for @startCode.
  ///
  /// In en, this message translates to:
  /// **'Start Code'**
  String get startCode;

  /// No description provided for @releaseCode.
  ///
  /// In en, this message translates to:
  /// **'Release Code'**
  String get releaseCode;

  /// No description provided for @generateCodes.
  ///
  /// In en, this message translates to:
  /// **'Generate Codes'**
  String get generateCodes;

  /// No description provided for @verifyCode.
  ///
  /// In en, this message translates to:
  /// **'Verify Code'**
  String get verifyCode;

  /// No description provided for @enterCode.
  ///
  /// In en, this message translates to:
  /// **'Enter Code'**
  String get enterCode;

  /// No description provided for @generateStartCode.
  ///
  /// In en, this message translates to:
  /// **'Generate Start Code'**
  String get generateStartCode;

  /// No description provided for @startCodeCopied.
  ///
  /// In en, this message translates to:
  /// **'Start code copied'**
  String get startCodeCopied;

  /// No description provided for @reserveInEscrow.
  ///
  /// In en, this message translates to:
  /// **'Reserve {symbol}{amount} in Escrow'**
  String reserveInEscrow(String symbol, String amount);

  /// No description provided for @releaseCodeCopied.
  ///
  /// In en, this message translates to:
  /// **'Release code copied'**
  String get releaseCodeCopied;

  /// No description provided for @releaseCodeHint.
  ///
  /// In en, this message translates to:
  /// **'Share this verbally with the worker. They enter it to confirm task completion.'**
  String get releaseCodeHint;

  /// No description provided for @regenerateCode.
  ///
  /// In en, this message translates to:
  /// **'Regenerate Code'**
  String get regenerateCode;

  /// No description provided for @generateReleaseCode.
  ///
  /// In en, this message translates to:
  /// **'Generate Release Code'**
  String get generateReleaseCode;

  /// No description provided for @taskCodesGenerated.
  ///
  /// In en, this message translates to:
  /// **'Task codes generated'**
  String get taskCodesGenerated;

  /// No description provided for @newReleaseCodeGenerated.
  ///
  /// In en, this message translates to:
  /// **'New release code generated'**
  String get newReleaseCodeGenerated;

  /// No description provided for @readyToBegin.
  ///
  /// In en, this message translates to:
  /// **'Ready to Begin?'**
  String get readyToBegin;

  /// No description provided for @startCodeHint.
  ///
  /// In en, this message translates to:
  /// **'Ask the client for the start code and enter it below to officially begin work.'**
  String get startCodeHint;

  /// No description provided for @verifyAndStartWork.
  ///
  /// In en, this message translates to:
  /// **'Verify & Start Work'**
  String get verifyAndStartWork;

  /// No description provided for @startCodeVerified.
  ///
  /// In en, this message translates to:
  /// **'Start code verified. Task is now in progress.'**
  String get startCodeVerified;

  /// No description provided for @enterStartCodeFirst.
  ///
  /// In en, this message translates to:
  /// **'Enter start code first'**
  String get enterStartCodeFirst;

  /// No description provided for @workInProgress.
  ///
  /// In en, this message translates to:
  /// **'Work In Progress'**
  String get workInProgress;

  /// No description provided for @releaseCodePrompt.
  ///
  /// In en, this message translates to:
  /// **'Once done, ask the client for the 6-digit release code.'**
  String get releaseCodePrompt;

  /// No description provided for @releaseCodeHelper.
  ///
  /// In en, this message translates to:
  /// **'Enter the 6-digit code from the client'**
  String get releaseCodeHelper;

  /// No description provided for @confirmWorkCompleted.
  ///
  /// In en, this message translates to:
  /// **'Confirm Work Completed'**
  String get confirmWorkCompleted;

  /// No description provided for @workConfirmedPaymentReleased.
  ///
  /// In en, this message translates to:
  /// **'Work confirmed — payment released!'**
  String get workConfirmedPaymentReleased;

  /// No description provided for @enterReleaseCodeWarning.
  ///
  /// In en, this message translates to:
  /// **'Enter the release code from the client'**
  String get enterReleaseCodeWarning;

  /// No description provided for @escrow.
  ///
  /// In en, this message translates to:
  /// **'Escrow'**
  String get escrow;

  /// No description provided for @lockEscrow.
  ///
  /// In en, this message translates to:
  /// **'Lock Escrow'**
  String get lockEscrow;

  /// No description provided for @releaseEscrow.
  ///
  /// In en, this message translates to:
  /// **'Release Payment'**
  String get releaseEscrow;

  /// No description provided for @paymentLocked.
  ///
  /// In en, this message translates to:
  /// **'Payment Locked'**
  String get paymentLocked;

  /// No description provided for @paymentReleased.
  ///
  /// In en, this message translates to:
  /// **'Payment Released'**
  String get paymentReleased;

  /// No description provided for @paymentSafelyReserved.
  ///
  /// In en, this message translates to:
  /// **'Payment safely reserved'**
  String get paymentSafelyReserved;

  /// No description provided for @cancelTask.
  ///
  /// In en, this message translates to:
  /// **'Cancel Task'**
  String get cancelTask;

  /// No description provided for @taskCancelled.
  ///
  /// In en, this message translates to:
  /// **'Task cancelled'**
  String get taskCancelled;

  /// No description provided for @deleteTask.
  ///
  /// In en, this message translates to:
  /// **'Delete Task'**
  String get deleteTask;

  /// No description provided for @deleteTaskTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete task?'**
  String get deleteTaskTitle;

  /// No description provided for @deleteTaskConfirm.
  ///
  /// In en, this message translates to:
  /// **'This will remove the task and all associated offers.'**
  String get deleteTaskConfirm;

  /// No description provided for @taskDeleted.
  ///
  /// In en, this message translates to:
  /// **'Task deleted'**
  String get taskDeleted;

  /// No description provided for @typeFirstMessage.
  ///
  /// In en, this message translates to:
  /// **'Type your first message…'**
  String get typeFirstMessage;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @failedToSendMessage.
  ///
  /// In en, this message translates to:
  /// **'Failed to send message'**
  String get failedToSendMessage;

  /// No description provided for @conversations.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get conversations;

  /// No description provided for @noMessagesYet.
  ///
  /// In en, this message translates to:
  /// **'No messages yet'**
  String get noMessagesYet;

  /// No description provided for @noMessagesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your conversations will appear here when you start chatting about a task.'**
  String get noMessagesSubtitle;

  /// No description provided for @startConversation.
  ///
  /// In en, this message translates to:
  /// **'Start the conversation!'**
  String get startConversation;

  /// No description provided for @typeMessage.
  ///
  /// In en, this message translates to:
  /// **'Type a message...'**
  String get typeMessage;

  /// No description provided for @typing.
  ///
  /// In en, this message translates to:
  /// **'typing...'**
  String get typing;

  /// No description provided for @newMessages.
  ///
  /// In en, this message translates to:
  /// **'New Messages'**
  String get newMessages;

  /// No description provided for @now.
  ///
  /// In en, this message translates to:
  /// **'now'**
  String get now;

  /// No description provided for @minutesAgo.
  ///
  /// In en, this message translates to:
  /// **'{count}m ago'**
  String minutesAgo(int count);

  /// No description provided for @workersCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 worker} other{{count} workers}}'**
  String workersCount(int count);

  /// No description provided for @chatToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get chatToday;

  /// No description provided for @chatYesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get chatYesterday;

  /// No description provided for @chatYouPrefix.
  ///
  /// In en, this message translates to:
  /// **'You: {message}'**
  String chatYouPrefix(String message);

  /// No description provided for @chatReFallback.
  ///
  /// In en, this message translates to:
  /// **'Re: {jobTitle}'**
  String chatReFallback(String jobTitle);

  /// No description provided for @noConversationsYet.
  ///
  /// In en, this message translates to:
  /// **'No conversations yet'**
  String get noConversationsYet;

  /// No description provided for @loadingConversations.
  ///
  /// In en, this message translates to:
  /// **'Loading conversations...'**
  String get loadingConversations;

  /// No description provided for @loadingMessages.
  ///
  /// In en, this message translates to:
  /// **'Loading messages...'**
  String get loadingMessages;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone;

  /// No description provided for @bio.
  ///
  /// In en, this message translates to:
  /// **'Bio'**
  String get bio;

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logout;

  /// No description provided for @logoutConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get logoutConfirm;

  /// No description provided for @myProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get myProfile;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @experienceLabel.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experienceLabel;

  /// No description provided for @statusLabel.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get statusLabel;

  /// No description provided for @notSet.
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get notSet;

  /// No description provided for @onDuty.
  ///
  /// In en, this message translates to:
  /// **'On Duty'**
  String get onDuty;

  /// No description provided for @offDuty.
  ///
  /// In en, this message translates to:
  /// **'Off Duty'**
  String get offDuty;

  /// No description provided for @yearsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} years'**
  String yearsCount(int count);

  /// No description provided for @themeAndColors.
  ///
  /// In en, this message translates to:
  /// **'Theme & Colors'**
  String get themeAndColors;

  /// No description provided for @aiModelLabel.
  ///
  /// In en, this message translates to:
  /// **'AI Model'**
  String get aiModelLabel;

  /// No description provided for @availableForWork.
  ///
  /// In en, this message translates to:
  /// **'Available for Work'**
  String get availableForWork;

  /// No description provided for @visibleToClients.
  ///
  /// In en, this message translates to:
  /// **'You are visible to clients'**
  String get visibleToClients;

  /// No description provided for @currentlyOffDuty.
  ///
  /// In en, this message translates to:
  /// **'You are currently off duty'**
  String get currentlyOffDuty;

  /// No description provided for @myReviews.
  ///
  /// In en, this message translates to:
  /// **'My Reviews'**
  String get myReviews;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @deleteAccountConfirm.
  ///
  /// In en, this message translates to:
  /// **'This will permanently delete your account and all data. This cannot be undone.'**
  String get deleteAccountConfirm;

  /// No description provided for @couldNotDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Could not delete account'**
  String get couldNotDeleteAccount;

  /// No description provided for @profilePhotoUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile photo updated'**
  String get profilePhotoUpdated;

  /// No description provided for @profileUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated'**
  String get profileUpdated;

  /// No description provided for @nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameLabel;

  /// No description provided for @profileImageUrl.
  ///
  /// In en, this message translates to:
  /// **'Profile Image URL'**
  String get profileImageUrl;

  /// No description provided for @yearsOfExperience.
  ///
  /// In en, this message translates to:
  /// **'Years of Experience'**
  String get yearsOfExperience;

  /// No description provided for @certificationsLabel.
  ///
  /// In en, this message translates to:
  /// **'Certifications'**
  String get certificationsLabel;

  /// No description provided for @payoutAccountLabel.
  ///
  /// In en, this message translates to:
  /// **'Payout Account'**
  String get payoutAccountLabel;

  /// No description provided for @onDutySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Toggle availability for new tasks'**
  String get onDutySubtitle;

  /// No description provided for @loadingProfile.
  ///
  /// In en, this message translates to:
  /// **'Loading profile...'**
  String get loadingProfile;

  /// No description provided for @availabilityLabel.
  ///
  /// In en, this message translates to:
  /// **'Availability'**
  String get availabilityLabel;

  /// No description provided for @memberLabel.
  ///
  /// In en, this message translates to:
  /// **'Member'**
  String get memberLabel;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// No description provided for @unavailable.
  ///
  /// In en, this message translates to:
  /// **'Unavailable'**
  String get unavailable;

  /// No description provided for @viewAllReviews.
  ///
  /// In en, this message translates to:
  /// **'View All Reviews'**
  String get viewAllReviews;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// No description provided for @systemMode.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get systemMode;

  /// No description provided for @accentColour.
  ///
  /// In en, this message translates to:
  /// **'Accent Colour'**
  String get accentColour;

  /// No description provided for @customColour.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get customColour;

  /// No description provided for @preview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// No description provided for @previewTitle.
  ///
  /// In en, this message translates to:
  /// **'Your colours look great!'**
  String get previewTitle;

  /// No description provided for @previewSubtitle.
  ///
  /// In en, this message translates to:
  /// **'This is how your app will look.'**
  String get previewSubtitle;

  /// No description provided for @primary.
  ///
  /// In en, this message translates to:
  /// **'Primary'**
  String get primary;

  /// No description provided for @secondary.
  ///
  /// In en, this message translates to:
  /// **'Secondary'**
  String get secondary;

  /// No description provided for @modeLabel.
  ///
  /// In en, this message translates to:
  /// **'Mode'**
  String get modeLabel;

  /// No description provided for @pickAColour.
  ///
  /// In en, this message translates to:
  /// **'Pick a colour'**
  String get pickAColour;

  /// No description provided for @systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get systemDefault;

  /// No description provided for @darkModeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Switch between light and dark themes'**
  String get darkModeSubtitle;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @leaveReview.
  ///
  /// In en, this message translates to:
  /// **'Leave a Review'**
  String get leaveReview;

  /// No description provided for @noReviews.
  ///
  /// In en, this message translates to:
  /// **'No reviews yet'**
  String get noReviews;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @reviewComment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get reviewComment;

  /// No description provided for @submitReview.
  ///
  /// In en, this message translates to:
  /// **'Submit Review'**
  String get submitReview;

  /// No description provided for @howWasWorker.
  ///
  /// In en, this message translates to:
  /// **'How was {name}?'**
  String howWasWorker(String name);

  /// No description provided for @feedbackHelps.
  ///
  /// In en, this message translates to:
  /// **'Your feedback helps the community'**
  String get feedbackHelps;

  /// No description provided for @thanksForReview.
  ///
  /// In en, this message translates to:
  /// **'Thanks for your review!'**
  String get thanksForReview;

  /// No description provided for @shareExperienceHint.
  ///
  /// In en, this message translates to:
  /// **'Share your experience (optional)'**
  String get shareExperienceHint;

  /// No description provided for @ratingExcellent.
  ///
  /// In en, this message translates to:
  /// **'Excellent!'**
  String get ratingExcellent;

  /// No description provided for @ratingGreat.
  ///
  /// In en, this message translates to:
  /// **'Great!'**
  String get ratingGreat;

  /// No description provided for @ratingGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get ratingGood;

  /// No description provided for @ratingFair.
  ///
  /// In en, this message translates to:
  /// **'Fair'**
  String get ratingFair;

  /// No description provided for @ratingPoor.
  ///
  /// In en, this message translates to:
  /// **'Poor'**
  String get ratingPoor;

  /// No description provided for @tapToRate.
  ///
  /// In en, this message translates to:
  /// **'Tap to rate'**
  String get tapToRate;

  /// No description provided for @workerReviewsTitle.
  ///
  /// In en, this message translates to:
  /// **'{name}\'s Reviews'**
  String workerReviewsTitle(String name);

  /// No description provided for @loadingReviews.
  ///
  /// In en, this message translates to:
  /// **'Loading reviews...'**
  String get loadingReviews;

  /// No description provided for @noReviewsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Reviews will appear here after completed tasks.'**
  String get noReviewsSubtitle;

  /// No description provided for @allReviews.
  ///
  /// In en, this message translates to:
  /// **'All Reviews'**
  String get allReviews;

  /// No description provided for @reviewCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 review} other{{count} reviews}}'**
  String reviewCount(int count);

  /// No description provided for @anonymous.
  ///
  /// In en, this message translates to:
  /// **'Anonymous'**
  String get anonymous;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get error;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResults;

  /// No description provided for @pullToRefresh.
  ///
  /// In en, this message translates to:
  /// **'Pull to refresh'**
  String get pullToRefresh;

  /// No description provided for @pullDownToRefresh.
  ///
  /// In en, this message translates to:
  /// **'Pull down to refresh.'**
  String get pullDownToRefresh;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// No description provided for @stop.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get stop;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @aiSetup.
  ///
  /// In en, this message translates to:
  /// **'AI Setup'**
  String get aiSetup;

  /// No description provided for @aiAnalysis.
  ///
  /// In en, this message translates to:
  /// **'AI Analysis'**
  String get aiAnalysis;

  /// No description provided for @unlockAi.
  ///
  /// In en, this message translates to:
  /// **'Unlock AI Analysis'**
  String get unlockAi;

  /// No description provided for @aiTagline.
  ///
  /// In en, this message translates to:
  /// **'On-Device  ·  Private  ·  Free'**
  String get aiTagline;

  /// No description provided for @deviceCheck.
  ///
  /// In en, this message translates to:
  /// **'Device Check'**
  String get deviceCheck;

  /// No description provided for @chooseModel.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Model'**
  String get chooseModel;

  /// No description provided for @chooseModelSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Download one or more models. You can switch between them later.'**
  String get chooseModelSubtitle;

  /// No description provided for @initializingAi.
  ///
  /// In en, this message translates to:
  /// **'Initializing AI runtime…'**
  String get initializingAi;

  /// No description provided for @modelStorage.
  ///
  /// In en, this message translates to:
  /// **'Model Storage'**
  String get modelStorage;

  /// No description provided for @deviceIncompatible.
  ///
  /// In en, this message translates to:
  /// **'On-device AI requires a physical device with GPU support. Simulators and emulators are not compatible.'**
  String get deviceIncompatible;

  /// No description provided for @enhanceDescription.
  ///
  /// In en, this message translates to:
  /// **'Enhance'**
  String get enhanceDescription;

  /// No description provided for @bidInsights.
  ///
  /// In en, this message translates to:
  /// **'Bid Insights'**
  String get bidInsights;

  /// No description provided for @whyThisJob.
  ///
  /// In en, this message translates to:
  /// **'Why this?'**
  String get whyThisJob;

  /// No description provided for @suggestPrice.
  ///
  /// In en, this message translates to:
  /// **'Suggest Price'**
  String get suggestPrice;

  /// No description provided for @analyzing.
  ///
  /// In en, this message translates to:
  /// **'Analyzing…'**
  String get analyzing;

  /// No description provided for @aiCapabilities.
  ///
  /// In en, this message translates to:
  /// **'AI Capabilities'**
  String get aiCapabilities;

  /// No description provided for @onDeviceAi.
  ///
  /// In en, this message translates to:
  /// **'On-Device AI'**
  String get onDeviceAi;

  /// No description provided for @aiTaglineSetup.
  ///
  /// In en, this message translates to:
  /// **'Private · Offline · Free'**
  String get aiTaglineSetup;

  /// No description provided for @aiSetupDescription.
  ///
  /// In en, this message translates to:
  /// **'Get smart suggestions for tasks and bids powered by an AI model that runs entirely on your device. No data leaves your phone.'**
  String get aiSetupDescription;

  /// No description provided for @physicalDevice.
  ///
  /// In en, this message translates to:
  /// **'Physical device'**
  String get physicalDevice;

  /// No description provided for @emulatorDetected.
  ///
  /// In en, this message translates to:
  /// **'Emulator detected'**
  String get emulatorDetected;

  /// No description provided for @ram.
  ///
  /// In en, this message translates to:
  /// **'RAM'**
  String get ram;

  /// No description provided for @sufficient.
  ///
  /// In en, this message translates to:
  /// **'Sufficient'**
  String get sufficient;

  /// No description provided for @freeStorage.
  ///
  /// In en, this message translates to:
  /// **'Free storage'**
  String get freeStorage;

  /// No description provided for @mbFree.
  ///
  /// In en, this message translates to:
  /// **'{mb} MB free'**
  String mbFree(int mb);

  /// No description provided for @aiRequiresPhysicalDevice.
  ///
  /// In en, this message translates to:
  /// **'AI features require a physical device.'**
  String get aiRequiresPhysicalDevice;

  /// No description provided for @multilingual.
  ///
  /// In en, this message translates to:
  /// **'Multilingual'**
  String get multilingual;

  /// No description provided for @downloadingProgress.
  ///
  /// In en, this message translates to:
  /// **'Downloading… {percent}%'**
  String downloadingProgress(String percent);

  /// No description provided for @loadingModel.
  ///
  /// In en, this message translates to:
  /// **'Loading model…'**
  String get loadingModel;

  /// No description provided for @retryDownload.
  ///
  /// In en, this message translates to:
  /// **'Retry Download'**
  String get retryDownload;

  /// No description provided for @activeAndReady.
  ///
  /// In en, this message translates to:
  /// **'Active & Ready'**
  String get activeAndReady;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @enableAi.
  ///
  /// In en, this message translates to:
  /// **'Enable AI'**
  String get enableAi;

  /// No description provided for @downloadAiModel.
  ///
  /// In en, this message translates to:
  /// **'Download AI Model'**
  String get downloadAiModel;

  /// No description provided for @deviceNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Device not supported'**
  String get deviceNotSupported;

  /// No description provided for @downloadBackgroundNote.
  ///
  /// In en, this message translates to:
  /// **'Download happens in the background — you can leave this screen. The model file will be stored on your device and can be removed at any time.'**
  String get downloadBackgroundNote;

  /// No description provided for @removeAiModelTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove AI Model?'**
  String get removeAiModelTitle;

  /// No description provided for @removeAiModelConfirm.
  ///
  /// In en, this message translates to:
  /// **'This will delete the AI model from your device. You can re-download it later.'**
  String get removeAiModelConfirm;

  /// No description provided for @analyzeWithAi.
  ///
  /// In en, this message translates to:
  /// **'Analyze with AI'**
  String get analyzeWithAi;

  /// No description provided for @aiAssistantAvailable.
  ///
  /// In en, this message translates to:
  /// **'AI Assistant available'**
  String get aiAssistantAvailable;

  /// No description provided for @aiSetupPrompt.
  ///
  /// In en, this message translates to:
  /// **'Set up an on-device AI model to get smart suggestions.'**
  String get aiSetupPrompt;

  /// No description provided for @setup.
  ///
  /// In en, this message translates to:
  /// **'Setup'**
  String get setup;

  /// No description provided for @adminDashboard.
  ///
  /// In en, this message translates to:
  /// **'Admin Dashboard'**
  String get adminDashboard;

  /// No description provided for @failedToLoadDashboard.
  ///
  /// In en, this message translates to:
  /// **'Failed to load dashboard'**
  String get failedToLoadDashboard;

  /// No description provided for @platformOverview.
  ///
  /// In en, this message translates to:
  /// **'Platform Overview'**
  String get platformOverview;

  /// No description provided for @liveStatistics.
  ///
  /// In en, this message translates to:
  /// **'Live statistics from the backend.'**
  String get liveStatistics;

  /// No description provided for @usersSection.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get usersSection;

  /// No description provided for @adminTabClients.
  ///
  /// In en, this message translates to:
  /// **'Clients'**
  String get adminTabClients;

  /// No description provided for @adminTabWorkers.
  ///
  /// In en, this message translates to:
  /// **'Workers'**
  String get adminTabWorkers;

  /// No description provided for @adminTabAccount.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get adminTabAccount;

  /// No description provided for @jobsSection.
  ///
  /// In en, this message translates to:
  /// **'Jobs'**
  String get jobsSection;

  /// No description provided for @activeLabel.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get activeLabel;

  /// No description provided for @todaySection.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get todaySection;

  /// No description provided for @createdLabel.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get createdLabel;

  /// No description provided for @completedLabel.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completedLabel;

  /// No description provided for @deleteUserTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete {role}'**
  String deleteUserTitle(String role);

  /// No description provided for @deleteUserConfirm.
  ///
  /// In en, this message translates to:
  /// **'This action removes {name} ({email}) permanently. Continue?'**
  String deleteUserConfirm(String name, String email);

  /// No description provided for @userDeletedSuccess.
  ///
  /// In en, this message translates to:
  /// **'User deleted successfully'**
  String get userDeletedSuccess;

  /// No description provided for @unableToLoadUsers.
  ///
  /// In en, this message translates to:
  /// **'Unable to load users'**
  String get unableToLoadUsers;

  /// No description provided for @noClientsFound.
  ///
  /// In en, this message translates to:
  /// **'No clients found'**
  String get noClientsFound;

  /// No description provided for @noWorkersFound.
  ///
  /// In en, this message translates to:
  /// **'No workers found'**
  String get noWorkersFound;

  /// No description provided for @deleteUserTooltip.
  ///
  /// In en, this message translates to:
  /// **'Delete user'**
  String get deleteUserTooltip;

  /// No description provided for @adminSession.
  ///
  /// In en, this message translates to:
  /// **'Admin Session'**
  String get adminSession;

  /// No description provided for @adminManageUsersHint.
  ///
  /// In en, this message translates to:
  /// **'Manage users from the Clients and Workers tabs.'**
  String get adminManageUsersHint;

  /// No description provided for @distanceKm.
  ///
  /// In en, this message translates to:
  /// **'{radius} km'**
  String distanceKm(int radius);

  /// No description provided for @youreOffline.
  ///
  /// In en, this message translates to:
  /// **'You\'re Offline'**
  String get youreOffline;

  /// No description provided for @offlineHint.
  ///
  /// In en, this message translates to:
  /// **'Toggle the switch in the top bar to go online and discover nearby jobs.'**
  String get offlineHint;

  /// No description provided for @yourSkills.
  ///
  /// In en, this message translates to:
  /// **'Your Skills'**
  String get yourSkills;

  /// No description provided for @skillsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Search and add skills. These are sent to the server to filter your job feed.'**
  String get skillsSubtitle;

  /// No description provided for @addSkillLabel.
  ///
  /// In en, this message translates to:
  /// **'Add Skill'**
  String get addSkillLabel;

  /// No description provided for @typeToSearchSkills.
  ///
  /// In en, this message translates to:
  /// **'Type to search skills…'**
  String get typeToSearchSkills;

  /// No description provided for @savedSkillsCount.
  ///
  /// In en, this message translates to:
  /// **'Saved Skills ({count})'**
  String savedSkillsCount(int count);

  /// No description provided for @noSkillsAdded.
  ///
  /// In en, this message translates to:
  /// **'No skills added yet. Search above to add relevant skills.'**
  String get noSkillsAdded;

  /// No description provided for @unableToLoadTaskDetails.
  ///
  /// In en, this message translates to:
  /// **'Unable to load task details'**
  String get unableToLoadTaskDetails;

  /// No description provided for @detailDistance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get detailDistance;

  /// No description provided for @chooseLocation.
  ///
  /// In en, this message translates to:
  /// **'Choose Location'**
  String get chooseLocation;

  /// No description provided for @savedTab.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get savedTab;

  /// No description provided for @pinOnMapTab.
  ///
  /// In en, this message translates to:
  /// **'Pin on Map'**
  String get pinOnMapTab;

  /// No description provided for @locationDeniedPermanently.
  ///
  /// In en, this message translates to:
  /// **'Location permanently denied. Enable it in Settings.'**
  String get locationDeniedPermanently;

  /// No description provided for @couldNotGetLocation.
  ///
  /// In en, this message translates to:
  /// **'Could not get location'**
  String get couldNotGetLocation;

  /// No description provided for @searchPlaces.
  ///
  /// In en, this message translates to:
  /// **'Search places…'**
  String get searchPlaces;

  /// No description provided for @switchToSatellite.
  ///
  /// In en, this message translates to:
  /// **'Switch to Satellite'**
  String get switchToSatellite;

  /// No description provided for @switchToRoadMap.
  ///
  /// In en, this message translates to:
  /// **'Switch to Road map'**
  String get switchToRoadMap;

  /// No description provided for @goToMyLocation.
  ///
  /// In en, this message translates to:
  /// **'Go to my location'**
  String get goToMyLocation;

  /// No description provided for @confirmLocation.
  ///
  /// In en, this message translates to:
  /// **'Confirm Location'**
  String get confirmLocation;

  /// No description provided for @useWithoutSaving.
  ///
  /// In en, this message translates to:
  /// **'Use without saving'**
  String get useWithoutSaving;

  /// No description provided for @saveAndUse.
  ///
  /// In en, this message translates to:
  /// **'Save & use'**
  String get saveAndUse;

  /// No description provided for @useMyCurrentLocation.
  ///
  /// In en, this message translates to:
  /// **'Use my current location'**
  String get useMyCurrentLocation;

  /// No description provided for @detectingLocation.
  ///
  /// In en, this message translates to:
  /// **'Detecting location…'**
  String get detectingLocation;

  /// No description provided for @saveAddress.
  ///
  /// In en, this message translates to:
  /// **'Save Address'**
  String get saveAddress;

  /// No description provided for @saveAddressSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Add a label and recipient details for this location.'**
  String get saveAddressSubtitle;

  /// No description provided for @labelField.
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get labelField;

  /// No description provided for @labelHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get labelHome;

  /// No description provided for @labelWork.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get labelWork;

  /// No description provided for @labelOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get labelOther;

  /// No description provided for @recipientName.
  ///
  /// In en, this message translates to:
  /// **'Recipient Name'**
  String get recipientName;

  /// No description provided for @recipientNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Rahul Sharma'**
  String get recipientNameHint;

  /// No description provided for @recipientPhone.
  ///
  /// In en, this message translates to:
  /// **'Recipient Phone'**
  String get recipientPhone;

  /// No description provided for @recipientPhoneHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. 9876543210'**
  String get recipientPhoneHint;

  /// No description provided for @pickFromContacts.
  ///
  /// In en, this message translates to:
  /// **'Pick from contacts'**
  String get pickFromContacts;

  /// No description provided for @contactsAccessDenied.
  ///
  /// In en, this message translates to:
  /// **'Contacts access denied — name was copied. Please enter the phone number manually.'**
  String get contactsAccessDenied;

  /// No description provided for @openSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  /// No description provided for @couldNotOpenContacts.
  ///
  /// In en, this message translates to:
  /// **'Could not open contacts'**
  String get couldNotOpenContacts;

  /// No description provided for @areaNeighbourhood.
  ///
  /// In en, this message translates to:
  /// **'Area / Neighbourhood'**
  String get areaNeighbourhood;

  /// No description provided for @areaHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Koramangala'**
  String get areaHint;

  /// No description provided for @cityHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Bengaluru'**
  String get cityHint;

  /// No description provided for @postalCodeRequired.
  ///
  /// In en, this message translates to:
  /// **'Postal Code'**
  String get postalCodeRequired;

  /// No description provided for @postalCodeHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. 560034'**
  String get postalCodeHint;

  /// No description provided for @countryCodeRequired.
  ///
  /// In en, this message translates to:
  /// **'Country Code'**
  String get countryCodeRequired;

  /// No description provided for @countryCodeHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. IN'**
  String get countryCodeHint;

  /// No description provided for @requiredSkillsLabel.
  ///
  /// In en, this message translates to:
  /// **'Required Skills'**
  String get requiredSkillsLabel;

  /// No description provided for @skillHintText.
  ///
  /// In en, this message translates to:
  /// **'e.g. plumbing, painting…'**
  String get skillHintText;

  /// No description provided for @skillHelperEmpty.
  ///
  /// In en, this message translates to:
  /// **'Type skills and separate them with commas'**
  String get skillHelperEmpty;

  /// No description provided for @skillsAddedCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 skill added} other{{count} skills added}}'**
  String skillsAddedCount(int count);

  /// No description provided for @languagePicker.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get languagePicker;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// No description provided for @languageHindi.
  ///
  /// In en, this message translates to:
  /// **'हिन्दी'**
  String get languageHindi;

  /// No description provided for @languageTamil.
  ///
  /// In en, this message translates to:
  /// **'தமிழ்'**
  String get languageTamil;

  /// No description provided for @languageTelugu.
  ///
  /// In en, this message translates to:
  /// **'తెలుగు'**
  String get languageTelugu;

  /// No description provided for @languageKannada.
  ///
  /// In en, this message translates to:
  /// **'ಕನ್ನಡ'**
  String get languageKannada;

  /// No description provided for @languageMalayalam.
  ///
  /// In en, this message translates to:
  /// **'മലയാളം'**
  String get languageMalayalam;

  /// No description provided for @languageBengali.
  ///
  /// In en, this message translates to:
  /// **'বাংলা'**
  String get languageBengali;

  /// No description provided for @languageGujarati.
  ///
  /// In en, this message translates to:
  /// **'ગુજરાતી'**
  String get languageGujarati;

  /// No description provided for @languageMarathi.
  ///
  /// In en, this message translates to:
  /// **'मराठी'**
  String get languageMarathi;

  /// No description provided for @languagePunjabi.
  ///
  /// In en, this message translates to:
  /// **'ਪੰਜਾਬੀ'**
  String get languagePunjabi;

  /// No description provided for @languageOdia.
  ///
  /// In en, this message translates to:
  /// **'ଓଡ଼ିଆ'**
  String get languageOdia;

  /// No description provided for @languageUrdu.
  ///
  /// In en, this message translates to:
  /// **'اردو'**
  String get languageUrdu;

  /// No description provided for @languageSpanish.
  ///
  /// In en, this message translates to:
  /// **'Español'**
  String get languageSpanish;

  /// No description provided for @languageGerman.
  ///
  /// In en, this message translates to:
  /// **'Deutsch'**
  String get languageGerman;

  /// No description provided for @languageFrench.
  ///
  /// In en, this message translates to:
  /// **'Français'**
  String get languageFrench;

  /// No description provided for @languagePortuguese.
  ///
  /// In en, this message translates to:
  /// **'Português'**
  String get languagePortuguese;

  /// No description provided for @languageItalian.
  ///
  /// In en, this message translates to:
  /// **'Italiano'**
  String get languageItalian;

  /// No description provided for @languageDutch.
  ///
  /// In en, this message translates to:
  /// **'Nederlands'**
  String get languageDutch;

  /// No description provided for @languagePolish.
  ///
  /// In en, this message translates to:
  /// **'Polski'**
  String get languagePolish;

  /// No description provided for @languageRussian.
  ///
  /// In en, this message translates to:
  /// **'Русский'**
  String get languageRussian;

  /// No description provided for @languageJapanese.
  ///
  /// In en, this message translates to:
  /// **'日本語'**
  String get languageJapanese;

  /// No description provided for @languageKorean.
  ///
  /// In en, this message translates to:
  /// **'한국어'**
  String get languageKorean;

  /// No description provided for @languageChineseSimplified.
  ///
  /// In en, this message translates to:
  /// **'简体中文'**
  String get languageChineseSimplified;

  /// No description provided for @languageChineseTraditional.
  ///
  /// In en, this message translates to:
  /// **'繁體中文'**
  String get languageChineseTraditional;

  /// No description provided for @languageArabic.
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get languageArabic;

  /// No description provided for @languagePersian.
  ///
  /// In en, this message translates to:
  /// **'فارسی'**
  String get languagePersian;

  /// No description provided for @languageHebrew.
  ///
  /// In en, this message translates to:
  /// **'עברית'**
  String get languageHebrew;

  /// No description provided for @accentColorBlue.
  ///
  /// In en, this message translates to:
  /// **'Blue'**
  String get accentColorBlue;

  /// No description provided for @accentColorYellow.
  ///
  /// In en, this message translates to:
  /// **'Yellow'**
  String get accentColorYellow;

  /// No description provided for @accentColorGreen.
  ///
  /// In en, this message translates to:
  /// **'Green'**
  String get accentColorGreen;

  /// No description provided for @accentColorPink.
  ///
  /// In en, this message translates to:
  /// **'Pink'**
  String get accentColorPink;

  /// No description provided for @accentColorRed.
  ///
  /// In en, this message translates to:
  /// **'Red'**
  String get accentColorRed;

  /// No description provided for @accentColorPurple.
  ///
  /// In en, this message translates to:
  /// **'Purple'**
  String get accentColorPurple;

  /// No description provided for @accentColorOrange.
  ///
  /// In en, this message translates to:
  /// **'Orange'**
  String get accentColorOrange;

  /// No description provided for @accentColorTeal.
  ///
  /// In en, this message translates to:
  /// **'Teal'**
  String get accentColorTeal;

  /// No description provided for @accentColorCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get accentColorCustom;

  /// No description provided for @paymentStatusPending.
  ///
  /// In en, this message translates to:
  /// **'Payment pending'**
  String get paymentStatusPending;

  /// No description provided for @paymentStatusLocked.
  ///
  /// In en, this message translates to:
  /// **'Money is safely reserved'**
  String get paymentStatusLocked;

  /// No description provided for @paymentStatusReleased.
  ///
  /// In en, this message translates to:
  /// **'Payment released successfully'**
  String get paymentStatusReleased;

  /// No description provided for @paymentStatusOffline.
  ///
  /// In en, this message translates to:
  /// **'Pay directly upon completion'**
  String get paymentStatusOffline;

  /// No description provided for @paymentStatusGeneric.
  ///
  /// In en, this message translates to:
  /// **'Payment status: {status}'**
  String paymentStatusGeneric(String status);

  /// No description provided for @jobStatusOpenForOffers.
  ///
  /// In en, this message translates to:
  /// **'Open For Offers'**
  String get jobStatusOpenForOffers;

  /// No description provided for @jobStatusOfferAccepted.
  ///
  /// In en, this message translates to:
  /// **'Offer Accepted'**
  String get jobStatusOfferAccepted;

  /// No description provided for @jobStatusReadyToStart.
  ///
  /// In en, this message translates to:
  /// **'Ready to Start'**
  String get jobStatusReadyToStart;

  /// No description provided for @jobStatusInProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get jobStatusInProgress;

  /// No description provided for @jobStatusPendingPayment.
  ///
  /// In en, this message translates to:
  /// **'Pending Payment'**
  String get jobStatusPendingPayment;

  /// No description provided for @jobStatusPaymentReleased.
  ///
  /// In en, this message translates to:
  /// **'Payment Released'**
  String get jobStatusPaymentReleased;

  /// No description provided for @jobStatusTaskCompleted.
  ///
  /// In en, this message translates to:
  /// **'Task Completed'**
  String get jobStatusTaskCompleted;

  /// No description provided for @jobStatusCancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get jobStatusCancelled;

  /// No description provided for @detailBudgetLabel.
  ///
  /// In en, this message translates to:
  /// **'Budget'**
  String get detailBudgetLabel;

  /// No description provided for @detailLocationLabel.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get detailLocationLabel;

  /// No description provided for @detailSkillsLabel.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get detailSkillsLabel;

  /// No description provided for @detailJobIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Job ID'**
  String get detailJobIdLabel;

  /// No description provided for @tooltipCopy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get tooltipCopy;

  /// No description provided for @tooltipDeleteAddress.
  ///
  /// In en, this message translates to:
  /// **'Delete address'**
  String get tooltipDeleteAddress;

  /// No description provided for @confirmDeleteAddress.
  ///
  /// In en, this message translates to:
  /// **'Remove \"{addressLabel}\" from saved addresses?'**
  String confirmDeleteAddress(String addressLabel);

  /// No description provided for @errorNotAuthenticated.
  ///
  /// In en, this message translates to:
  /// **'Not authenticated. Please log in again.'**
  String get errorNotAuthenticated;

  /// No description provided for @errorCouldNotOpenImagePicker.
  ///
  /// In en, this message translates to:
  /// **'Could not open image picker.'**
  String get errorCouldNotOpenImagePicker;

  /// No description provided for @errorCouldNotReadImage.
  ///
  /// In en, this message translates to:
  /// **'Could not read the selected image.'**
  String get errorCouldNotReadImage;

  /// No description provided for @errorImageTooLarge.
  ///
  /// In en, this message translates to:
  /// **'Image must be under 5 MB. Please choose a smaller file.'**
  String get errorImageTooLarge;

  /// No description provided for @errorUploadFailed.
  ///
  /// In en, this message translates to:
  /// **'Upload failed. Please try again.'**
  String get errorUploadFailed;

  /// No description provided for @errorNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get errorNameRequired;

  /// No description provided for @errorRatingRequired.
  ///
  /// In en, this message translates to:
  /// **'Please select a rating'**
  String get errorRatingRequired;

  /// No description provided for @errorNotLoggedIn.
  ///
  /// In en, this message translates to:
  /// **'Please log in first'**
  String get errorNotLoggedIn;

  /// No description provided for @errorAdminProfileUpdateNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Admin profile updates are not supported in this flow'**
  String get errorAdminProfileUpdateNotSupported;

  /// No description provided for @errorAdminDeletionDisabled.
  ///
  /// In en, this message translates to:
  /// **'Admin account deletion is disabled in mobile flow'**
  String get errorAdminDeletionDisabled;

  /// No description provided for @errorConnectionTimeout.
  ///
  /// In en, this message translates to:
  /// **'Connection timed out. Check your network and try again.'**
  String get errorConnectionTimeout;

  /// No description provided for @errorConnectionError.
  ///
  /// In en, this message translates to:
  /// **'Unable to connect to the server. Check your network.'**
  String get errorConnectionError;

  /// No description provided for @errorRequestCancelled.
  ///
  /// In en, this message translates to:
  /// **'Request was cancelled.'**
  String get errorRequestCancelled;

  /// No description provided for @errorBadRequest.
  ///
  /// In en, this message translates to:
  /// **'Invalid request. Please check your input.'**
  String get errorBadRequest;

  /// No description provided for @errorSessionExpired.
  ///
  /// In en, this message translates to:
  /// **'Session expired. Please log in again.'**
  String get errorSessionExpired;

  /// No description provided for @errorPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'You do not have permission to perform this action.'**
  String get errorPermissionDenied;

  /// No description provided for @errorResourceNotFound.
  ///
  /// In en, this message translates to:
  /// **'Resource not found.'**
  String get errorResourceNotFound;

  /// No description provided for @errorConflict.
  ///
  /// In en, this message translates to:
  /// **'Conflict: the action cannot be completed in the current state.'**
  String get errorConflict;

  /// No description provided for @errorFileTooLarge.
  ///
  /// In en, this message translates to:
  /// **'File too large. Maximum size is 5 MB.'**
  String get errorFileTooLarge;

  /// No description provided for @errorValidationError.
  ///
  /// In en, this message translates to:
  /// **'Validation error. Please review your input.'**
  String get errorValidationError;

  /// No description provided for @errorTooManyRequests.
  ///
  /// In en, this message translates to:
  /// **'Too many requests. Please wait and try again.'**
  String get errorTooManyRequests;

  /// No description provided for @errorServerError.
  ///
  /// In en, this message translates to:
  /// **'Server error. Please try again later.'**
  String get errorServerError;

  /// No description provided for @errorRequestFailed.
  ///
  /// In en, this message translates to:
  /// **'Request failed with status {statusCode}'**
  String errorRequestFailed(String statusCode);

  /// No description provided for @errorNetworkFailed.
  ///
  /// In en, this message translates to:
  /// **'Network request failed.'**
  String get errorNetworkFailed;

  /// No description provided for @errorNetworkRequestFailed.
  ///
  /// In en, this message translates to:
  /// **'Network request failed'**
  String get errorNetworkRequestFailed;

  /// No description provided for @errorMalformedSkillResponse.
  ///
  /// In en, this message translates to:
  /// **'Malformed skill suggest response'**
  String get errorMalformedSkillResponse;

  /// No description provided for @errorMalformedResponse.
  ///
  /// In en, this message translates to:
  /// **'Malformed response payload'**
  String get errorMalformedResponse;

  /// No description provided for @errorMalformedAdminResponse.
  ///
  /// In en, this message translates to:
  /// **'Malformed admin overview response'**
  String get errorMalformedAdminResponse;

  /// No description provided for @errorAdminAccessRequired.
  ///
  /// In en, this message translates to:
  /// **'Admin access is required'**
  String get errorAdminAccessRequired;

  /// No description provided for @errorDescriptionUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Description unavailable'**
  String get errorDescriptionUnavailable;

  /// No description provided for @errorUnauthorizedAction.
  ///
  /// In en, this message translates to:
  /// **'Only {roleLabel} can perform this action'**
  String errorUnauthorizedAction(String roleLabel);

  /// No description provided for @howToCreateTask.
  ///
  /// In en, this message translates to:
  /// **'How would you like to create your task?'**
  String get howToCreateTask;

  /// No description provided for @fillManually.
  ///
  /// In en, this message translates to:
  /// **'Fill Manually'**
  String get fillManually;

  /// No description provided for @describeWithAi.
  ///
  /// In en, this message translates to:
  /// **'Describe with AI'**
  String get describeWithAi;

  /// No description provided for @aiDescribeProblem.
  ///
  /// In en, this message translates to:
  /// **'Describe Your Problem'**
  String get aiDescribeProblem;

  /// No description provided for @aiDescribeSheetSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tell us what you need help with in your own words. Our AI will fill in the form for you.'**
  String get aiDescribeSheetSubtitle;

  /// No description provided for @aiDescribeHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. My kitchen tap is leaking and I need a plumber to fix it as soon as possible. Budget around 500.'**
  String get aiDescribeHint;

  /// No description provided for @aiDescribeMinCharsWarning.
  ///
  /// In en, this message translates to:
  /// **'Please describe your problem in at least 10 characters'**
  String get aiDescribeMinCharsWarning;

  /// No description provided for @aiGenerateForm.
  ///
  /// In en, this message translates to:
  /// **'Generate Form'**
  String get aiGenerateForm;

  /// No description provided for @aiParsingJob.
  ///
  /// In en, this message translates to:
  /// **'Analysing your description…'**
  String get aiParsingJob;

  /// No description provided for @aiJobPrefillSuccess.
  ///
  /// In en, this message translates to:
  /// **'Form filled from your description. Please review and adjust.'**
  String get aiJobPrefillSuccess;

  /// No description provided for @aiJobParseWarning.
  ///
  /// In en, this message translates to:
  /// **'Partially filled. Missing: {fields}'**
  String aiJobParseWarning(String fields);

  /// No description provided for @aiJobParseFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not understand the description. Please try again or fill manually.'**
  String get aiJobParseFailed;

  /// No description provided for @aiPrefillBanner.
  ///
  /// In en, this message translates to:
  /// **'AI pre-filled. Review and edit before posting.'**
  String get aiPrefillBanner;

  /// No description provided for @addImageContext.
  ///
  /// In en, this message translates to:
  /// **'Add image for context'**
  String get addImageContext;

  /// No description provided for @imageAttached.
  ///
  /// In en, this message translates to:
  /// **'Image attached'**
  String get imageAttached;

  /// No description provided for @aiTopMatchesSection.
  ///
  /// In en, this message translates to:
  /// **'Top Matches'**
  String get aiTopMatchesSection;

  /// No description provided for @nearbyJobsSection.
  ///
  /// In en, this message translates to:
  /// **'Nearby Jobs'**
  String get nearbyJobsSection;

  /// No description provided for @aiRankingInProgress.
  ///
  /// In en, this message translates to:
  /// **'Finding your best matches…'**
  String get aiRankingInProgress;

  /// No description provided for @aiBadge.
  ///
  /// In en, this message translates to:
  /// **'AI'**
  String get aiBadge;

  /// No description provided for @suggestBidAi.
  ///
  /// In en, this message translates to:
  /// **'Suggest Bid (AI)'**
  String get suggestBidAi;

  /// No description provided for @aiSuggestingBid.
  ///
  /// In en, this message translates to:
  /// **'Generating bid suggestion…'**
  String get aiSuggestingBid;

  /// No description provided for @aiBidSuggestedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Bid pre-filled from AI suggestion. Review before submitting.'**
  String get aiBidSuggestedSuccess;

  /// No description provided for @aiBidGenerateFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not generate a suggestion. Please fill manually.'**
  String get aiBidGenerateFailed;

  /// No description provided for @aiBidSuggestionBanner.
  ///
  /// In en, this message translates to:
  /// **'AI suggested. Review and adjust.'**
  String get aiBidSuggestionBanner;

  /// No description provided for @aiSuggestReply.
  ///
  /// In en, this message translates to:
  /// **'Suggest reply'**
  String get aiSuggestReply;

  /// No description provided for @aiGeneratingReplies.
  ///
  /// In en, this message translates to:
  /// **'Generating replies…'**
  String get aiGeneratingReplies;

  /// No description provided for @aiSmartReplies.
  ///
  /// In en, this message translates to:
  /// **'Smart replies'**
  String get aiSmartReplies;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'bn',
    'de',
    'en',
    'es',
    'fa',
    'fr',
    'gu',
    'he',
    'hi',
    'it',
    'ja',
    'kn',
    'ko',
    'ml',
    'mr',
    'nl',
    'or',
    'pa',
    'pl',
    'pt',
    'ru',
    'ta',
    'te',
    'ur',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fr':
      return AppLocalizationsFr();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'nl':
      return AppLocalizationsNl();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'ur':
      return AppLocalizationsUr();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
