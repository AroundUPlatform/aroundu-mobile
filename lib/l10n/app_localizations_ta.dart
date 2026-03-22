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
  String get welcomeBack => 'மீண்டும் வருக';

  @override
  String get loginSubtitle => 'உங்கள் AroundU கணக்கில் உள்நுழையவும்';

  @override
  String get noAccountYet => 'கணக்கு இல்லையா?';

  @override
  String get createOne => 'உருவாக்கு';

  @override
  String get emailRequired => 'மின்னஞ்சல் தேவை';

  @override
  String get enterValidEmail => 'சரியான மின்னஞ்சல் உள்ளிடவும்';

  @override
  String get passwordRequired => 'கடவுச்சொல் தேவை';

  @override
  String get minimumSixCharacters => 'குறைந்தது 6 எழுத்துகள்';

  @override
  String get unableToLogin => 'உள்நுழைவு தோல்வி';

  @override
  String fieldRequired(String field) {
    return '$field புலம் தேவை';
  }

  @override
  String get enterValidPhone => 'சரியான தொலைபேசி எண் உள்ளிடவும்';

  @override
  String get unableToRegister => 'பதிவு தோல்வி';

  @override
  String get registrationSuccess => 'பதிவு வெற்றி';

  @override
  String get registerSubtitle => 'வழங்குநர் அல்லது தொழிலாளராக பதிவு செய்யவும்';

  @override
  String get roleLabel => 'பங்கு';

  @override
  String get roleJobProvider => 'பணி வழங்குநர்';

  @override
  String get roleJobWorker => 'தொழிலாளர்';

  @override
  String get countryLabel => 'நாடு';

  @override
  String get currencyLabel => 'நாணயம்';

  @override
  String get cityLabel => 'நகரம்';

  @override
  String get postalCodeLabel => 'அஞ்சல் குறியீடு';

  @override
  String get areaOptionalLabel => 'பகுதி (விரும்பினால்)';

  @override
  String get fullAddressOptionalLabel => 'முழு முகவரி (விரும்பினால்)';

  @override
  String get alreadyRegistered => 'ஏற்கனவே பதிவு செய்துள்ளீர்களா?';

  @override
  String get logInLink => 'உள்நுழை';

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
  String get newHereCreateAccount => 'புதியவரா? கணக்கு உருவாக்கவும்';

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
      'AroundU ஐ எப்படிப் பயன்படுத்த விரும்புகிறீர்கள்?';

  @override
  String signedInAs(String email) {
    return '$email ஆக உள்நுழைந்துள்ளீர்கள்';
  }

  @override
  String get roleProviderDesc =>
      'பணிகளைப் பதிவிட்டு தகுதியான தொழிலாளர்களைக் கண்டறியுங்கள்';

  @override
  String get roleWorkerDescAlt =>
      'பணிகளைக் கண்டறிந்து திறன்களால் சம்பாதிக்கவும்';

  @override
  String get homeTab => 'முகப்பு';

  @override
  String get jobsTab => 'வேலைகள்';

  @override
  String get chatTab => 'உரையாடல்';

  @override
  String get profileTab => 'சுயவிவரம்';

  @override
  String get providerTabMyTasks => 'என் பணிகள்';

  @override
  String get providerTabPostTask => 'பணி பதிவிடு';

  @override
  String get tasksNavLabel => 'பணிகள்';

  @override
  String get postNavLabel => 'பதிவிடு';

  @override
  String get workerTabTaskFeed => 'பணி ஊட்டம்';

  @override
  String get feedNavLabel => 'ஊட்டம்';

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
  String get urgencyMedium => 'நடுத்தரம்';

  @override
  String get urgencyUrgent => 'அவசரம்';

  @override
  String get urgencyAsap => 'உடனடியாக';

  @override
  String get paymentOffline => 'ஆஃப்லைன்';

  @override
  String get paymentEscrow => 'எஸ்க்ரோ';

  @override
  String get paymentMethod => 'செலுத்தும் முறை';

  @override
  String get payInCash => 'ரொக்கமாகச் செலுத்தவும்';

  @override
  String get secureEscrow => 'பாதுகாப்பான எஸ்க்ரோ';

  @override
  String get filterAll => 'அனைத்தும்';

  @override
  String get filterOpen => 'திறந்தது';

  @override
  String get filterActive => 'செயலில்';

  @override
  String get filterInProgress => 'நடப்பில்';

  @override
  String get filterCompleted => 'முடிந்தது';

  @override
  String get filterCancelled => 'ரத்துசெய்யப்பட்டது';

  @override
  String get filterExpired => 'காலாவதியானது';

  @override
  String get filterNearby => 'அருகில்';

  @override
  String get filterAllMine => 'என் அனைத்தும்';

  @override
  String get filterBidPlaced => 'ஏலம் இடப்பட்டது';

  @override
  String get filterAccepted => 'ஏற்கப்பட்டது';

  @override
  String get noTasksPostedYet => 'பதிவிடப்பட்ட பணி இல்லை';

  @override
  String get noOpenTasks => 'திறந்த பணி இல்லை';

  @override
  String get noActiveTasks => 'செயலில் பணி இல்லை';

  @override
  String get noTasksInProgress => 'நடப்பில் பணி இல்லை';

  @override
  String get noCompletedTasks => 'முடிந்த பணி இல்லை';

  @override
  String get noCancelledTasks => 'ரத்துசெய்யப்பட்ட பணி இல்லை';

  @override
  String get noExpiredTasks => 'காலாவதியான பணி இல்லை';

  @override
  String get unableToLoadTasks => 'பணிகள் ஏற்றம் தோல்வி';

  @override
  String get noNearbyJobs => 'அருகில் வேலை இல்லை';

  @override
  String get noJobsYetBid => 'வேலை இல்லை — ஏலம் இடுங்கள்';

  @override
  String get noPendingBids => 'நிலுவையில் ஏலம் இல்லை';

  @override
  String get noAcceptedJobs => 'ஏற்கப்பட்ட வேலை இல்லை';

  @override
  String get noJobsInProgress => 'நடப்பில் வேலை இல்லை';

  @override
  String get noCompletedJobsYet => 'முடிந்த வேலை இல்லை';

  @override
  String get noCancelledJobs => 'ரத்துசெய்யப்பட்ட வேலை இல்லை';

  @override
  String get noExpiredJobs => 'காலாவதியான வேலை இல்லை';

  @override
  String get pullDownToRefreshCheck =>
      'புதிய பணிகளைச் சரிபார்க்க கீழே இழுக்கவும்';

  @override
  String get unableToLoadJobs => 'வேலைகள் ஏற்றம் தோல்வி';

  @override
  String get postNewTask => 'புதிய பணி';

  @override
  String get postTaskSubtitle =>
      'துல்லியமான சலுகைகளுக்கு தெளிவான விவரங்களைச் சேர்க்கவும்';

  @override
  String get taskTitleLabel => 'பணி தலைப்பு';

  @override
  String get savingLocation => 'இடம் சேமிக்கப்படுகிறது';

  @override
  String get tapToSelectLocation => 'இடத்தைத் தேர்ந்தெடுக்க தட்டவும்';

  @override
  String get postTaskButton => 'பணி பதிவிடு';

  @override
  String get addSkillWarning => 'குறைந்தது ஒரு தேவையான திறனை சேர்க்கவும்';

  @override
  String get enterValidBudget => 'சரியான பட்ஜெட் உள்ளிடவும்';

  @override
  String get setJobLocationWarning => 'பணி இடத்தை அமைக்கவும்';

  @override
  String get jobPostedSuccess => 'பணி பதிவிடப்பட்டது';

  @override
  String get failedToPostJob => 'பதிவு தோல்வி';

  @override
  String get failedToSaveLocation => 'இடம் சேமிப்பு தோல்வி';

  @override
  String get unableToLoadJobWorkflow => 'பணிப்பாய்வு ஏற்றம் தோல்வி';

  @override
  String get unknownError => 'தெரியாத பிழை';

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
  String get offersSection => 'சலுகைகள்';

  @override
  String get noOffersReceivedYet => 'சலுகைகள் வரவில்லை';

  @override
  String get offerAccepted => 'சலுகை ஏற்கப்பட்டது';

  @override
  String get offerRejected => 'சலுகை நிராகரிக்கப்பட்டது';

  @override
  String get offerPending => 'சலுகை நிலுவையில்';

  @override
  String workerNumber(int id) {
    return 'தொழிலாளர் #$id';
  }

  @override
  String get acceptThisOffer => 'இந்த சலுகையை ஏற்கவும்';

  @override
  String get messageWorker => 'தொழிலாளருக்குச் செய்தி';

  @override
  String get offerAcceptedSnack => 'சலுகை ஏற்கப்பட்டது!';

  @override
  String get yourOffer => 'உங்கள் சலுகை';

  @override
  String get bidStatusSelected => 'தேர்ந்தெடுக்கப்பட்டது';

  @override
  String get bidStatusRejected => 'நிராகரிக்கப்பட்டது';

  @override
  String get bidStatusPending => 'நிலுவையில்';

  @override
  String get placeYourOffer => 'உங்கள் சலுகையை வைக்கவும்';

  @override
  String get yourOfferAmount => 'சலுகைத் தொகை';

  @override
  String get messageToClientOptional =>
      'வாடிக்கையாளருக்குச் செய்தி (விரும்பினால்)';

  @override
  String get addPartnerOptional => 'கூட்டாளி சேர்க்கவும் (விரும்பினால்)';

  @override
  String get partnerNameLabel => 'கூட்டாளர் பெயர்';

  @override
  String get partnerFeeLabel => 'கூட்டாளர் கட்டணம்';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'கூட்டாளர் கட்டணம்: $amount';
  }

  @override
  String get submitOffer => 'சலுகையை சமர்ப்பி';

  @override
  String get enterValidOfferAmount => 'சரியான தொகை உள்ளிடவும்';

  @override
  String get offerSubmittedSuccess => 'சலுகை சமர்ப்பிக்கப்பட்டது';

  @override
  String get clientSelectedYourOffer =>
      'வாடிக்கையாளர் உங்கள் சலுகையைத் தேர்ந்தெடுத்தார்';

  @override
  String get handshakeHint => 'தொடங்க இருவரும் குறியீட்டைப் பகிர வேண்டும்';

  @override
  String get handshakeAccepted => 'கைகுலுக்கல் ஏற்கப்பட்டது';

  @override
  String get handshakeDeclined => 'கைகுலுக்கல் நிராகரிக்கப்பட்டது';

  @override
  String get acceptJob => 'வேலையை ஏற்கவும்';

  @override
  String get decline => 'மறு';

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
  String get generateStartCode => 'தொடக்கக் குறியீடு உருவாக்கு';

  @override
  String get startCodeCopied => 'தொடக்கக் குறியீடு நகலெடுக்கப்பட்டது';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return '$amount எஸ்க்ரோவில் ஒதுக்கு';
  }

  @override
  String get releaseCodeCopied => 'குறியீடு நகலெடுக்கப்பட்டது';

  @override
  String get releaseCodeHint => 'வெளியீட்டுக் குறியீட்டை உள்ளிடவும்';

  @override
  String get regenerateCode => 'மீண்டும் உருவாக்கு';

  @override
  String get generateReleaseCode => 'வெளியீட்டுக் குறியீடு உருவாக்கு';

  @override
  String get taskCodesGenerated => 'குறியீடுகள் உருவாக்கப்பட்டன';

  @override
  String get newReleaseCodeGenerated =>
      'புதிய வெளியீட்டுக் குறியீடு உருவாக்கப்பட்டது';

  @override
  String get readyToBegin => 'தொடங்கத் தயார்';

  @override
  String get startCodeHint => 'தொடக்கக் குறியீட்டை உள்ளிடவும்';

  @override
  String get verifyAndStartWork => 'சரிபார்த்து தொடங்கு';

  @override
  String get startCodeVerified => 'தொடக்கக் குறியீடு சரிபார்க்கப்பட்டது';

  @override
  String get enterStartCodeFirst => 'முதலில் தொடக்கக் குறியீட்டை உள்ளிடவும்';

  @override
  String get workInProgress => 'வேலை நடப்பில்';

  @override
  String get releaseCodePrompt => 'கட்டணத்தை வெளியிட குறியீட்டை உள்ளிடவும்';

  @override
  String get releaseCodeHelper =>
      'வேலை முடிந்ததும் இந்தக் குறியீட்டை தொழிலாளருக்கு கொடுங்கள்';

  @override
  String get confirmWorkCompleted => 'வேலை முடிந்ததை உறுதிப்படுத்தவும்';

  @override
  String get workConfirmedPaymentReleased =>
      'வேலை உறுதிப்படுத்தப்பட்டது — கட்டணம் வெளியிடப்பட்டது!';

  @override
  String get enterReleaseCodeWarning => 'வெளியீட்டுக் குறியீட்டை உள்ளிடவும்';

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
  String get paymentSafelyReserved => 'கட்டணம் பாதுகாப்பாக ஒதுக்கப்பட்டது';

  @override
  String get cancelTask => 'பணியை ரத்துசெய்';

  @override
  String get taskCancelled => 'பணி ரத்துசெய்யப்பட்டது';

  @override
  String get deleteTask => 'பணியை நீக்கு';

  @override
  String get deleteTaskTitle => 'பணியை நீக்கவா?';

  @override
  String get deleteTaskConfirm => 'இந்தப் பணியை நீக்கவா?';

  @override
  String get taskDeleted => 'பணி நீக்கப்பட்டது';

  @override
  String get typeFirstMessage => 'முதல் செய்தியை உள்ளிடவும்';

  @override
  String get send => 'அனுப்பு';

  @override
  String get failedToSendMessage => 'செய்தி அனுப்புதல் தோல்வி';

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
  String get chatToday => 'இன்று';

  @override
  String get chatYesterday => 'நேற்று';

  @override
  String chatYouPrefix(String message) {
    return 'நீங்கள்: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'பதில்: $jobTitle';
  }

  @override
  String get noConversationsYet => 'உரையாடல் இல்லை';

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
  String get myProfile => 'என் சுயவிவரம்';

  @override
  String get unknown => 'தெரியாத';

  @override
  String get experienceLabel => 'அனுபவம்';

  @override
  String get statusLabel => 'நிலை';

  @override
  String get notSet => 'அமைக்கப்படவில்லை';

  @override
  String get onDuty => 'பணியில்';

  @override
  String get offDuty => 'பணியில் இல்லை';

  @override
  String yearsCount(int count) {
    return '$count ஆண்டுகள்';
  }

  @override
  String get themeAndColors => 'தீம் & வண்ணங்கள்';

  @override
  String get aiModelLabel => 'AI மாதிரி';

  @override
  String get availableForWork => 'வேலைக்கு கிடைக்கிறது';

  @override
  String get visibleToClients => 'வாடிக்கையாளர்களுக்குத் தெரிகிறது';

  @override
  String get currentlyOffDuty => 'தற்போது பணியில் இல்லை';

  @override
  String get myReviews => 'என் மதிப்புரைகள்';

  @override
  String get deleteAccount => 'கணக்கை நீக்கு';

  @override
  String get deleteAccountConfirm => 'உறுதியா? இதை மீட்க முடியாது.';

  @override
  String get couldNotDeleteAccount => 'கணக்கை நீக்க முடியவில்லை';

  @override
  String get profilePhotoUpdated => 'சுயவிவரப் படம் புதுப்பிக்கப்பட்டது';

  @override
  String get profileUpdated => 'சுயவிவரம் புதுப்பிக்கப்பட்டது';

  @override
  String get nameLabel => 'பெயர்';

  @override
  String get profileImageUrl => 'சுயவிவரப் படம் URL';

  @override
  String get yearsOfExperience => 'அனுபவ ஆண்டுகள்';

  @override
  String get certificationsLabel => 'சான்றிதழ்கள்';

  @override
  String get payoutAccountLabel => 'வெளியீட்டுக் கணக்கு';

  @override
  String get onDutySubtitle => 'புதிய பணிகளுக்கு நீங்கள் தெரிகிறீர்கள்';

  @override
  String get loadingProfile => 'சுயவிவரம் ஏற்றப்படுகிறது';

  @override
  String get availabilityLabel => 'கிடைக்கும் நிலை';

  @override
  String get memberLabel => 'உறுப்பினர்';

  @override
  String get available => 'கிடைக்கிறது';

  @override
  String get unavailable => 'கிடைக்கவில்லை';

  @override
  String get viewAllReviews => 'அனைத்து மதிப்புரைகளையும் காண்க';

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
  String get modeLabel => 'முறை';

  @override
  String get pickAColour => 'நிறம் தேர்ந்தெடு';

  @override
  String get systemDefault => 'கணினி இயல்புநிலை';

  @override
  String get darkModeSubtitle =>
      'கணினி, ஒளி அல்லது இருள் பயன்முறையைத் தேர்ந்தெடுக்கவும்';

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
    return '$name எப்படி இருந்தார்?';
  }

  @override
  String get feedbackHelps => 'உங்கள் கருத்து உதவுகிறது';

  @override
  String get thanksForReview => 'மதிப்புரைக்கு நன்றி';

  @override
  String get shareExperienceHint => 'உங்கள் அனுபவத்தைப் பகிரவும்';

  @override
  String get ratingExcellent => 'சிறந்த';

  @override
  String get ratingGreat => 'மிக நல்ல';

  @override
  String get ratingGood => 'நல்ல';

  @override
  String get ratingFair => 'சராசரி';

  @override
  String get ratingPoor => 'மோசம்';

  @override
  String get tapToRate => 'மதிப்பிட தட்டவும்';

  @override
  String workerReviewsTitle(String name) {
    return '$name மதிப்புரைகள்';
  }

  @override
  String get loadingReviews => 'மதிப்புரைகள் ஏற்றப்படுகின்றன';

  @override
  String get noReviewsSubtitle => 'மதிப்புரை இல்லை';

  @override
  String get allReviews => 'அனைத்து மதிப்புரைகள்';

  @override
  String reviewCount(int count) {
    return '$count மதிப்புரைகள்';
  }

  @override
  String get anonymous => 'அநாமதேய';

  @override
  String get loading => 'ஏற்றுகிறது...';

  @override
  String get error => 'ஏதோ தவறு நடந்தது';

  @override
  String get retry => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get tryAgain => 'மீண்டும் முயற்சி';

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
  String get pullDownToRefresh => 'புதுப்பிக்க கீழே இழுக்கவும்';

  @override
  String get yes => 'ஆம்';

  @override
  String get required => 'தேவை';

  @override
  String get stop => 'நிறுத்து';

  @override
  String get clear => 'அழி';

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
  String get aiCapabilities => 'AI திறன்கள்';

  @override
  String get onDeviceAi => 'சாதனத்தில் AI';

  @override
  String get aiTaglineSetup => 'தனிப்பட்ட · ஆஃப்லைன் · இலவசம்';

  @override
  String get aiSetupDescription =>
      'பணிகள் மற்றும் சலுகைகளுக்கு புத்திசாலி பரிந்துரைகள் பெறுங்கள்';

  @override
  String get physicalDevice => 'உடல் சாதனம்';

  @override
  String get emulatorDetected => 'எமுலேட்டர் கண்டறியப்பட்டது';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => 'போதுமான';

  @override
  String get freeStorage => 'இலவச சேமிப்பு';

  @override
  String mbFree(int mb) {
    return '$mb MB இலவசம்';
  }

  @override
  String get aiRequiresPhysicalDevice => 'AI அம்சங்களுக்கு உடல் சாதனம் தேவை.';

  @override
  String get multilingual => 'பன்மொழி';

  @override
  String downloadingProgress(String percent) {
    return 'பதிவிறக்கம் $percent%';
  }

  @override
  String get loadingModel => 'மாதிரி ஏற்றப்படுகிறது';

  @override
  String get retryDownload => 'மீண்டும் பதிவிறக்கு';

  @override
  String get activeAndReady => 'செயலில் & தயார்';

  @override
  String get remove => 'அகற்று';

  @override
  String get enableAi => 'AI இயக்கவும்';

  @override
  String get downloadAiModel => 'AI மாதிரியைப் பதிவிறக்கவும்';

  @override
  String get deviceNotSupported => 'சாதனம் ஆதரிக்கப்படவில்லை';

  @override
  String get downloadBackgroundNote =>
      'பின்னணியில் பதிவிறக்கம் செய்யப்படுகிறது. செயலியை மூட வேண்டாம்.';

  @override
  String get removeAiModelTitle => 'AI மாதிரியை அகற்றவா?';

  @override
  String get removeAiModelConfirm =>
      'AI மாதிரியை அகற்றவா?  MB விடுவிக்கப்படும்.';

  @override
  String get analyzeWithAi => 'AI உடன் பகுப்பாய்வு';

  @override
  String get aiAssistantAvailable => 'AI உதவியாளர் கிடைக்கிறது';

  @override
  String get aiSetupPrompt =>
      'புத்திசாலி பரிந்துரைகளுக்கு சாதனத்தில் AI மாதிரியை அமைக்கவும்.';

  @override
  String get setup => 'அமைப்பு';

  @override
  String get adminDashboard => 'நிர்வாக டாஷ்போர்ட்';

  @override
  String get failedToLoadDashboard => 'டாஷ்போர்ட் ஏற்றம் தோல்வி';

  @override
  String get platformOverview => 'தளம் மேலோட்டம்';

  @override
  String get liveStatistics => 'நிகழ்நேர புள்ளிவிவரங்கள்';

  @override
  String get usersSection => 'பயனர்கள்';

  @override
  String get adminTabClients => 'வாடிக்கையாளர்கள்';

  @override
  String get adminTabWorkers => 'தொழிலாளர்கள்';

  @override
  String get adminTabAccount => 'கணக்கு';

  @override
  String get jobsSection => 'வேலைகள்';

  @override
  String get activeLabel => 'செயலில்';

  @override
  String get todaySection => 'இன்று';

  @override
  String get createdLabel => 'உருவாக்கியது';

  @override
  String get completedLabel => 'முடிந்தது';

  @override
  String deleteUserTitle(String role) {
    return '$role நீக்கவா?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return '$name நீக்கவா?';
  }

  @override
  String get userDeletedSuccess => 'பயனர் நீக்கப்பட்டார்';

  @override
  String get unableToLoadUsers => 'பயனர்கள் ஏற்றம் தோல்வி';

  @override
  String get noClientsFound => 'வாடிக்கையாளர் கிடைக்கவில்லை';

  @override
  String get noWorkersFound => 'தொழிலாளர் கிடைக்கவில்லை';

  @override
  String get deleteUserTooltip => 'பயனரை நீக்கு';

  @override
  String get adminSession => 'நிர்வாக அமர்வு';

  @override
  String get adminManageUsersHint =>
      'வாடிக்கையாளர் மற்றும் தொழிலாளர் தாவல்களில் இருந்து பயனர்களை நிர்வகிக்கவும்.';

  @override
  String distanceKm(int radius) {
    return '$radius கி.மீ';
  }

  @override
  String get youreOffline => 'நீங்கள் ஆஃப்லைனில் உள்ளீர்கள்';

  @override
  String get offlineHint => 'நீங்கள் ஆஃப்லைனில் உள்ளீர்கள்';

  @override
  String get yourSkills => 'உங்கள் திறன்கள்';

  @override
  String get skillsSubtitle =>
      'உங்கள் திறன்களையும் நிபுணத்துவத்தையும் சேர்க்கவும்';

  @override
  String get addSkillLabel => 'திறன் சேர்க்கவும்';

  @override
  String get typeToSearchSkills => 'திறன்களைத் தேடு';

  @override
  String savedSkillsCount(int count) {
    return '$count திறன்கள் சேமிக்கப்பட்டன';
  }

  @override
  String get noSkillsAdded => 'திறன்கள் இல்லை';

  @override
  String get unableToLoadTaskDetails => 'விவரங்கள் ஏற்றம் தோல்வி';

  @override
  String get detailDistance => 'தூரம்';

  @override
  String get chooseLocation => 'இடத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get savedTab => 'சேமிக்கப்பட்டவை';

  @override
  String get pinOnMapTab => 'வரைபடத்தில் குறி';

  @override
  String get locationDeniedPermanently => 'இட அனுமதி நிரந்தரமாக மறுக்கப்பட்டது';

  @override
  String get couldNotGetLocation => 'இடத்தைப் பெற முடியவில்லை';

  @override
  String get searchPlaces => 'இடங்களைத் தேடு';

  @override
  String get switchToSatellite => 'செயற்கைக்கோள்';

  @override
  String get switchToRoadMap => 'சாலை வரைபடம்';

  @override
  String get goToMyLocation => 'என் இடத்திற்குச் செல்';

  @override
  String get confirmLocation => 'இடத்தை உறுதிப்படுத்தவும்';

  @override
  String get saveAddress => 'முகவரி சேமி';

  @override
  String get saveAddressSubtitle => 'எதிர்கால பணிகளுக்குச் சேமி';

  @override
  String get labelField => 'லேபிள்';

  @override
  String get labelHome => 'வீடு';

  @override
  String get labelWork => 'பணியிடம்';

  @override
  String get labelOther => 'மற்றவை';

  @override
  String get recipientName => 'பெறுநர் பெயர்';

  @override
  String get recipientNameHint => 'பெயரை உள்ளிடவும்';

  @override
  String get recipientPhone => 'பெறுநர் தொலைபேசி';

  @override
  String get recipientPhoneHint => 'தொலைபேசி எண் உள்ளிடவும்';

  @override
  String get pickFromContacts => 'தொடர்புகளிலிருந்து தேர்வுசெய்';

  @override
  String get contactsAccessDenied => 'தொடர்புகள் அணுகல் மறுக்கப்பட்டது';

  @override
  String get openSettings => 'அமைப்புகளைத் திற';

  @override
  String get couldNotOpenContacts => 'தொடர்புகளைத் திறக்க முடியவில்லை';

  @override
  String get areaNeighbourhood => 'பகுதி / அக்கம்பக்கம்';

  @override
  String get areaHint => 'எ.கா., அடையார், நுங்கம்பாக்கம்';

  @override
  String get cityHint => 'எ.கா., சென்னை';

  @override
  String get postalCodeRequired => 'அஞ்சல் குறியீடு தேவை';

  @override
  String get postalCodeHint => 'எ.கா., 600001';

  @override
  String get countryCodeRequired => 'நாட்டுக் குறியீடு தேவை';

  @override
  String get countryCodeHint => '+91';

  @override
  String get requiredSkillsLabel => 'தேவையான திறன்கள்';

  @override
  String get skillHintText => 'திறன்களை உள்ளிடவும், காற்புள்ளியால் பிரிக்கவும்';

  @override
  String get skillHelperEmpty => 'இன்னும் திறன்கள் சேர்க்கப்படவில்லை';

  @override
  String skillsAddedCount(int count) {
    return '$count திறன்கள் சேர்க்கப்பட்டன';
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
  String get accentColorBlue => 'நீலம்';

  @override
  String get accentColorYellow => 'மஞ்சள்';

  @override
  String get accentColorGreen => 'பச்சை';

  @override
  String get accentColorPink => 'இளஞ்சிவப்பு';

  @override
  String get accentColorRed => 'சிவப்பு';

  @override
  String get accentColorPurple => 'ஊதா';

  @override
  String get accentColorOrange => 'ஆரஞ்சு';

  @override
  String get accentColorTeal => 'டீல்';

  @override
  String get accentColorCustom => 'தனிப்பயன்';

  @override
  String get paymentStatusPending => 'கட்டணம் நிலுவையில்';

  @override
  String get paymentStatusLocked => 'தொகை பாதுகாப்பாக ஒதுக்கப்பட்டது';

  @override
  String get paymentStatusReleased => 'கட்டணம் வெளியிடப்பட்டது';

  @override
  String get paymentStatusOffline => 'முடிந்ததும் நேரடியாகச் செலுத்தவும்';

  @override
  String paymentStatusGeneric(String status) {
    return 'கட்டண நிலை: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'சலுகைகளுக்குத் திறந்தது';

  @override
  String get jobStatusOfferAccepted => 'சலுகை ஏற்கப்பட்டது';

  @override
  String get jobStatusReadyToStart => 'தொடங்கத் தயார்';

  @override
  String get jobStatusInProgress => 'நடப்பில்';

  @override
  String get jobStatusPendingPayment => 'கட்டணம் நிலுவையில்';

  @override
  String get jobStatusPaymentReleased => 'கட்டணம் வெளியிடப்பட்டது';

  @override
  String get jobStatusTaskCompleted => 'பணி முடிந்தது';

  @override
  String get jobStatusCancelled => 'ரத்துசெய்யப்பட்டது';

  @override
  String get detailBudgetLabel => 'பட்ஜெட்';

  @override
  String get detailLocationLabel => 'இடம்';

  @override
  String get detailSkillsLabel => 'திறன்கள்';

  @override
  String get detailJobIdLabel => 'வேலை ID';

  @override
  String get tooltipCopy => 'நகலெடு';

  @override
  String get tooltipDeleteAddress => 'முகவரி நீக்கு';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return 'சேமித்த முகவரிகளிலிருந்து \"$addressLabel\" அகற்றவா?';
  }

  @override
  String get errorNotAuthenticated =>
      'அங்கீகரிக்கப்படவில்லை. மீண்டும் உள்நுழையவும்.';

  @override
  String get errorCouldNotOpenImagePicker =>
      'படத் தேர்வியைத் திறக்க முடியவில்லை.';

  @override
  String get errorCouldNotReadImage => 'படத்தைப் படிக்க முடியவில்லை.';

  @override
  String get errorImageTooLarge => 'படம் 5MB க்கும் குறைவாக இருக்க வேண்டும்.';

  @override
  String get errorUploadFailed => 'பதிவேற்றம் தோல்வி. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorNameRequired => 'பெயர் தேவை';

  @override
  String get errorRatingRequired => 'மதிப்பீட்டைத் தேர்ந்தெடுக்கவும்';

  @override
  String get errorNotLoggedIn => 'முதலில் உள்நுழையவும்';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'நிர்வாக சுயவிவர புதுப்பிப்பு ஆதரிக்கப்படவில்லை';

  @override
  String get errorAdminDeletionDisabled =>
      'செயலியில் நிர்வாக நீக்கம் முடக்கப்பட்டுள்ளது';

  @override
  String get errorConnectionTimeout =>
      'இணைப்பு நேரம் முடிந்தது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get errorConnectionError => 'சேவையகத்துடன் இணைக்க முடியவில்லை.';

  @override
  String get errorRequestCancelled => 'கோரிக்கை ரத்துசெய்யப்பட்டது.';

  @override
  String get errorBadRequest => 'தவறான கோரிக்கை. உள்ளீட்டைச் சரிபார்க்கவும்.';

  @override
  String get errorSessionExpired =>
      'அமர்வு காலாவதியானது. மீண்டும் உள்நுழையவும்.';

  @override
  String get errorPermissionDenied => 'அனுமதி மறுக்கப்பட்டது.';

  @override
  String get errorResourceNotFound => 'வளம் கிடைக்கவில்லை.';

  @override
  String get errorConflict => 'முரண்பாடு: செயலை முடிக்க இயலாது.';

  @override
  String get errorFileTooLarge => 'கோப்பு மிகப் பெரியது. அதிகபட்சம் 5MB.';

  @override
  String get errorValidationError =>
      'சரிபார்ப்புப் பிழை. உள்ளீட்டைச் சரிபார்க்கவும்.';

  @override
  String get errorTooManyRequests => 'அதிகமான கோரிக்கைகள். காத்திருக்கவும்.';

  @override
  String get errorServerError => 'சேவையக பிழை. பின்னர் முயற்சிக்கவும்.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'கோரிக்கை தோல்வி: நிலை $statusCode';
  }

  @override
  String get errorNetworkFailed => 'நெட்வொர்க் பிழை.';

  @override
  String get errorNetworkRequestFailed => 'நெட்வொர்க் பிழை';

  @override
  String get errorMalformedSkillResponse => 'தவறான திறன் பதில்';

  @override
  String get errorMalformedResponse => 'தவறான பதில்';

  @override
  String get errorMalformedAdminResponse => 'தவறான நிர்வாக பதில்';

  @override
  String get errorAdminAccessRequired => 'நிர்வாக அணுகல் தேவை';

  @override
  String get errorDescriptionUnavailable => 'விளக்கம் கிடைக்கவில்லை';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return '$roleLabel மட்டுமே இதைச் செய்ய முடியும்';
  }

  @override
  String get useWithoutSaving => 'சேமிக்காமல் பயன்படுத்து';

  @override
  String get saveAndUse => 'சேமித்துப் பயன்படுத்து';

  @override
  String get useMyCurrentLocation => 'என் தற்போதைய இடத்தைப் பயன்படுத்து';

  @override
  String get detectingLocation => 'இடம் கண்டறியப்படுகிறது…';
}
