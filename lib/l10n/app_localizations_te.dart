// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'లాగిన్';

  @override
  String get registerTitle => 'ఖాతా సృష్టించండి';

  @override
  String get emailLabel => 'ఇమెయిల్';

  @override
  String get passwordLabel => 'పాస్‌వర్డ్';

  @override
  String get confirmPasswordLabel => 'పాస్‌వర్డ్ నిర్ధారించండి';

  @override
  String get forgotPassword => 'పాస్‌వర్డ్ మర్చిపోయారా?';

  @override
  String get loginButton => 'లాగిన్';

  @override
  String get registerButton => 'సైన్ అప్';

  @override
  String get orContinueWith => 'లేదా దీనితో కొనసాగించండి';

  @override
  String get dontHaveAccount => 'ఖాతా లేదా?';

  @override
  String get alreadyHaveAccount => 'ఇప్పటికే ఖాతా ఉందా?';

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
  String get onboardingTitle1 => 'మీ చుట్టూ ఉన్న పనులను కనుగొనండి';

  @override
  String get onboardingSubtitle1 =>
      'మీ ఇరుగుపొరుగులో స్థానిక ఉద్యోగాలు మరియు సేవలను కనుగొనండి.';

  @override
  String get onboardingTitle2 => 'బిడ్ చేయండి & హైర్ అవ్వండి';

  @override
  String get onboardingSubtitle2 =>
      'పోటీ బిడ్‌లు పెట్టండి మరియు మీ నైపుణ్యాలకు సరిపోయే పనుల కోసం ఎంపిక కండి.';

  @override
  String get onboardingTitle3 => 'సురక్షిత చెల్లింపులు';

  @override
  String get onboardingSubtitle3 =>
      'ఎస్క్రో-మద్దతు చెల్లింపులు న్యాయమైన మరియు సురక్షిత లావాదేవీలను నిర్ధారిస్తాయి.';

  @override
  String get getStarted => 'ప్రారంభించండి';

  @override
  String get skip => 'దాటవేయండి';

  @override
  String get next => 'తదుపరి';

  @override
  String get newHereCreateAccount => 'New here? Create account';

  @override
  String get roleSelectionTitle => 'మీ పాత్రను ఎంచుకోండి';

  @override
  String get roleClient => 'క్లయింట్';

  @override
  String get roleClientDesc => 'నాకు పనులలో సహాయం కావాలి';

  @override
  String get roleWorker => 'వర్కర్';

  @override
  String get roleWorkerDesc => 'నా నైపుణ్యాలను అందించాలనుకుంటున్నాను';

  @override
  String get continueButton => 'కొనసాగించండి';

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
  String get homeTab => 'హోమ్';

  @override
  String get jobsTab => 'ఉద్యోగాలు';

  @override
  String get chatTab => 'చాట్';

  @override
  String get profileTab => 'ప్రొఫైల్';

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
  String get myJobs => 'నా ఉద్యోగాలు';

  @override
  String get workerFeed => 'అందుబాటులో ఉన్న ఉద్యోగాలు';

  @override
  String get createJob => 'ఉద్యోగం సృష్టించండి';

  @override
  String get postJob => 'ఉద్యోగం పోస్ట్ చేయండి';

  @override
  String get editJob => 'ఉద్యోగం సవరించండి';

  @override
  String get deleteJob => 'ఉద్యోగం తొలగించండి';

  @override
  String get deleteJobConfirm => 'మీరు ఈ ఉద్యోగాన్ని తొలగించాలనుకుంటున్నారా?';

  @override
  String get jobTitle => 'శీర్షిక';

  @override
  String get jobDescription => 'వివరణ';

  @override
  String get jobCategory => 'వర్గం';

  @override
  String get jobBudget => 'బడ్జెట్';

  @override
  String get jobLocation => 'స్థానం';

  @override
  String get jobDueDate => 'గడువు తేదీ';

  @override
  String get jobSkills => 'అవసరమైన నైపుణ్యాలు';

  @override
  String get jobUrgency => 'ఆవశ్యకత';

  @override
  String get jobPaymentMode => 'చెల్లింపు విధానం';

  @override
  String get urgencyNormal => 'సాధారణం';

  @override
  String get urgencyMedium => 'Medium';

  @override
  String get urgencyUrgent => 'అత్యవసరం';

  @override
  String get urgencyAsap => 'ASAP';

  @override
  String get paymentOffline => 'ఆఫ్‌లైన్';

  @override
  String get paymentEscrow => 'ఎస్క్రో';

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
  String get statusOpenForBids => 'బిడ్‌ల కోసం తెరిచి ఉంది';

  @override
  String get statusInProgress => 'ప్రగతిలో ఉంది';

  @override
  String get statusCompleted => 'పూర్తయింది';

  @override
  String get statusCancelled => 'రద్దు చేయబడింది';

  @override
  String get statusPendingStart => 'ప్రారంభానికి వేచి ఉంది';

  @override
  String get statusPendingRelease => 'విడుదలకు వేచి ఉంది';

  @override
  String get bids => 'బిడ్‌లు';

  @override
  String get noBids => 'ఇంకా బిడ్‌లు లేవు';

  @override
  String get placeBid => 'బిడ్ పెట్టండి';

  @override
  String get bidAmount => 'బిడ్ మొత్తం';

  @override
  String get bidNotes => 'నోట్స్ (ఐచ్ఛికం)';

  @override
  String get yourBid => 'మీ బిడ్';

  @override
  String get acceptBid => 'బిడ్ ఆమోదించండి';

  @override
  String get rejectBid => 'బిడ్ తిరస్కరించండి';

  @override
  String get bidAccepted => 'బిడ్ ఆమోదించబడింది';

  @override
  String get bidRejected => 'బిడ్ తిరస్కరించబడింది';

  @override
  String get bidPending => 'పెండింగ్';

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
  String get startCode => 'స్టార్ట్ కోడ్';

  @override
  String get releaseCode => 'రిలీజ్ కోడ్';

  @override
  String get generateCodes => 'కోడ్‌లు జనరేట్ చేయండి';

  @override
  String get verifyCode => 'కోడ్ ధృవీకరించండి';

  @override
  String get enterCode => 'కోడ్ ఎంటర్ చేయండి';

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
  String get escrow => 'ఎస్క్రో';

  @override
  String get lockEscrow => 'ఎస్క్రో లాక్ చేయండి';

  @override
  String get releaseEscrow => 'చెల్లింపు విడుదల చేయండి';

  @override
  String get paymentLocked => 'చెల్లింపు లాక్ అయింది';

  @override
  String get paymentReleased => 'చెల్లింపు విడుదలైంది';

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
  String get conversations => 'సందేశాలు';

  @override
  String get noMessagesYet => 'ఇంకా సందేశాలు లేవు';

  @override
  String get noMessagesSubtitle =>
      'మీరు ఒక పని గురించి చాట్ ప్రారంభించినప్పుడు మీ సంభాషణలు ఇక్కడ కనిపిస్తాయి.';

  @override
  String get startConversation => 'సంభాషణ ప్రారంభించండి!';

  @override
  String get typeMessage => 'సందేశం టైప్ చేయండి...';

  @override
  String get typing => 'టైప్ చేస్తోంది...';

  @override
  String get newMessages => 'కొత్త సందేశాలు';

  @override
  String get now => 'ఇప్పుడు';

  @override
  String minutesAgo(int count) {
    return '$countని. క్రితం';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count వర్కర్లు',
      one: '1 వర్కర్',
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
  String get loadingConversations => 'సంభాషణలు లోడ్ అవుతున్నాయి...';

  @override
  String get loadingMessages => 'సందేశాలు లోడ్ అవుతున్నాయి...';

  @override
  String get profile => 'ప్రొఫైల్';

  @override
  String get editProfile => 'ప్రొఫైల్ సవరించండి';

  @override
  String get fullName => 'పూర్తి పేరు';

  @override
  String get phone => 'ఫోన్ నంబర్';

  @override
  String get bio => 'పరిచయం';

  @override
  String get skills => 'నైపుణ్యాలు';

  @override
  String get saveChanges => 'మార్పులు సేవ్ చేయండి';

  @override
  String get logout => 'లాగ్ అవుట్';

  @override
  String get logoutConfirm => 'మీరు లాగ్ అవుట్ కావాలనుకుంటున్నారా?';

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
  String get settings => 'సెట్టింగ్‌లు';

  @override
  String get appearance => 'రూపం';

  @override
  String get language => 'భాష';

  @override
  String get darkMode => 'డార్క్ మోడ్';

  @override
  String get lightMode => 'లైట్ మోడ్';

  @override
  String get systemMode => 'సిస్టమ్';

  @override
  String get accentColour => 'యాక్సెంట్ రంగు';

  @override
  String get customColour => 'అనుకూలం';

  @override
  String get preview => 'ప్రివ్యూ';

  @override
  String get previewTitle => 'మీ రంగులు అద్భుతంగా ఉన్నాయి!';

  @override
  String get previewSubtitle => 'మీ యాప్ ఇలా కనిపిస్తుంది.';

  @override
  String get primary => 'ప్రాథమిక';

  @override
  String get secondary => 'ద్వితీయ';

  @override
  String get modeLabel => 'Mode';

  @override
  String get pickAColour => 'Pick a colour';

  @override
  String get systemDefault => 'System default';

  @override
  String get darkModeSubtitle => 'Switch between light and dark themes';

  @override
  String get reviews => 'సమీక్షలు';

  @override
  String get leaveReview => 'సమీక్ష ఇవ్వండి';

  @override
  String get noReviews => 'ఇంకా సమీక్షలు లేవు';

  @override
  String get rating => 'రేటింగ్';

  @override
  String get reviewComment => 'వ్యాఖ్య';

  @override
  String get submitReview => 'సమీక్ష సమర్పించండి';

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
  String get loading => 'లోడ్ అవుతోంది...';

  @override
  String get error => 'ఏదో తప్పు జరిగింది';

  @override
  String get retry => 'మళ్ళీ ప్రయత్నించండి';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get cancel => 'రద్దు చేయండి';

  @override
  String get confirm => 'నిర్ధారించండి';

  @override
  String get delete => 'తొలగించండి';

  @override
  String get save => 'సేవ్ చేయండి';

  @override
  String get edit => 'సవరించండి';

  @override
  String get close => 'మూసివేయండి';

  @override
  String get search => 'వెతకండి';

  @override
  String get noResults => 'ఫలితాలు కనుగొనబడలేదు';

  @override
  String get pullToRefresh => 'రిఫ్రెష్ కోసం లాగండి';

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
  String get aiSetup => 'AI సెటప్';

  @override
  String get aiAnalysis => 'AI విశ్లేషణ';

  @override
  String get unlockAi => 'AI విశ్లేషణ అన్‌లాక్ చేయండి';

  @override
  String get aiTagline => 'ఆన్-డివైస్  ·  ప్రైవేట్  ·  ఉచితం';

  @override
  String get deviceCheck => 'డివైస్ తనిఖీ';

  @override
  String get chooseModel => 'మీ మోడల్ ఎంచుకోండి';

  @override
  String get chooseModelSubtitle =>
      'ఒకటి లేదా అంతకంటే ఎక్కువ మోడల్‌లను డౌన్‌లోడ్ చేయండి. తర్వాత వాటి మధ్య మారవచ్చు.';

  @override
  String get initializingAi => 'AI రన్‌టైమ్ ప్రారంభమవుతోంది…';

  @override
  String get modelStorage => 'మోడల్ స్టోరేజ్';

  @override
  String get deviceIncompatible =>
      'ఆన్-డివైస్ AI కి GPU మద్దతు ఉన్న భౌతిక పరికరం అవసరం. సిమ్యులేటర్లు మరియు ఎమ్యులేటర్లు అనుకూలం కావు.';

  @override
  String get enhanceDescription => 'మెరుగుపరచండి';

  @override
  String get bidInsights => 'బిడ్ అంతర్దృష్టి';

  @override
  String get whyThisJob => 'ఇది ఎందుకు?';

  @override
  String get suggestPrice => 'ధర సూచన';

  @override
  String get analyzing => 'విశ్లేషిస్తోంది…';

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
  String get languagePicker => 'భాషను ఎంచుకోండి';

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
