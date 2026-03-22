// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'உள்நுழையவும்';

  @override
  String get registerTitle => 'கணக்கை உருவாக்கவும்';

  @override
  String get emailLabel => 'மின்னஞ்சல்';

  @override
  String get passwordLabel => 'கடவுச்சொல்';

  @override
  String get confirmPasswordLabel => 'கடவுச்சொல்லை உறுதிப்படுத்தவும்';

  @override
  String get forgotPassword => 'கடவுச்சொல் மறந்துவிட்டதா?';

  @override
  String get loginButton => 'உள்நுழையவும்';

  @override
  String get registerButton => 'பதிவு செய்யவும்';

  @override
  String get orContinueWith => 'அல்லது இதைப் பயன்படுத்தி தொடரவும்';

  @override
  String get dontHaveAccount => 'கணக்கு இல்லையா?';

  @override
  String get alreadyHaveAccount => 'ஏற்கனவே கணக்கு உள்ளதா?';

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
  String get onboardingTitle1 => 'உங்கள் அருகில் வேலைகளைக் கண்டறியுங்கள்';

  @override
  String get onboardingSubtitle1 =>
      'உங்கள் அக்கம்பக்கத்தில் உள்ள உள்ளூர் வேலைகளையும் சேவைகளையும் கண்டறியுங்கள்.';

  @override
  String get onboardingTitle2 => 'ஏலம் எடுத்து வேலை பெறுங்கள்';

  @override
  String get onboardingSubtitle2 =>
      'போட்டி ஏலங்களை வைத்து உங்கள் திறமைகளுக்கு பொருத்தமான வேலைகளுக்கு தேர்ந்தெடுக்கப்படுங்கள்.';

  @override
  String get onboardingTitle3 => 'பாதுகாப்பான கட்டணங்கள்';

  @override
  String get onboardingSubtitle3 =>
      'எஸ்க்ரோ-ஆதரவு கட்டணங்கள் நியாயமான மற்றும் பாதுகாப்பான பரிவர்த்தனைகளை உறுதிசெய்கின்றன.';

  @override
  String get getStarted => 'தொடங்குங்கள்';

  @override
  String get skip => 'தவிர்';

  @override
  String get next => 'அடுத்து';

  @override
  String get newHereCreateAccount => 'New here? Create account';

  @override
  String get roleSelectionTitle => 'உங்கள் பங்கைத் தேர்ந்தெடுக்கவும்';

  @override
  String get roleClient => 'வாடிக்கையாளர்';

  @override
  String get roleClientDesc => 'எனக்கு வேலைகளில் உதவி தேவை';

  @override
  String get roleWorker => 'தொழிலாளி';

  @override
  String get roleWorkerDesc => 'நான் என் திறமைகளை வழங்க விரும்புகிறேன்';

  @override
  String get continueButton => 'தொடரவும்';

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
  String get homeTab => 'முகப்பு';

  @override
  String get jobsTab => 'வேலைகள்';

  @override
  String get chatTab => 'உரையாடல்';

  @override
  String get profileTab => 'சுயவிவரம்';

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
  String get myJobs => 'என் வேலைகள்';

  @override
  String get workerFeed => 'கிடைக்கும் வேலைகள்';

  @override
  String get createJob => 'வேலை உருவாக்கவும்';

  @override
  String get postJob => 'வேலை பதிவிடவும்';

  @override
  String get editJob => 'வேலை திருத்தவும்';

  @override
  String get deleteJob => 'வேலை நீக்கவும்';

  @override
  String get deleteJobConfirm => 'இந்த வேலையை நீக்க விரும்புகிறீர்களா?';

  @override
  String get jobTitle => 'தலைப்பு';

  @override
  String get jobDescription => 'விவரம்';

  @override
  String get jobCategory => 'வகை';

  @override
  String get jobBudget => 'பட்ஜெட்';

  @override
  String get jobLocation => 'இடம்';

  @override
  String get jobDueDate => 'நிலுவைத் தேதி';

  @override
  String get jobSkills => 'தேவையான திறன்கள்';

  @override
  String get jobUrgency => 'அவசரம்';

  @override
  String get jobPaymentMode => 'கட்டண முறை';

  @override
  String get urgencyNormal => 'சாதாரணம்';

  @override
  String get urgencyMedium => 'Medium';

  @override
  String get urgencyUrgent => 'அவசரம்';

  @override
  String get urgencyAsap => 'ASAP';

  @override
  String get paymentOffline => 'ஆஃப்லைன்';

  @override
  String get paymentEscrow => 'எஸ்க்ரோ';

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
  String get statusOpenForBids => 'ஏலத்திற்குத் திறந்தது';

  @override
  String get statusInProgress => 'நடப்பில் உள்ளது';

  @override
  String get statusCompleted => 'முடிந்தது';

  @override
  String get statusCancelled => 'ரத்து செய்யப்பட்டது';

  @override
  String get statusPendingStart => 'தொடக்கத்திற்கு காத்திருக்கிறது';

  @override
  String get statusPendingRelease => 'வெளியீட்டிற்கு காத்திருக்கிறது';

  @override
  String get bids => 'ஏலங்கள்';

  @override
  String get noBids => 'இன்னும் ஏலங்கள் இல்லை';

  @override
  String get placeBid => 'ஏலம் வைக்கவும்';

  @override
  String get bidAmount => 'ஏலத் தொகை';

  @override
  String get bidNotes => 'குறிப்புகள் (விருப்பம்)';

  @override
  String get yourBid => 'உங்கள் ஏலம்';

  @override
  String get acceptBid => 'ஏலத்தை ஏற்கவும்';

  @override
  String get rejectBid => 'ஏலத்தை நிராகரிக்கவும்';

  @override
  String get bidAccepted => 'ஏலம் ஏற்றுக்கொள்ளப்பட்டது';

  @override
  String get bidRejected => 'ஏலம் நிராகரிக்கப்பட்டது';

  @override
  String get bidPending => 'நிலுவையில்';

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
  String get startCode => 'தொடக்க குறியீடு';

  @override
  String get releaseCode => 'வெளியீட்டு குறியீடு';

  @override
  String get generateCodes => 'குறியீடுகளை உருவாக்கவும்';

  @override
  String get verifyCode => 'குறியீட்டை சரிபார்க்கவும்';

  @override
  String get enterCode => 'குறியீட்டை உள்ளிடவும்';

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
  String get escrow => 'எஸ்க்ரோ';

  @override
  String get lockEscrow => 'எஸ்க்ரோவை பூட்டவும்';

  @override
  String get releaseEscrow => 'கட்டணத்தை வெளியிடவும்';

  @override
  String get paymentLocked => 'கட்டணம் பூட்டப்பட்டது';

  @override
  String get paymentReleased => 'கட்டணம் வெளியிடப்பட்டது';

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
  String get conversations => 'செய்திகள்';

  @override
  String get noMessagesYet => 'இன்னும் செய்திகள் இல்லை';

  @override
  String get noMessagesSubtitle =>
      'நீங்கள் ஒரு பணியைப் பற்றி உரையாடத் தொடங்கும்போது உங்கள் உரையாடல்கள் இங்கே தோன்றும்.';

  @override
  String get startConversation => 'உரையாடலைத் தொடங்குங்கள்!';

  @override
  String get typeMessage => 'செய்தியை உள்ளிடவும்...';

  @override
  String get typing => 'தட்டச்சு செய்கிறது...';

  @override
  String get newMessages => 'புதிய செய்திகள்';

  @override
  String get now => 'இப்போது';

  @override
  String minutesAgo(int count) {
    return '$countநி. முன்';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count தொழிலாளிகள்',
      one: '1 தொழிலாளி',
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
  String get loadingConversations => 'உரையாடல்களை ஏற்றுகிறது...';

  @override
  String get loadingMessages => 'செய்திகளை ஏற்றுகிறது...';

  @override
  String get profile => 'சுயவிவரம்';

  @override
  String get editProfile => 'சுயவிவரத்தைத் திருத்தவும்';

  @override
  String get fullName => 'முழு பெயர்';

  @override
  String get phone => 'தொலைபேசி எண்';

  @override
  String get bio => 'சுய அறிமுகம்';

  @override
  String get skills => 'திறன்கள்';

  @override
  String get saveChanges => 'மாற்றங்களைச் சேமிக்கவும்';

  @override
  String get logout => 'வெளியேறவும்';

  @override
  String get logoutConfirm => 'நீங்கள் வெளியேற விரும்புகிறீர்களா?';

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
  String get settings => 'அமைப்புகள்';

  @override
  String get appearance => 'தோற்றம்';

  @override
  String get language => 'மொழி';

  @override
  String get darkMode => 'இருண்ட பயன்முறை';

  @override
  String get lightMode => 'ஒளி பயன்முறை';

  @override
  String get systemMode => 'கணினி';

  @override
  String get accentColour => 'வலியுறுத்தல் நிறம்';

  @override
  String get customColour => 'தனிப்பயன்';

  @override
  String get preview => 'முன்னோட்டம்';

  @override
  String get previewTitle => 'உங்கள் வண்ணங்கள் அருமையாக இருக்கின்றன!';

  @override
  String get previewSubtitle => 'உங்கள் ஆப் இப்படி இருக்கும்.';

  @override
  String get primary => 'முதன்மை';

  @override
  String get secondary => 'இரண்டாம் நிலை';

  @override
  String get modeLabel => 'Mode';

  @override
  String get pickAColour => 'Pick a colour';

  @override
  String get systemDefault => 'System default';

  @override
  String get darkModeSubtitle => 'Switch between light and dark themes';

  @override
  String get reviews => 'மதிப்புரைகள்';

  @override
  String get leaveReview => 'மதிப்புரை தரவும்';

  @override
  String get noReviews => 'இன்னும் மதிப்புரைகள் இல்லை';

  @override
  String get rating => 'மதிப்பீடு';

  @override
  String get reviewComment => 'கருத்து';

  @override
  String get submitReview => 'மதிப்புரையைச் சமர்ப்பிக்கவும்';

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
  String get loading => 'ஏற்றுகிறது...';

  @override
  String get error => 'ஏதோ தவறு நடந்தது';

  @override
  String get retry => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get confirm => 'உறுதிப்படுத்தவும்';

  @override
  String get delete => 'நீக்கவும்';

  @override
  String get save => 'சேமிக்கவும்';

  @override
  String get edit => 'திருத்தவும்';

  @override
  String get close => 'மூடவும்';

  @override
  String get search => 'தேடவும்';

  @override
  String get noResults => 'முடிவுகள் இல்லை';

  @override
  String get pullToRefresh => 'புதுப்பிக்க இழுக்கவும்';

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
  String get aiSetup => 'AI அமைப்பு';

  @override
  String get aiAnalysis => 'AI பகுப்பாய்வு';

  @override
  String get unlockAi => 'AI பகுப்பாய்வை திறக்கவும்';

  @override
  String get aiTagline => 'சாதனத்தில்  ·  தனிப்பட்ட  ·  இலவசம்';

  @override
  String get deviceCheck => 'சாதன சோதனை';

  @override
  String get chooseModel => 'உங்கள் மாதிரியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get chooseModelSubtitle =>
      'ஒன்று அல்லது அதற்கு மேற்பட்ட மாதிரிகளைப் பதிவிறக்கவும். பின்னர் அவற்றிடையே மாறலாம்.';

  @override
  String get initializingAi => 'AI இயக்க நேரத்தை துவக்குகிறது…';

  @override
  String get modelStorage => 'மாதிரி சேமிப்பு';

  @override
  String get deviceIncompatible =>
      'சாதன AI-க்கு GPU ஆதரவுடன் கூடிய இயற்பியல் சாதனம் தேவை. சிமுலேட்டர்கள் மற்றும் எமுலேட்டர்கள் இணக்கமானவை அல்ல.';

  @override
  String get enhanceDescription => 'மேம்படுத்து';

  @override
  String get bidInsights => 'ஏல நுண்ணறிவு';

  @override
  String get whyThisJob => 'ஏன் இது?';

  @override
  String get suggestPrice => 'விலை பரிந்துரை';

  @override
  String get analyzing => 'பகுப்பாய்வு செய்கிறது…';

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
  String get languagePicker => 'மொழியைத் தேர்ந்தெடுக்கவும்';

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
