// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'લૉગ ઇન';

  @override
  String get registerTitle => 'ખાતું બનાવો';

  @override
  String get emailLabel => 'ઇમેઇલ';

  @override
  String get passwordLabel => 'પાસવર્ડ';

  @override
  String get confirmPasswordLabel => 'પાસવર્ડની પુષ્ટિ કરો';

  @override
  String get forgotPassword => 'પાસવર્ડ ભૂલી ગયા?';

  @override
  String get loginButton => 'લૉગ ઇન';

  @override
  String get registerButton => 'સાઇન અપ';

  @override
  String get orContinueWith => 'અથવા આની સાથે ચાલુ રાખો';

  @override
  String get dontHaveAccount => 'ખાતું નથી?';

  @override
  String get alreadyHaveAccount => 'પહેલેથી ખાતું છે?';

  @override
  String get welcomeBack => 'Welcome Back';

  @override
  String get loginSubtitle => 'Sign in to continue as provider or worker.';

  @override
  String get noAccountYet => 'No account yet?';

  @override
  String get createOne => 'Create one';

  @override
  String get emailRequired => 'Email is required';

  @override
  String get enterValidEmail => 'Enter a valid email';

  @override
  String get passwordRequired => 'Password is required';

  @override
  String get minimumSixCharacters => 'Minimum 6 characters';

  @override
  String get unableToLogin => 'Unable to login. Please retry.';

  @override
  String fieldRequired(String field) {
    return '$field is required';
  }

  @override
  String get enterValidPhone => 'Enter a valid phone number';

  @override
  String get unableToRegister => 'Unable to register';

  @override
  String get registrationSuccess => 'Registration successful. Please log in.';

  @override
  String get registerSubtitle =>
      'Register as provider or worker with your basic location profile.';

  @override
  String get roleLabel => 'Role';

  @override
  String get roleJobProvider => 'Job Provider';

  @override
  String get roleJobWorker => 'Job Worker';

  @override
  String get countryLabel => 'Country';

  @override
  String get currencyLabel => 'Currency';

  @override
  String get cityLabel => 'City';

  @override
  String get postalCodeLabel => 'Postal code';

  @override
  String get areaOptionalLabel => 'Area (optional)';

  @override
  String get fullAddressOptionalLabel => 'Full address (optional)';

  @override
  String get alreadyRegistered => 'Already registered?';

  @override
  String get logInLink => 'Log in';

  @override
  String get onboardingTitle1 => 'તમારી આસપાસ કામ શોધો';

  @override
  String get onboardingSubtitle1 =>
      'તમારા પડોશમાં સ્થાનિક નોકરીઓ અને સેવાઓ શોધો.';

  @override
  String get onboardingTitle2 => 'બિડ કરો અને નોકરી મેળવો';

  @override
  String get onboardingSubtitle2 =>
      'સ્પર્ધાત્મક બિડ મૂકો અને તમારા કૌશલ્યને અનુરૂપ કામ માટે પસંદગી પામો.';

  @override
  String get onboardingTitle3 => 'સુરક્ષિત ચુકવણી';

  @override
  String get onboardingSubtitle3 =>
      'એસ્ક્રો-સમર્થિત ચુકવણી ન્યાયી અને સુરક્ષિત વ્યવહારોની ખાતરી આપે છે.';

  @override
  String get getStarted => 'શરૂ કરો';

  @override
  String get skip => 'છોડો';

  @override
  String get next => 'આગળ';

  @override
  String get newHereCreateAccount => 'New here? Create account';

  @override
  String get roleSelectionTitle => 'તમારી ભૂમિકા પસંદ કરો';

  @override
  String get roleClient => 'ક્લાયન્ટ';

  @override
  String get roleClientDesc => 'મને કામમાં મદદ જોઈએ છે';

  @override
  String get roleWorker => 'વર્કર';

  @override
  String get roleWorkerDesc => 'હું મારા કૌશલ્ય પ્રદાન કરવા માંગુ છું';

  @override
  String get continueButton => 'ચાલુ રાખો';

  @override
  String get roleSelectionSubtitle =>
      'Select the workflow you want to use in AroundU.';

  @override
  String signedInAs(String email) {
    return 'Signed in as $email';
  }

  @override
  String get roleProviderDesc => 'Post jobs and manage incoming bids.';

  @override
  String get roleWorkerDescAlt => 'Browse nearby jobs and place bids quickly.';

  @override
  String get homeTab => 'હોમ';

  @override
  String get jobsTab => 'નોકરીઓ';

  @override
  String get chatTab => 'ચેટ';

  @override
  String get profileTab => 'પ્રોફાઇલ';

  @override
  String get providerTabMyTasks => 'My Tasks';

  @override
  String get providerTabPostTask => 'Post Task';

  @override
  String get tasksNavLabel => 'Tasks';

  @override
  String get postNavLabel => 'Post';

  @override
  String get workerTabTaskFeed => 'Task Feed';

  @override
  String get feedNavLabel => 'Feed';

  @override
  String get myJobs => 'મારી નોકરીઓ';

  @override
  String get workerFeed => 'ઉપલબ્ધ નોકરીઓ';

  @override
  String get createJob => 'નોકરી બનાવો';

  @override
  String get postJob => 'નોકરી પોસ્ટ કરો';

  @override
  String get editJob => 'નોકરી સંપાદિત કરો';

  @override
  String get deleteJob => 'નોકરી કાઢી નાખો';

  @override
  String get deleteJobConfirm => 'શું તમે ખરેખર આ નોકરી કાઢી નાખવા માંગો છો?';

  @override
  String get jobTitle => 'શીર્ષક';

  @override
  String get jobDescription => 'વર્ણન';

  @override
  String get jobCategory => 'શ્રેણી';

  @override
  String get jobBudget => 'બજેટ';

  @override
  String get jobLocation => 'સ્થળ';

  @override
  String get jobDueDate => 'નિયત તારીખ';

  @override
  String get jobSkills => 'જરૂરી કૌશલ્ય';

  @override
  String get jobUrgency => 'તાકીદ';

  @override
  String get jobPaymentMode => 'ચુકવણી મોડ';

  @override
  String get urgencyNormal => 'સામાન્ય';

  @override
  String get urgencyMedium => 'Medium';

  @override
  String get urgencyUrgent => 'તાકીદનું';

  @override
  String get urgencyAsap => 'ASAP';

  @override
  String get paymentOffline => 'ઑફલાઇન';

  @override
  String get paymentEscrow => 'એસ્ક્રો';

  @override
  String get paymentMethod => 'Payment Method';

  @override
  String get payInCash => 'Pay in Cash';

  @override
  String get secureEscrow => 'Secure Escrow';

  @override
  String get filterAll => 'All';

  @override
  String get filterOpen => 'Open';

  @override
  String get filterActive => 'Active';

  @override
  String get filterInProgress => 'In Progress';

  @override
  String get filterCompleted => 'Completed';

  @override
  String get filterCancelled => 'Cancelled';

  @override
  String get filterExpired => 'Expired';

  @override
  String get filterNearby => 'Nearby';

  @override
  String get filterAllMine => 'All Mine';

  @override
  String get filterBidPlaced => 'Bid Placed';

  @override
  String get filterAccepted => 'Accepted';

  @override
  String get noTasksPostedYet => 'No tasks posted yet';

  @override
  String get noOpenTasks => 'No open tasks';

  @override
  String get noActiveTasks => 'No active tasks';

  @override
  String get noTasksInProgress => 'No tasks in progress';

  @override
  String get noCompletedTasks => 'No completed tasks';

  @override
  String get noCancelledTasks => 'No cancelled tasks';

  @override
  String get noExpiredTasks => 'No expired tasks';

  @override
  String get unableToLoadTasks => 'Unable to load tasks';

  @override
  String get noNearbyJobs => 'No nearby jobs right now';

  @override
  String get noJobsYetBid => 'No jobs yet — place a bid to get started!';

  @override
  String get noPendingBids => 'No pending bids';

  @override
  String get noAcceptedJobs => 'No accepted jobs';

  @override
  String get noJobsInProgress => 'No jobs in progress';

  @override
  String get noCompletedJobsYet => 'No completed jobs yet';

  @override
  String get noCancelledJobs => 'No cancelled jobs';

  @override
  String get noExpiredJobs => 'No expired jobs';

  @override
  String get pullDownToRefreshCheck => 'Pull down to refresh and check again.';

  @override
  String get unableToLoadJobs => 'Unable to load jobs';

  @override
  String get postNewTask => 'Post a New Task';

  @override
  String get postTaskSubtitle =>
      'Add clear details so workers can send accurate offers.';

  @override
  String get taskTitleLabel => 'Task title';

  @override
  String get savingLocation => 'Saving location…';

  @override
  String get tapToSelectLocation => 'Tap to select location';

  @override
  String get postTaskButton => 'Post Task';

  @override
  String get addSkillWarning => 'Add at least one required skill for this task';

  @override
  String get enterValidBudget => 'Enter a valid budget amount';

  @override
  String get setJobLocationWarning =>
      'Please set a job location before posting';

  @override
  String get jobPostedSuccess => 'Job posted successfully';

  @override
  String get failedToPostJob => 'Failed to post job. Please retry.';

  @override
  String get failedToSaveLocation => 'Failed to save location';

  @override
  String get unableToLoadJobWorkflow => 'Unable to load job workflow';

  @override
  String get unknownError => 'Unknown error';

  @override
  String get statusOpenForBids => 'બિડ માટે ખુલ્લું';

  @override
  String get statusInProgress => 'પ્રગતિમાં';

  @override
  String get statusCompleted => 'પૂર્ણ';

  @override
  String get statusCancelled => 'રદ';

  @override
  String get statusPendingStart => 'શરૂ થવાની રાહમાં';

  @override
  String get statusPendingRelease => 'રિલીઝની રાહમાં';

  @override
  String get bids => 'બિડ';

  @override
  String get noBids => 'હજી કોઈ બિડ નથી';

  @override
  String get placeBid => 'બિડ મૂકો';

  @override
  String get bidAmount => 'બિડ રકમ';

  @override
  String get bidNotes => 'નોંધ (વૈકલ્પિક)';

  @override
  String get yourBid => 'તમારી બિડ';

  @override
  String get acceptBid => 'બિડ સ્વીકારો';

  @override
  String get rejectBid => 'બિડ નકારો';

  @override
  String get bidAccepted => 'બિડ સ્વીકૃત';

  @override
  String get bidRejected => 'બિડ નકારાયેલ';

  @override
  String get bidPending => 'બાકી';

  @override
  String get offersSection => 'Offers';

  @override
  String get noOffersReceivedYet => 'No offers received yet.';

  @override
  String get offerAccepted => 'Offer Accepted';

  @override
  String get offerRejected => 'Offer Rejected';

  @override
  String get offerPending => 'Offer Pending';

  @override
  String workerNumber(int id) {
    return 'Worker #$id';
  }

  @override
  String get acceptThisOffer => 'Accept this Offer';

  @override
  String get messageWorker => 'Message Worker';

  @override
  String get offerAcceptedSnack => 'Offer accepted';

  @override
  String get yourOffer => 'Your Offer';

  @override
  String get bidStatusSelected => 'Selected';

  @override
  String get bidStatusRejected => 'Rejected';

  @override
  String get bidStatusPending => 'Pending';

  @override
  String get placeYourOffer => 'Place Your Offer';

  @override
  String get yourOfferAmount => 'Your offer amount';

  @override
  String get messageToClientOptional => 'Message to client (optional)';

  @override
  String get addPartnerOptional => 'Add a partner (optional)';

  @override
  String get partnerNameLabel => 'Partner name';

  @override
  String get partnerFeeLabel => 'Partner fee';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return '+ $symbol$amount partner fee';
  }

  @override
  String get submitOffer => 'Submit Offer';

  @override
  String get enterValidOfferAmount => 'Enter a valid offer amount';

  @override
  String get offerSubmittedSuccess => 'Offer submitted successfully';

  @override
  String get clientSelectedYourOffer => 'Client Selected Your Offer!';

  @override
  String get handshakeHint =>
      'Accept to confirm this job, or decline if you\'re no longer available.';

  @override
  String get handshakeAccepted => 'Handshake accepted';

  @override
  String get handshakeDeclined => 'Handshake declined';

  @override
  String get acceptJob => 'Accept Job';

  @override
  String get decline => 'Decline';

  @override
  String get startCode => 'સ્ટાર્ટ કોડ';

  @override
  String get releaseCode => 'રિલીઝ કોડ';

  @override
  String get generateCodes => 'કોડ જનરેટ કરો';

  @override
  String get verifyCode => 'કોડ ચકાસો';

  @override
  String get enterCode => 'કોડ દાખલ કરો';

  @override
  String get generateStartCode => 'Generate Start Code';

  @override
  String get startCodeCopied => 'Start code copied';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return 'Reserve $symbol$amount in Escrow';
  }

  @override
  String get releaseCodeCopied => 'Release code copied';

  @override
  String get releaseCodeHint =>
      'Share this verbally with the worker. They enter it to confirm task completion.';

  @override
  String get regenerateCode => 'Regenerate Code';

  @override
  String get generateReleaseCode => 'Generate Release Code';

  @override
  String get taskCodesGenerated => 'Task codes generated';

  @override
  String get newReleaseCodeGenerated => 'New release code generated';

  @override
  String get readyToBegin => 'Ready to Begin?';

  @override
  String get startCodeHint =>
      'Ask the client for the start code and enter it below to officially begin work.';

  @override
  String get verifyAndStartWork => 'Verify & Start Work';

  @override
  String get startCodeVerified =>
      'Start code verified. Task is now in progress.';

  @override
  String get enterStartCodeFirst => 'Enter start code first';

  @override
  String get workInProgress => 'Work In Progress';

  @override
  String get releaseCodePrompt =>
      'Once done, ask the client for the 6-digit release code.';

  @override
  String get releaseCodeHelper => 'Enter the 6-digit code from the client';

  @override
  String get confirmWorkCompleted => 'Confirm Work Completed';

  @override
  String get workConfirmedPaymentReleased =>
      'Work confirmed — payment released!';

  @override
  String get enterReleaseCodeWarning =>
      'Enter the release code from the client';

  @override
  String get escrow => 'એસ્ક્રો';

  @override
  String get lockEscrow => 'એસ્ક્રો લૉક કરો';

  @override
  String get releaseEscrow => 'ચુકવણી છોડો';

  @override
  String get paymentLocked => 'ચુકવણી લૉક';

  @override
  String get paymentReleased => 'ચુકવણી છોડાયેલ';

  @override
  String get paymentSafelyReserved => 'Payment safely reserved';

  @override
  String get cancelTask => 'Cancel Task';

  @override
  String get taskCancelled => 'Task cancelled';

  @override
  String get deleteTask => 'Delete Task';

  @override
  String get deleteTaskTitle => 'Delete task?';

  @override
  String get deleteTaskConfirm =>
      'This will remove the task and all associated offers.';

  @override
  String get taskDeleted => 'Task deleted';

  @override
  String get typeFirstMessage => 'Type your first message…';

  @override
  String get send => 'Send';

  @override
  String get failedToSendMessage => 'Failed to send message';

  @override
  String get conversations => 'સંદેશાઓ';

  @override
  String get noMessagesYet => 'હજી કોઈ સંદેશા નથી';

  @override
  String get noMessagesSubtitle =>
      'જ્યારે તમે કોઈ કાર્ય વિશે ચેટ શરૂ કરશો ત્યારે તમારી વાતચીત અહીં દેખાશે.';

  @override
  String get startConversation => 'વાતચીત શરૂ કરો!';

  @override
  String get typeMessage => 'સંદેશ લખો...';

  @override
  String get typing => 'ટાઇપ કરી રહ્યા છે...';

  @override
  String get newMessages => 'નવા સંદેશા';

  @override
  String get now => 'હમણાં';

  @override
  String minutesAgo(int count) {
    return '$countમિ. પહેલાં';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વર્કર',
      one: '1 વર્કર',
    );
    return '$_temp0';
  }

  @override
  String get chatToday => 'Today';

  @override
  String get chatYesterday => 'Yesterday';

  @override
  String chatYouPrefix(String message) {
    return 'You: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'Re: $jobTitle';
  }

  @override
  String get noConversationsYet => 'No conversations yet';

  @override
  String get loadingConversations => 'વાતચીત લોડ થઈ રહી છે...';

  @override
  String get loadingMessages => 'સંદેશા લોડ થઈ રહ્યા છે...';

  @override
  String get profile => 'પ્રોફાઇલ';

  @override
  String get editProfile => 'પ્રોફાઇલ સંપાદિત કરો';

  @override
  String get fullName => 'પૂરું નામ';

  @override
  String get phone => 'ફોન નંબર';

  @override
  String get bio => 'પરિચય';

  @override
  String get skills => 'કૌશલ્ય';

  @override
  String get saveChanges => 'ફેરફારો સાચવો';

  @override
  String get logout => 'લૉગ આઉટ';

  @override
  String get logoutConfirm => 'શું તમે ખરેખર લૉગ આઉટ કરવા માંગો છો?';

  @override
  String get myProfile => 'My Profile';

  @override
  String get unknown => 'Unknown';

  @override
  String get experienceLabel => 'Experience';

  @override
  String get statusLabel => 'Status';

  @override
  String get notSet => 'Not set';

  @override
  String get onDuty => 'On Duty';

  @override
  String get offDuty => 'Off Duty';

  @override
  String yearsCount(int count) {
    return '$count years';
  }

  @override
  String get themeAndColors => 'Theme & Colors';

  @override
  String get aiModelLabel => 'AI Model';

  @override
  String get availableForWork => 'Available for Work';

  @override
  String get visibleToClients => 'You are visible to clients';

  @override
  String get currentlyOffDuty => 'You are currently off duty';

  @override
  String get myReviews => 'My Reviews';

  @override
  String get deleteAccount => 'Delete Account';

  @override
  String get deleteAccountConfirm =>
      'This will permanently delete your account and all data. This cannot be undone.';

  @override
  String get couldNotDeleteAccount => 'Could not delete account';

  @override
  String get profilePhotoUpdated => 'Profile photo updated';

  @override
  String get profileUpdated => 'Profile updated';

  @override
  String get nameLabel => 'Name';

  @override
  String get profileImageUrl => 'Profile Image URL';

  @override
  String get yearsOfExperience => 'Years of Experience';

  @override
  String get certificationsLabel => 'Certifications';

  @override
  String get payoutAccountLabel => 'Payout Account';

  @override
  String get onDutySubtitle => 'Toggle availability for new tasks';

  @override
  String get loadingProfile => 'Loading profile...';

  @override
  String get availabilityLabel => 'Availability';

  @override
  String get memberLabel => 'Member';

  @override
  String get available => 'Available';

  @override
  String get unavailable => 'Unavailable';

  @override
  String get viewAllReviews => 'View All Reviews';

  @override
  String get settings => 'સેટિંગ્સ';

  @override
  String get appearance => 'દેખાવ';

  @override
  String get language => 'ભાષા';

  @override
  String get darkMode => 'ડાર્ક મોડ';

  @override
  String get lightMode => 'લાઇટ મોડ';

  @override
  String get systemMode => 'સિસ્ટમ';

  @override
  String get accentColour => 'એક્સેન્ટ રંગ';

  @override
  String get customColour => 'કસ્ટમ';

  @override
  String get preview => 'પ્રીવ્યૂ';

  @override
  String get previewTitle => 'તમારા રંગો સરસ લાગે છે!';

  @override
  String get previewSubtitle => 'તમારી એપ આવી દેખાશે.';

  @override
  String get primary => 'પ્રાથમિક';

  @override
  String get secondary => 'ગૌણ';

  @override
  String get modeLabel => 'Mode';

  @override
  String get pickAColour => 'Pick a colour';

  @override
  String get systemDefault => 'System default';

  @override
  String get darkModeSubtitle => 'Switch between light and dark themes';

  @override
  String get reviews => 'સમીક્ષાઓ';

  @override
  String get leaveReview => 'સમીક્ષા આપો';

  @override
  String get noReviews => 'હજી કોઈ સમીક્ષા નથી';

  @override
  String get rating => 'રેટિંગ';

  @override
  String get reviewComment => 'ટિપ્પણી';

  @override
  String get submitReview => 'સમીક્ષા સબમિટ કરો';

  @override
  String howWasWorker(String name) {
    return 'How was $name?';
  }

  @override
  String get feedbackHelps => 'Your feedback helps the community';

  @override
  String get thanksForReview => 'Thanks for your review!';

  @override
  String get shareExperienceHint => 'Share your experience (optional)';

  @override
  String get ratingExcellent => 'Excellent!';

  @override
  String get ratingGreat => 'Great!';

  @override
  String get ratingGood => 'Good';

  @override
  String get ratingFair => 'Fair';

  @override
  String get ratingPoor => 'Poor';

  @override
  String get tapToRate => 'Tap to rate';

  @override
  String workerReviewsTitle(String name) {
    return '$name\'s Reviews';
  }

  @override
  String get loadingReviews => 'Loading reviews...';

  @override
  String get noReviewsSubtitle =>
      'Reviews will appear here after completed tasks.';

  @override
  String get allReviews => 'All Reviews';

  @override
  String reviewCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count reviews',
      one: '1 review',
    );
    return '$_temp0';
  }

  @override
  String get anonymous => 'Anonymous';

  @override
  String get loading => 'લોડ થઈ રહ્યું છે...';

  @override
  String get error => 'કંઈક ખોટું થયું';

  @override
  String get retry => 'ફરી પ્રયાસ કરો';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get cancel => 'રદ કરો';

  @override
  String get confirm => 'પુષ્ટિ કરો';

  @override
  String get delete => 'કાઢી નાખો';

  @override
  String get save => 'સાચવો';

  @override
  String get edit => 'સંપાદિત કરો';

  @override
  String get close => 'બંધ કરો';

  @override
  String get search => 'શોધો';

  @override
  String get noResults => 'કોઈ પરિણામ મળ્યું નથી';

  @override
  String get pullToRefresh => 'રિફ્રેશ કરવા ખેંચો';

  @override
  String get pullDownToRefresh => 'Pull down to refresh.';

  @override
  String get yes => 'Yes';

  @override
  String get required => 'Required';

  @override
  String get stop => 'Stop';

  @override
  String get clear => 'Clear';

  @override
  String get aiSetup => 'AI સેટઅપ';

  @override
  String get aiAnalysis => 'AI વિશ્લેષણ';

  @override
  String get unlockAi => 'AI વિશ્લેષણ અનલૉક કરો';

  @override
  String get aiTagline => 'ઑન-ડિવાઇસ  ·  ખાનગી  ·  મફત';

  @override
  String get deviceCheck => 'ડિવાઇસ ચેક';

  @override
  String get chooseModel => 'તમારું મોડેલ પસંદ કરો';

  @override
  String get chooseModelSubtitle =>
      'એક અથવા વધુ મોડેલ ડાઉનલોડ કરો. પછી તેમની વચ્ચે બદલી શકો છો.';

  @override
  String get initializingAi => 'AI રનટાઇમ શરૂ થઈ રહ્યું છે…';

  @override
  String get modelStorage => 'મોડેલ સ્ટોરેજ';

  @override
  String get deviceIncompatible =>
      'ઑન-ડિવાઇસ AI માટે GPU સપોર્ટ ધરાવતું ફિઝિકલ ડિવાઇસ જરૂરી છે. સિમ્યુલેટર અને એમ્યુલેટર સુસંગત નથી.';

  @override
  String get enhanceDescription => 'સુધારો';

  @override
  String get bidInsights => 'બિડ અંતર્દૃષ્ટિ';

  @override
  String get whyThisJob => 'આ શા માટે?';

  @override
  String get suggestPrice => 'કિંમત સૂચન';

  @override
  String get analyzing => 'વિશ્લેષણ થઈ રહ્યું છે…';

  @override
  String get aiCapabilities => 'AI Capabilities';

  @override
  String get onDeviceAi => 'On-Device AI';

  @override
  String get aiTaglineSetup => 'Private · Offline · Free';

  @override
  String get aiSetupDescription =>
      'Get smart suggestions for tasks and bids powered by an AI model that runs entirely on your device. No data leaves your phone.';

  @override
  String get physicalDevice => 'Physical device';

  @override
  String get emulatorDetected => 'Emulator detected';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => 'Sufficient';

  @override
  String get freeStorage => 'Free storage';

  @override
  String mbFree(int mb) {
    return '$mb MB free';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'AI features require a physical device.';

  @override
  String get multilingual => 'Multilingual';

  @override
  String downloadingProgress(String percent) {
    return 'Downloading… $percent%';
  }

  @override
  String get loadingModel => 'Loading model…';

  @override
  String get retryDownload => 'Retry Download';

  @override
  String get activeAndReady => 'Active & Ready';

  @override
  String get remove => 'Remove';

  @override
  String get enableAi => 'Enable AI';

  @override
  String get downloadAiModel => 'Download AI Model';

  @override
  String get deviceNotSupported => 'Device not supported';

  @override
  String get downloadBackgroundNote =>
      'Download happens in the background — you can leave this screen. The model file will be stored on your device and can be removed at any time.';

  @override
  String get removeAiModelTitle => 'Remove AI Model?';

  @override
  String get removeAiModelConfirm =>
      'This will delete the AI model from your device. You can re-download it later.';

  @override
  String get analyzeWithAi => 'Analyze with AI';

  @override
  String get aiAssistantAvailable => 'AI Assistant available';

  @override
  String get aiSetupPrompt =>
      'Set up an on-device AI model to get smart suggestions.';

  @override
  String get setup => 'Setup';

  @override
  String get adminDashboard => 'Admin Dashboard';

  @override
  String get failedToLoadDashboard => 'Failed to load dashboard';

  @override
  String get platformOverview => 'Platform Overview';

  @override
  String get liveStatistics => 'Live statistics from the backend.';

  @override
  String get usersSection => 'Users';

  @override
  String get adminTabClients => 'Clients';

  @override
  String get adminTabWorkers => 'Workers';

  @override
  String get adminTabAccount => 'Account';

  @override
  String get jobsSection => 'Jobs';

  @override
  String get activeLabel => 'Active';

  @override
  String get todaySection => 'Today';

  @override
  String get createdLabel => 'Created';

  @override
  String get completedLabel => 'Completed';

  @override
  String deleteUserTitle(String role) {
    return 'Delete $role';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return 'This action removes $name ($email) permanently. Continue?';
  }

  @override
  String get userDeletedSuccess => 'User deleted successfully';

  @override
  String get unableToLoadUsers => 'Unable to load users';

  @override
  String get noClientsFound => 'No clients found';

  @override
  String get noWorkersFound => 'No workers found';

  @override
  String get deleteUserTooltip => 'Delete user';

  @override
  String get adminSession => 'Admin Session';

  @override
  String get adminManageUsersHint =>
      'Manage users from the Clients and Workers tabs.';

  @override
  String distanceKm(int radius) {
    return '$radius km';
  }

  @override
  String get youreOffline => 'You\'re Offline';

  @override
  String get offlineHint =>
      'Toggle the switch in the top bar to go online and discover nearby jobs.';

  @override
  String get yourSkills => 'Your Skills';

  @override
  String get skillsSubtitle =>
      'Search and add skills. These are sent to the server to filter your job feed.';

  @override
  String get addSkillLabel => 'Add Skill';

  @override
  String get typeToSearchSkills => 'Type to search skills…';

  @override
  String savedSkillsCount(int count) {
    return 'Saved Skills ($count)';
  }

  @override
  String get noSkillsAdded =>
      'No skills added yet. Search above to add relevant skills.';

  @override
  String get unableToLoadTaskDetails => 'Unable to load task details';

  @override
  String get detailDistance => 'Distance';

  @override
  String get chooseLocation => 'Choose Location';

  @override
  String get savedTab => 'Saved';

  @override
  String get pinOnMapTab => 'Pin on Map';

  @override
  String get locationDeniedPermanently =>
      'Location permanently denied. Enable it in Settings.';

  @override
  String get couldNotGetLocation => 'Could not get location';

  @override
  String get searchPlaces => 'Search places…';

  @override
  String get switchToSatellite => 'Switch to Satellite';

  @override
  String get switchToRoadMap => 'Switch to Road map';

  @override
  String get goToMyLocation => 'Go to my location';

  @override
  String get confirmLocation => 'Confirm Location';

  @override
  String get saveAddress => 'Save Address';

  @override
  String get saveAddressSubtitle =>
      'Add a label and recipient details for this location.';

  @override
  String get labelField => 'Label';

  @override
  String get labelHome => 'Home';

  @override
  String get labelWork => 'Work';

  @override
  String get labelOther => 'Other';

  @override
  String get recipientName => 'Recipient Name';

  @override
  String get recipientNameHint => 'e.g. Rahul Sharma';

  @override
  String get recipientPhone => 'Recipient Phone';

  @override
  String get recipientPhoneHint => 'e.g. 9876543210';

  @override
  String get pickFromContacts => 'Pick from contacts';

  @override
  String get contactsAccessDenied =>
      'Contacts access denied — name was copied. Please enter the phone number manually.';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get couldNotOpenContacts => 'Could not open contacts';

  @override
  String get areaNeighbourhood => 'Area / Neighbourhood';

  @override
  String get areaHint => 'e.g. Koramangala';

  @override
  String get cityHint => 'e.g. Bengaluru';

  @override
  String get postalCodeRequired => 'Postal Code';

  @override
  String get postalCodeHint => 'e.g. 560034';

  @override
  String get countryCodeRequired => 'Country Code';

  @override
  String get countryCodeHint => 'e.g. IN';

  @override
  String get requiredSkillsLabel => 'Required Skills';

  @override
  String get skillHintText => 'e.g. plumbing, painting…';

  @override
  String get skillHelperEmpty => 'Type skills and separate them with commas';

  @override
  String skillsAddedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count skills added',
      one: '1 skill added',
    );
    return '$_temp0';
  }

  @override
  String get languagePicker => 'ભાષા પસંદ કરો';

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

  @override
  String get useWithoutSaving => 'Use Without Saving';

  @override
  String get saveAndUse => 'Save & Use';

  @override
  String get useMyCurrentLocation => 'Use My Current Location';

  @override
  String get detectingLocation => 'Detecting location…';

  @override
  String get deleteAddress => 'Delete Address';
}
