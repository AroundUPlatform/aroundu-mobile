// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'লগ ইন';

  @override
  String get registerTitle => 'অ্যাকাউন্ট তৈরি করুন';

  @override
  String get emailLabel => 'Email';

  @override
  String get passwordLabel => 'Password';

  @override
  String get confirmPasswordLabel => 'Confirm Password';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String get loginButton => 'Log In';

  @override
  String get registerButton => 'Sign Up';

  @override
  String get orContinueWith => 'Or continue with';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get onboardingTitle1 => 'Find Tasks Around You';

  @override
  String get onboardingSubtitle1 =>
      'Discover local jobs and services right in your neighbourhood.';

  @override
  String get onboardingTitle2 => 'Bid & Get Hired';

  @override
  String get onboardingSubtitle2 =>
      'Place competitive bids and get hired for tasks that match your skills.';

  @override
  String get onboardingTitle3 => 'Secure Payments';

  @override
  String get onboardingSubtitle3 =>
      'Escrow-backed payments ensure fair and safe transactions.';

  @override
  String get getStarted => 'শুরু করুন';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Next';

  @override
  String get roleSelectionTitle => 'Choose Your Role';

  @override
  String get roleClient => 'Client';

  @override
  String get roleClientDesc => 'I need help with tasks';

  @override
  String get roleWorker => 'Worker';

  @override
  String get roleWorkerDesc => 'I want to offer my skills';

  @override
  String get continueButton => 'Continue';

  @override
  String get homeTab => 'হোম';

  @override
  String get jobsTab => 'কাজ';

  @override
  String get chatTab => 'চ্যাট';

  @override
  String get profileTab => 'প্রোফাইল';

  @override
  String get myJobs => 'My Jobs';

  @override
  String get workerFeed => 'Available Jobs';

  @override
  String get createJob => 'Create Job';

  @override
  String get postJob => 'Post a Job';

  @override
  String get editJob => 'Edit Job';

  @override
  String get deleteJob => 'Delete Job';

  @override
  String get deleteJobConfirm => 'Are you sure you want to delete this job?';

  @override
  String get jobTitle => 'Title';

  @override
  String get jobDescription => 'Description';

  @override
  String get jobCategory => 'Category';

  @override
  String get jobBudget => 'Budget';

  @override
  String get jobLocation => 'Location';

  @override
  String get jobDueDate => 'Due Date';

  @override
  String get jobSkills => 'Skills Required';

  @override
  String get jobUrgency => 'Urgency';

  @override
  String get jobPaymentMode => 'Payment Mode';

  @override
  String get urgencyNormal => 'Normal';

  @override
  String get urgencyUrgent => 'Urgent';

  @override
  String get paymentOffline => 'Offline';

  @override
  String get paymentEscrow => 'Escrow';

  @override
  String get statusOpenForBids => 'Open for Bids';

  @override
  String get statusInProgress => 'In Progress';

  @override
  String get statusCompleted => 'Completed';

  @override
  String get statusCancelled => 'Cancelled';

  @override
  String get statusPendingStart => 'Pending Start';

  @override
  String get statusPendingRelease => 'Pending Release';

  @override
  String get bids => 'Bids';

  @override
  String get noBids => 'No bids yet';

  @override
  String get placeBid => 'Place Bid';

  @override
  String get bidAmount => 'Bid Amount';

  @override
  String get bidNotes => 'Notes (optional)';

  @override
  String get yourBid => 'Your Bid';

  @override
  String get acceptBid => 'Accept Bid';

  @override
  String get rejectBid => 'Reject Bid';

  @override
  String get bidAccepted => 'Bid Accepted';

  @override
  String get bidRejected => 'Bid Rejected';

  @override
  String get bidPending => 'Pending';

  @override
  String get startCode => 'Start Code';

  @override
  String get releaseCode => 'Release Code';

  @override
  String get generateCodes => 'Generate Codes';

  @override
  String get verifyCode => 'Verify Code';

  @override
  String get enterCode => 'Enter Code';

  @override
  String get escrow => 'Escrow';

  @override
  String get lockEscrow => 'Lock Escrow';

  @override
  String get releaseEscrow => 'Release Payment';

  @override
  String get paymentLocked => 'Payment Locked';

  @override
  String get paymentReleased => 'Payment Released';

  @override
  String get conversations => 'বার্তা';

  @override
  String get noMessagesYet => 'No messages yet';

  @override
  String get noMessagesSubtitle =>
      'Your conversations will appear here when you start chatting about a task.';

  @override
  String get startConversation => 'Start the conversation!';

  @override
  String get typeMessage => 'একটি বার্তা লিখুন...';

  @override
  String get typing => 'typing...';

  @override
  String get newMessages => 'নতুন বার্তা';

  @override
  String get now => 'now';

  @override
  String minutesAgo(int count) {
    return '${count}m ago';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count workers',
      one: '1 worker',
    );
    return '$_temp0';
  }

  @override
  String get profile => 'Profile';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get fullName => 'Full Name';

  @override
  String get phone => 'Phone Number';

  @override
  String get bio => 'Bio';

  @override
  String get skills => 'Skills';

  @override
  String get saveChanges => 'Save Changes';

  @override
  String get logout => 'লগ আউট';

  @override
  String get logoutConfirm => 'Are you sure you want to log out?';

  @override
  String get settings => 'সেটিংস';

  @override
  String get appearance => 'Appearance';

  @override
  String get language => 'ভাষা';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get systemMode => 'System';

  @override
  String get accentColour => 'Accent Colour';

  @override
  String get customColour => 'Custom';

  @override
  String get preview => 'Preview';

  @override
  String get previewTitle => 'Your colours look great!';

  @override
  String get previewSubtitle => 'This is how your app will look.';

  @override
  String get primary => 'Primary';

  @override
  String get secondary => 'Secondary';

  @override
  String get reviews => 'Reviews';

  @override
  String get leaveReview => 'Leave a Review';

  @override
  String get noReviews => 'No reviews yet';

  @override
  String get rating => 'Rating';

  @override
  String get reviewComment => 'Comment';

  @override
  String get submitReview => 'Submit Review';

  @override
  String get loading => 'লোড হচ্ছে...';

  @override
  String get loadingConversations => 'Loading conversations...';

  @override
  String get loadingMessages => 'Loading messages...';

  @override
  String get error => 'কিছু ভুল হয়েছে';

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'বাতিল';

  @override
  String get confirm => 'Confirm';

  @override
  String get delete => 'Delete';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get edit => 'Edit';

  @override
  String get close => 'Close';

  @override
  String get search => 'অনুসন্ধান';

  @override
  String get noResults => 'No results found';

  @override
  String get pullToRefresh => 'Pull to refresh';

  @override
  String get aiSetup => 'AI Setup';

  @override
  String get aiAnalysis => 'AI Analysis';

  @override
  String get unlockAi => 'Unlock AI Analysis';

  @override
  String get aiTagline => 'On-Device  ·  Private  ·  Free';

  @override
  String get deviceCheck => 'Device Check';

  @override
  String get chooseModel => 'Choose Your Model';

  @override
  String get chooseModelSubtitle =>
      'Download one or more models. You can switch between them later.';

  @override
  String get initializingAi => 'Initializing AI runtime…';

  @override
  String get modelStorage => 'Model Storage';

  @override
  String get deviceIncompatible =>
      'On-device AI requires a physical device with GPU support. Simulators and emulators are not compatible.';

  @override
  String get enhanceDescription => 'Enhance';

  @override
  String get bidInsights => 'Bid Insights';

  @override
  String get whyThisJob => 'Why this?';

  @override
  String get suggestPrice => 'Suggest Price';

  @override
  String get analyzing => 'Analyzing…';

  @override
  String get languagePicker => 'Select Language';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageHindi => 'हिन्दी';

  @override
  String get languageTamil => 'தமிழ்';

  @override
  String get languageTelugu => 'తెలుగు';

  @override
  String get languageKannada => 'ಕನ್ನಡ';

  @override
  String get languageMalayalam => 'മലയാളം';

  @override
  String get languageBengali => 'বাংলা';

  @override
  String get languageGujarati => 'ગુજરાતી';

  @override
  String get languageMarathi => 'मराठी';

  @override
  String get languagePunjabi => 'ਪੰਜਾਬੀ';

  @override
  String get languageOdia => 'ଓଡ଼ିଆ';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageSpanish => 'Español';

  @override
  String get languageGerman => 'Deutsch';

  @override
  String get languageFrench => 'Français';

  @override
  String get languagePortuguese => 'Português';

  @override
  String get languageItalian => 'Italiano';

  @override
  String get languageDutch => 'Nederlands';

  @override
  String get languagePolish => 'Polski';

  @override
  String get languageRussian => 'Русский';

  @override
  String get languageJapanese => '日本語';

  @override
  String get languageKorean => '한국어';

  @override
  String get languageChineseSimplified => '简体中文';

  @override
  String get languageChineseTraditional => '繁體中文';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languagePersian => 'فارسی';

  @override
  String get languageHebrew => 'עברית';
}
