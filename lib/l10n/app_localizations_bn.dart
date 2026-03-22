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
  String get loginTitle => 'লগ ইন করুন';

  @override
  String get registerTitle => 'অ্যাকাউন্ট তৈরি করুন';

  @override
  String get emailLabel => 'ইমেইল';

  @override
  String get passwordLabel => 'পাসওয়ার্ড';

  @override
  String get confirmPasswordLabel => 'পাসওয়ার্ড নিশ্চিত করুন';

  @override
  String get forgotPassword => 'পাসওয়ার্ড ভুলে গেছেন?';

  @override
  String get loginButton => 'লগ ইন করুন';

  @override
  String get registerButton => 'সাইন আপ করুন';

  @override
  String get orContinueWith => 'অথবা এর মাধ্যমে চালিয়ে যান';

  @override
  String get dontHaveAccount => 'অ্যাকাউন্ট নেই?';

  @override
  String get alreadyHaveAccount => 'ইতিমধ্যে অ্যাকাউন্ট আছে?';

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
  String get onboardingTitle1 => 'আপনার আশেপাশে কাজ খুঁজুন';

  @override
  String get onboardingSubtitle1 =>
      'আপনার পাড়ায় স্থানীয় চাকরি এবং পরিষেবা খুঁজুন।';

  @override
  String get onboardingTitle2 => 'বিড করুন এবং নিয়োগ পান';

  @override
  String get onboardingSubtitle2 =>
      'প্রতিযোগিতামূলক বিড দিন এবং আপনার দক্ষতার সাথে মানানসই কাজে নির্বাচিত হন।';

  @override
  String get onboardingTitle3 => 'নিরাপদ পেমেন্ট';

  @override
  String get onboardingSubtitle3 =>
      'এস্ক্রো-সমর্থিত পেমেন্ট ন্যায্য এবং নিরাপদ লেনদেন নিশ্চিত করে।';

  @override
  String get getStarted => 'শুরু করুন';

  @override
  String get skip => 'এড়িয়ে যান';

  @override
  String get next => 'পরবর্তী';

  @override
  String get newHereCreateAccount => 'New here? Create account';

  @override
  String get roleSelectionTitle => 'আপনার ভূমিকা বেছে নিন';

  @override
  String get roleClient => 'ক্লায়েন্ট';

  @override
  String get roleClientDesc => 'আমার কাজে সাহায্য দরকার';

  @override
  String get roleWorker => 'কর্মী';

  @override
  String get roleWorkerDesc => 'আমি আমার দক্ষতা প্রদান করতে চাই';

  @override
  String get continueButton => 'চালিয়ে যান';

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
  String get homeTab => 'হোম';

  @override
  String get jobsTab => 'চাকরি';

  @override
  String get chatTab => 'চ্যাট';

  @override
  String get profileTab => 'প্রোফাইল';

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
  String get myJobs => 'আমার চাকরি';

  @override
  String get workerFeed => 'উপলব্ধ চাকরি';

  @override
  String get createJob => 'চাকরি তৈরি করুন';

  @override
  String get postJob => 'চাকরি পোস্ট করুন';

  @override
  String get editJob => 'চাকরি সম্পাদনা করুন';

  @override
  String get deleteJob => 'চাকরি মুছুন';

  @override
  String get deleteJobConfirm => 'আপনি কি এই চাকরি মুছতে চান?';

  @override
  String get jobTitle => 'শিরোনাম';

  @override
  String get jobDescription => 'বিবরণ';

  @override
  String get jobCategory => 'বিভাগ';

  @override
  String get jobBudget => 'বাজেট';

  @override
  String get jobLocation => 'অবস্থান';

  @override
  String get jobDueDate => 'শেষ তারিখ';

  @override
  String get jobSkills => 'প্রয়োজনীয় দক্ষতা';

  @override
  String get jobUrgency => 'জরুরিতা';

  @override
  String get jobPaymentMode => 'পেমেন্ট মোড';

  @override
  String get urgencyNormal => 'সাধারণ';

  @override
  String get urgencyMedium => 'Medium';

  @override
  String get urgencyUrgent => 'জরুরি';

  @override
  String get urgencyAsap => 'ASAP';

  @override
  String get paymentOffline => 'অফলাইন';

  @override
  String get paymentEscrow => 'এস্ক্রো';

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
  String get statusOpenForBids => 'বিডের জন্য খোলা';

  @override
  String get statusInProgress => 'চলমান';

  @override
  String get statusCompleted => 'সম্পন্ন';

  @override
  String get statusCancelled => 'বাতিল';

  @override
  String get statusPendingStart => 'শুরুর অপেক্ষায়';

  @override
  String get statusPendingRelease => 'মুক্তির অপেক্ষায়';

  @override
  String get bids => 'বিড';

  @override
  String get noBids => 'এখনও কোনো বিড নেই';

  @override
  String get placeBid => 'বিড দিন';

  @override
  String get bidAmount => 'বিডের পরিমাণ';

  @override
  String get bidNotes => 'নোট (ঐচ্ছিক)';

  @override
  String get yourBid => 'আপনার বিড';

  @override
  String get acceptBid => 'বিড গ্রহণ করুন';

  @override
  String get rejectBid => 'বিড প্রত্যাখ্যান করুন';

  @override
  String get bidAccepted => 'বিড গৃহীত';

  @override
  String get bidRejected => 'বিড প্রত্যাখ্যাত';

  @override
  String get bidPending => 'মুলতুবি';

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
  String get startCode => 'স্টার্ট কোড';

  @override
  String get releaseCode => 'রিলিজ কোড';

  @override
  String get generateCodes => 'কোড তৈরি করুন';

  @override
  String get verifyCode => 'কোড যাচাই করুন';

  @override
  String get enterCode => 'কোড লিখুন';

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
  String get escrow => 'এস্ক্রো';

  @override
  String get lockEscrow => 'এস্ক্রো লক করুন';

  @override
  String get releaseEscrow => 'পেমেন্ট ছাড় করুন';

  @override
  String get paymentLocked => 'পেমেন্ট লক';

  @override
  String get paymentReleased => 'পেমেন্ট ছাড়';

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
  String get conversations => 'বার্তা';

  @override
  String get noMessagesYet => 'এখনও কোনো বার্তা নেই';

  @override
  String get noMessagesSubtitle =>
      'আপনি কোনো কাজ নিয়ে চ্যাট শুরু করলে আপনার কথোপকথন এখানে দেখা যাবে।';

  @override
  String get startConversation => 'কথোপকথন শুরু করুন!';

  @override
  String get typeMessage => 'বার্তা লিখুন...';

  @override
  String get typing => 'টাইপ করছে...';

  @override
  String get newMessages => 'নতুন বার্তা';

  @override
  String get now => 'এখন';

  @override
  String minutesAgo(int count) {
    return '$countমি. আগে';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count কর্মী',
      one: '1 কর্মী',
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
  String get loadingConversations => 'কথোপকথন লোড হচ্ছে...';

  @override
  String get loadingMessages => 'বার্তা লোড হচ্ছে...';

  @override
  String get profile => 'প্রোফাইল';

  @override
  String get editProfile => 'প্রোফাইল সম্পাদনা করুন';

  @override
  String get fullName => 'পূর্ণ নাম';

  @override
  String get phone => 'ফোন নম্বর';

  @override
  String get bio => 'পরিচিতি';

  @override
  String get skills => 'দক্ষতা';

  @override
  String get saveChanges => 'পরিবর্তন সংরক্ষণ করুন';

  @override
  String get logout => 'লগ আউট';

  @override
  String get logoutConfirm => 'আপনি কি লগ আউট করতে চান?';

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
  String get settings => 'সেটিংস';

  @override
  String get appearance => 'চেহারা';

  @override
  String get language => 'ভাষা';

  @override
  String get darkMode => 'ডার্ক মোড';

  @override
  String get lightMode => 'লাইট মোড';

  @override
  String get systemMode => 'সিস্টেম';

  @override
  String get accentColour => 'অ্যাক্সেন্ট রঙ';

  @override
  String get customColour => 'কাস্টম';

  @override
  String get preview => 'প্রিভিউ';

  @override
  String get previewTitle => 'আপনার রঙগুলি দুর্দান্ত দেখাচ্ছে!';

  @override
  String get previewSubtitle => 'আপনার অ্যাপ এরকম দেখাবে।';

  @override
  String get primary => 'প্রাথমিক';

  @override
  String get secondary => 'মাধ্যমিক';

  @override
  String get modeLabel => 'Mode';

  @override
  String get pickAColour => 'Pick a colour';

  @override
  String get systemDefault => 'System default';

  @override
  String get darkModeSubtitle => 'Switch between light and dark themes';

  @override
  String get reviews => 'রিভিউ';

  @override
  String get leaveReview => 'রিভিউ দিন';

  @override
  String get noReviews => 'এখনও কোনো রিভিউ নেই';

  @override
  String get rating => 'রেটিং';

  @override
  String get reviewComment => 'মন্তব্য';

  @override
  String get submitReview => 'রিভিউ জমা দিন';

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
  String get loading => 'লোড হচ্ছে...';

  @override
  String get error => 'কিছু ভুল হয়েছে';

  @override
  String get retry => 'আবার চেষ্টা করুন';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get cancel => 'বাতিল';

  @override
  String get confirm => 'নিশ্চিত করুন';

  @override
  String get delete => 'মুছুন';

  @override
  String get save => 'সংরক্ষণ করুন';

  @override
  String get edit => 'সম্পাদনা করুন';

  @override
  String get close => 'বন্ধ করুন';

  @override
  String get search => 'অনুসন্ধান করুন';

  @override
  String get noResults => 'কোনো ফলাফল পাওয়া যায়নি';

  @override
  String get pullToRefresh => 'রিফ্রেশ করতে টানুন';

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
  String get aiSetup => 'AI সেটআপ';

  @override
  String get aiAnalysis => 'AI বিশ্লেষণ';

  @override
  String get unlockAi => 'AI বিশ্লেষণ আনলক করুন';

  @override
  String get aiTagline => 'ডিভাইসে  ·  ব্যক্তিগত  ·  বিনামূল্যে';

  @override
  String get deviceCheck => 'ডিভাইস পরীক্ষা';

  @override
  String get chooseModel => 'আপনার মডেল বেছে নিন';

  @override
  String get chooseModelSubtitle =>
      'এক বা একাধিক মডেল ডাউনলোড করুন। পরে এদের মধ্যে পরিবর্তন করতে পারবেন।';

  @override
  String get initializingAi => 'AI রানটাইম শুরু হচ্ছে…';

  @override
  String get modelStorage => 'মডেল স্টোরেজ';

  @override
  String get deviceIncompatible =>
      'ডিভাইস AI-এর জন্য GPU সমর্থন সহ একটি ফিজিক্যাল ডিভাইস প্রয়োজন। সিমুলেটর এবং এমুলেটর সামঞ্জস্যপূর্ণ নয়।';

  @override
  String get enhanceDescription => 'উন্নত করুন';

  @override
  String get bidInsights => 'বিড অন্তর্দৃষ্টি';

  @override
  String get whyThisJob => 'এটি কেন?';

  @override
  String get suggestPrice => 'মূল্য পরামর্শ';

  @override
  String get analyzing => 'বিশ্লেষণ করা হচ্ছে…';

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
  String get languagePicker => 'ভাষা নির্বাচন করুন';

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
