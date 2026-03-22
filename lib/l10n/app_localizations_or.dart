// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'ଲଗ୍ ଇନ୍';

  @override
  String get registerTitle => 'ଆକାଉଣ୍ଟ ତିଆରି କରନ୍ତୁ';

  @override
  String get emailLabel => 'ଇମେଲ୍';

  @override
  String get passwordLabel => 'ପାସୱାର୍ଡ';

  @override
  String get confirmPasswordLabel => 'ପାସୱାର୍ଡ ନିଶ୍ଚିତ କରନ୍ତୁ';

  @override
  String get forgotPassword => 'ପାସୱାର୍ଡ ଭୁଲିଗଲେ?';

  @override
  String get loginButton => 'ଲଗ୍ ଇନ୍';

  @override
  String get registerButton => 'ସାଇନ୍ ଅପ୍';

  @override
  String get orContinueWith => 'କିମ୍ବା ଏହା ସହ ଜାରି ରଖନ୍ତୁ';

  @override
  String get dontHaveAccount => 'ଆକାଉଣ୍ଟ ନାହିଁ?';

  @override
  String get alreadyHaveAccount => 'ପୂର୍ବରୁ ଆକାଉଣ୍ଟ ଅଛି?';

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
  String get onboardingTitle1 => 'ଆପଣଙ୍କ ଆଖପାଖରେ କାମ ଖୋଜନ୍ତୁ';

  @override
  String get onboardingSubtitle1 =>
      'ଆପଣଙ୍କ ପଡ଼ୋଶୀରେ ସ୍ଥାନୀୟ ଚାକିରି ଏବଂ ସେବା ଖୋଜନ୍ତୁ।';

  @override
  String get onboardingTitle2 => 'ବୋଲି ଦିଅନ୍ତୁ ଏବଂ ନିଯୁକ୍ତ ହୁଅନ୍ତୁ';

  @override
  String get onboardingSubtitle2 =>
      'ପ୍ରତିଯୋଗିତାମୂଳକ ବୋଲି ଦିଅନ୍ତୁ ଏବଂ ଆପଣଙ୍କ ଦକ୍ଷତା ସହ ମେଳ ଖାଉଥିବା କାମ ପାଇଁ ମନୋନୀତ ହୁଅନ୍ତୁ।';

  @override
  String get onboardingTitle3 => 'ସୁରକ୍ଷିତ ଦେୟ';

  @override
  String get onboardingSubtitle3 =>
      'ଏସ୍କ୍ରୋ-ସମର୍ଥିତ ଦେୟ ନ୍ୟାୟ ଏବଂ ସୁରକ୍ଷିତ ଲେନଦେନ ନିଶ୍ଚିତ କରେ।';

  @override
  String get getStarted => 'ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get skip => 'ଛାଡ଼ନ୍ତୁ';

  @override
  String get next => 'ପରବର୍ତ୍ତୀ';

  @override
  String get newHereCreateAccount => 'New here? Create account';

  @override
  String get roleSelectionTitle => 'ଆପଣଙ୍କ ଭୂମିକା ବାଛନ୍ତୁ';

  @override
  String get roleClient => 'କ୍ଲାଏଣ୍ଟ';

  @override
  String get roleClientDesc => 'ମୋତେ କାମରେ ସାହାଯ୍ୟ ଦରକାର';

  @override
  String get roleWorker => 'କର୍ମୀ';

  @override
  String get roleWorkerDesc => 'ମୁଁ ମୋ ଦକ୍ଷତା ପ୍ରଦାନ କରିବାକୁ ଚାହେଁ';

  @override
  String get continueButton => 'ଜାରି ରଖନ୍ତୁ';

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
  String get homeTab => 'ହୋମ୍';

  @override
  String get jobsTab => 'ଚାକିରି';

  @override
  String get chatTab => 'ଚାଟ୍';

  @override
  String get profileTab => 'ପ୍ରୋଫାଇଲ୍';

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
  String get myJobs => 'ମୋ ଚାକିରି';

  @override
  String get workerFeed => 'ଉପಲବ୍ଧ ଚାକିରି';

  @override
  String get createJob => 'ଚାକିରି ତିଆରି କରନ୍ତୁ';

  @override
  String get postJob => 'ଚାକିରି ପୋଷ୍ଟ କରନ୍ତୁ';

  @override
  String get editJob => 'ଚାକିରି ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get deleteJob => 'ଚାକିରି ବିଲୋପ କରନ୍ତୁ';

  @override
  String get deleteJobConfirm =>
      'ଆପଣ ନିଶ୍ଚିତ ଏହି ଚାକିରି ବିଲୋପ କରିବାକୁ ଚାହୁଁଛନ୍ତି?';

  @override
  String get jobTitle => 'ଶୀର୍ଷକ';

  @override
  String get jobDescription => 'ବିବରଣୀ';

  @override
  String get jobCategory => 'ଶ୍ରେଣୀ';

  @override
  String get jobBudget => 'ବଜେଟ୍';

  @override
  String get jobLocation => 'ସ୍ଥାନ';

  @override
  String get jobDueDate => 'ନିର୍ଦ୍ଧାରିତ ତାରିଖ';

  @override
  String get jobSkills => 'ଆବଶ୍ୟକ ଦକ୍ଷତା';

  @override
  String get jobUrgency => 'ଜରୁରୀତା';

  @override
  String get jobPaymentMode => 'ଦେୟ ମୋଡ୍';

  @override
  String get urgencyNormal => 'ସାଧାରଣ';

  @override
  String get urgencyMedium => 'Medium';

  @override
  String get urgencyUrgent => 'ଜରୁରୀ';

  @override
  String get urgencyAsap => 'ASAP';

  @override
  String get paymentOffline => 'ଅଫଲାଇନ୍';

  @override
  String get paymentEscrow => 'ଏସ୍କ୍ରୋ';

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
  String get statusOpenForBids => 'ବୋଲି ପାଇଁ ଖୋଲା';

  @override
  String get statusInProgress => 'ଚାଲୁ ଅଛି';

  @override
  String get statusCompleted => 'ସମ୍ପୂର୍ଣ୍ଣ';

  @override
  String get statusCancelled => 'ବାତିଲ';

  @override
  String get statusPendingStart => 'ଆରମ୍ଭର ଅପେକ୍ଷାରେ';

  @override
  String get statusPendingRelease => 'ମୁକ୍ତିର ଅପେକ୍ଷାରେ';

  @override
  String get bids => 'ବୋଲି';

  @override
  String get noBids => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ବୋଲି ନାହିଁ';

  @override
  String get placeBid => 'ବୋଲି ଦିଅନ୍ତୁ';

  @override
  String get bidAmount => 'ବୋଲି ରାଶି';

  @override
  String get bidNotes => 'ନୋଟ୍ସ (ଐଚ୍ଛିକ)';

  @override
  String get yourBid => 'ଆପଣଙ୍କ ବୋଲି';

  @override
  String get acceptBid => 'ବୋଲି ଗ୍ରହଣ କରନ୍ତୁ';

  @override
  String get rejectBid => 'ବୋଲି ପ୍ରତ୍ୟାଖ୍ୟାନ କରନ୍ତୁ';

  @override
  String get bidAccepted => 'ବୋଲି ଗୃହୀତ';

  @override
  String get bidRejected => 'ବୋଲି ପ୍ରତ୍ୟାଖ୍ୟାତ';

  @override
  String get bidPending => 'ବିଚାରାଧୀନ';

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
  String get startCode => 'ଷ୍ଟାର୍ଟ କୋଡ୍';

  @override
  String get releaseCode => 'ରିଲିଜ୍ କୋଡ୍';

  @override
  String get generateCodes => 'କୋଡ୍ ତିଆରି କରନ୍ତୁ';

  @override
  String get verifyCode => 'କୋଡ୍ ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get enterCode => 'କୋଡ୍ ପ୍ରବେଶ କରନ୍ତୁ';

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
  String get escrow => 'ଏସ୍କ୍ରୋ';

  @override
  String get lockEscrow => 'ଏସ୍କ୍ରୋ ଲକ୍ କରନ୍ତୁ';

  @override
  String get releaseEscrow => 'ଦେୟ ମୁକ୍ତ କରନ୍ତୁ';

  @override
  String get paymentLocked => 'ଦେୟ ଲକ୍';

  @override
  String get paymentReleased => 'ଦେୟ ମୁକ୍ତ';

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
  String get conversations => 'ବାର୍ତ୍ତା';

  @override
  String get noMessagesYet => 'ଏପର୍ଯ୍ୟନ୍ତ ବାର୍ତ୍ତା ନାହିଁ';

  @override
  String get noMessagesSubtitle =>
      'ଆପଣ କୌଣସି କାର୍ଯ୍ୟ ବିଷୟରେ ଚାଟ୍ ଆରମ୍ଭ କଲେ ଆପଣଙ୍କ ବାର୍ତ୍ତାଳାପ ଏଠାରେ ଦେଖାଯିବ।';

  @override
  String get startConversation => 'ବାର୍ତ୍ତାଳାପ ଆରମ୍ଭ କରନ୍ତୁ!';

  @override
  String get typeMessage => 'ବାର୍ତ୍ତା ଲେଖନ୍ତୁ...';

  @override
  String get typing => 'ଟାଇପ୍ କରୁଛନ୍ତି...';

  @override
  String get newMessages => 'ନୂଆ ବାର୍ତ୍ତା';

  @override
  String get now => 'ଏବେ';

  @override
  String minutesAgo(int count) {
    return '$countମି. ପୂର୍ବେ';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count କର୍ମୀ',
      one: '1 କର୍ମୀ',
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
  String get loadingConversations => 'ବାର୍ତ୍ତାଳାପ ଲୋଡ୍ ହେଉଛି...';

  @override
  String get loadingMessages => 'ବାର୍ତ୍ତା ଲୋଡ୍ ହେଉଛି...';

  @override
  String get profile => 'ପ୍ରୋଫାଇଲ୍';

  @override
  String get editProfile => 'ପ୍ରୋଫାଇଲ୍ ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get fullName => 'ପୂର୍ଣ୍ଣ ନାମ';

  @override
  String get phone => 'ଫୋନ୍ ନମ୍ବର';

  @override
  String get bio => 'ପରିଚୟ';

  @override
  String get skills => 'ଦକ୍ଷତା';

  @override
  String get saveChanges => 'ପରିବର୍ତ୍ତନ ସଞ୍ଚୟ କରନ୍ତୁ';

  @override
  String get logout => 'ଲଗ୍ ଆଉଟ୍';

  @override
  String get logoutConfirm => 'ଆପଣ ଲଗ୍ ଆଉଟ୍ ହେବାକୁ ଚାହୁଁଛନ୍ତି?';

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
  String get settings => 'ସେଟିଂସ୍';

  @override
  String get appearance => 'ରୂପ';

  @override
  String get language => 'ଭାଷା';

  @override
  String get darkMode => 'ଡାର୍କ ମୋଡ୍';

  @override
  String get lightMode => 'ଲାଇଟ୍ ମୋଡ୍';

  @override
  String get systemMode => 'ସିଷ୍ଟମ୍';

  @override
  String get accentColour => 'ଆକ୍ସେଣ୍ଟ ରଙ୍ଗ';

  @override
  String get customColour => 'କଷ୍ଟମ୍';

  @override
  String get preview => 'ପ୍ରାକ୍‌ଦର୍ଶନ';

  @override
  String get previewTitle => 'ଆପଣଙ୍କ ରଙ୍ଗ ବହୁତ ସୁନ୍ଦର!';

  @override
  String get previewSubtitle => 'ଆପଣଙ୍କ ଆପ୍ ଏପରି ଦେଖାଯିବ।';

  @override
  String get primary => 'ପ୍ରାଥମିକ';

  @override
  String get secondary => 'ଦ୍ୱିତୀୟ';

  @override
  String get modeLabel => 'Mode';

  @override
  String get pickAColour => 'Pick a colour';

  @override
  String get systemDefault => 'System default';

  @override
  String get darkModeSubtitle => 'Switch between light and dark themes';

  @override
  String get reviews => 'ସମୀକ୍ଷା';

  @override
  String get leaveReview => 'ସମୀକ୍ଷା ଦିଅନ୍ତୁ';

  @override
  String get noReviews => 'ଏପର୍ଯ୍ୟନ୍ତ ସମୀକ୍ଷା ନାହିଁ';

  @override
  String get rating => 'ରେଟିଂ';

  @override
  String get reviewComment => 'ମନ୍ତବ୍ୟ';

  @override
  String get submitReview => 'ସମୀକ୍ଷା ଦାଖଲ କରନ୍ତୁ';

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
  String get loading => 'ଲୋଡ୍ ହେଉଛି...';

  @override
  String get error => 'କିଛି ଭୁଲ ହୋଇଗଲା';

  @override
  String get retry => 'ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get cancel => 'ବାତିଲ କରନ୍ତୁ';

  @override
  String get confirm => 'ନିଶ୍ଚିତ କରନ୍ତୁ';

  @override
  String get delete => 'ବିଲୋପ କରନ୍ତୁ';

  @override
  String get save => 'ସଞ୍ଚୟ କରନ୍ତୁ';

  @override
  String get edit => 'ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get close => 'ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get search => 'ଖୋଜନ୍ତୁ';

  @override
  String get noResults => 'କୌଣସି ଫଳାଫଳ ମିଳିଲା ନାହିଁ';

  @override
  String get pullToRefresh => 'ରିଫ୍ରେସ୍ ପାଇଁ ଟାଣନ୍ତୁ';

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
  String get aiSetup => 'AI ସେଟଅପ୍';

  @override
  String get aiAnalysis => 'AI ବିଶ୍ଳେଷଣ';

  @override
  String get unlockAi => 'AI ବିଶ୍ଳେଷଣ ଅନଲକ୍ କରନ୍ତୁ';

  @override
  String get aiTagline => 'ଅନ୍-ଡିଭାଇସ୍  ·  ବ୍ୟକ୍ତିଗତ  ·  ମାଗଣା';

  @override
  String get deviceCheck => 'ଡିଭାଇସ୍ ଯାଞ୍ଚ';

  @override
  String get chooseModel => 'ଆପଣଙ୍କ ମଡେଲ ବାଛନ୍ତୁ';

  @override
  String get chooseModelSubtitle =>
      'ଗୋଟିଏ କିମ୍ବା ଅଧିକ ମଡେଲ ଡାଉନଲୋଡ୍ କରନ୍ତୁ। ପରେ ସେଗୁଡ଼ିକ ମଧ୍ୟରେ ବଦଳାଇ ପାରିବେ।';

  @override
  String get initializingAi => 'AI ରନଟାଇମ୍ ଆରମ୍ଭ ହେଉଛି…';

  @override
  String get modelStorage => 'ମଡେଲ ଷ୍ଟୋରେଜ୍';

  @override
  String get deviceIncompatible =>
      'ଅନ୍-ଡିଭାଇସ୍ AI ପାଇଁ GPU ସମର୍ଥନ ଥିବା ଏକ ଭୌତିକ ଡିଭାଇସ୍ ଆବଶ୍ୟକ। ସିମୁଲେଟର୍ ଏବଂ ଏମୁଲେଟର୍ ସୁସଂଗତ ନୁହେଁ।';

  @override
  String get enhanceDescription => 'ଉନ୍ନତ କରନ୍ତୁ';

  @override
  String get bidInsights => 'ବୋଲି ଅନ୍ତର୍ଦୃଷ୍ଟି';

  @override
  String get whyThisJob => 'ଏହା କାହିଁକି?';

  @override
  String get suggestPrice => 'ମୂଲ୍ୟ ସୁଝାବ';

  @override
  String get analyzing => 'ବିଶ୍ଳେଷଣ ହେଉଛି…';

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
  String get languagePicker => 'ଭାଷା ବାଛନ୍ତୁ';

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
