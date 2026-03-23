// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'लॉग इन करें';

  @override
  String get registerTitle => 'खाता बनाएँ';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get passwordLabel => 'पासवर्ड';

  @override
  String get confirmPasswordLabel => 'पासवर्ड की पुष्टि करें';

  @override
  String get forgotPassword => 'पासवर्ड भूल गए?';

  @override
  String get loginButton => 'लॉग इन करें';

  @override
  String get registerButton => 'साइन अप करें';

  @override
  String get orContinueWith => 'या इसके साथ जारी रखें';

  @override
  String get dontHaveAccount => 'खाता नहीं है?';

  @override
  String get alreadyHaveAccount => 'पहले से खाता है?';

  @override
  String get welcomeBack => 'वापसी पर स्वागत है';

  @override
  String get loginSubtitle => 'अपने AroundU खाते में लॉग इन करें';

  @override
  String get noAccountYet => 'अभी खाता नहीं है?';

  @override
  String get createOne => 'एक बनाएँ';

  @override
  String get emailRequired => 'ईमेल आवश्यक है';

  @override
  String get enterValidEmail => 'वैध ईमेल दर्ज करें';

  @override
  String get passwordRequired => 'पासवर्ड आवश्यक है';

  @override
  String get minimumSixCharacters => 'न्यूनतम 6 अक्षर';

  @override
  String get unableToLogin => 'लॉग इन नहीं हो सका';

  @override
  String fieldRequired(String field) {
    return '$field आवश्यक है';
  }

  @override
  String get enterValidPhone => 'वैध फ़ोन नंबर दर्ज करें';

  @override
  String get unableToRegister => 'पंजीकरण नहीं हो सका';

  @override
  String get registrationSuccess => 'पंजीकरण सफल';

  @override
  String get registerSubtitle => 'प्रदाता या कर्मचारी के रूप में पंजीकरण करें';

  @override
  String get roleLabel => 'भूमिका';

  @override
  String get roleJobProvider => 'कार्य प्रदाता';

  @override
  String get roleJobWorker => 'कार्य कर्मचारी';

  @override
  String get countryLabel => 'देश';

  @override
  String get currencyLabel => 'मुद्रा';

  @override
  String get cityLabel => 'शहर';

  @override
  String get postalCodeLabel => 'पिन कोड';

  @override
  String get areaOptionalLabel => 'क्षेत्र (वैकल्पिक)';

  @override
  String get fullAddressOptionalLabel => 'पूरा पता (वैकल्पिक)';

  @override
  String get alreadyRegistered => 'पहले से पंजीकृत हैं?';

  @override
  String get logInLink => 'लॉग इन करें';

  @override
  String get onboardingTitle1 => 'अपने आस-पास के काम खोजें';

  @override
  String get onboardingSubtitle1 =>
      'अपने पड़ोस में स्थानीय नौकरियाँ और सेवाएँ खोजें।';

  @override
  String get onboardingTitle2 => 'बोली लगाएँ और काम पाएँ';

  @override
  String get onboardingSubtitle2 =>
      'प्रतिस्पर्धी बोलियाँ लगाएँ और अपने कौशल से मेल खाते कामों के लिए चुने जाएँ।';

  @override
  String get onboardingTitle3 => 'सुरक्षित भुगतान';

  @override
  String get onboardingSubtitle3 =>
      'एस्क्रो-समर्थित भुगतान निष्पक्ष और सुरक्षित लेनदेन सुनिश्चित करते हैं।';

  @override
  String get getStarted => 'शुरू करें';

  @override
  String get skip => 'छोड़ें';

  @override
  String get next => 'अगला';

  @override
  String get newHereCreateAccount => 'नए हैं? खाता बनाएँ';

  @override
  String get roleSelectionTitle => 'अपनी भूमिका चुनें';

  @override
  String get roleClient => 'क्लाइंट';

  @override
  String get roleClientDesc => 'मुझे कामों में मदद चाहिए';

  @override
  String get roleWorker => 'वर्कर';

  @override
  String get roleWorkerDesc => 'मैं अपने कौशल प्रदान करना चाहता हूँ';

  @override
  String get continueButton => 'जारी रखें';

  @override
  String get roleSelectionSubtitle =>
      'आप AroundU का उपयोग कैसे करना चाहते हैं?';

  @override
  String signedInAs(String email) {
    return '$email के रूप में लॉग इन';
  }

  @override
  String get roleProviderDesc => 'कार्य पोस्ट करें और कुशल कर्मचारी खोजें';

  @override
  String get roleWorkerDescAlt => 'कार्य खोजें और अपने कौशल से कमाएँ';

  @override
  String get homeTab => 'होम';

  @override
  String get jobsTab => 'नौकरियाँ';

  @override
  String get chatTab => 'चैट';

  @override
  String get profileTab => 'प्रोफ़ाइल';

  @override
  String get providerTabMyTasks => 'मेरे कार्य';

  @override
  String get providerTabPostTask => 'कार्य पोस्ट करें';

  @override
  String get tasksNavLabel => 'कार्य';

  @override
  String get postNavLabel => 'पोस्ट';

  @override
  String get workerTabTaskFeed => 'कार्य फ़ीड';

  @override
  String get feedNavLabel => 'फ़ीड';

  @override
  String get myJobs => 'मेरी नौकरियाँ';

  @override
  String get workerFeed => 'उपलब्ध नौकरियाँ';

  @override
  String get createJob => 'नौकरी बनाएँ';

  @override
  String get postJob => 'नौकरी पोस्ट करें';

  @override
  String get editJob => 'नौकरी संपादित करें';

  @override
  String get deleteJob => 'नौकरी हटाएँ';

  @override
  String get deleteJobConfirm => 'क्या आप वाकई इस नौकरी को हटाना चाहते हैं?';

  @override
  String get jobTitle => 'शीर्षक';

  @override
  String get jobDescription => 'विवरण';

  @override
  String get jobCategory => 'श्रेणी';

  @override
  String get jobBudget => 'बजट';

  @override
  String get jobLocation => 'स्थान';

  @override
  String get jobDueDate => 'नियत तिथि';

  @override
  String get jobSkills => 'आवश्यक कौशल';

  @override
  String get jobUrgency => 'तत्कालता';

  @override
  String get jobPaymentMode => 'भुगतान मोड';

  @override
  String get urgencyNormal => 'सामान्य';

  @override
  String get urgencyMedium => 'मध्यम';

  @override
  String get urgencyUrgent => 'तत्काल';

  @override
  String get urgencyAsap => 'जल्द से जल्द';

  @override
  String get paymentOffline => 'ऑफ़लाइन';

  @override
  String get paymentEscrow => 'एस्क्रो';

  @override
  String get paymentMethod => 'भुगतान विधि';

  @override
  String get payInCash => 'नकद में भुगतान';

  @override
  String get secureEscrow => 'सुरक्षित एस्क्रो';

  @override
  String get filterAll => 'सभी';

  @override
  String get filterOpen => 'खुला';

  @override
  String get filterActive => 'सक्रिय';

  @override
  String get filterInProgress => 'प्रगति में';

  @override
  String get filterCompleted => 'पूर्ण';

  @override
  String get filterCancelled => 'रद्द';

  @override
  String get filterExpired => 'समाप्त';

  @override
  String get filterNearby => 'पास में';

  @override
  String get filterAllMine => 'मेरे सभी';

  @override
  String get filterBidPlaced => 'बोली लगाई';

  @override
  String get filterAccepted => 'स्वीकृत';

  @override
  String get noTasksPostedYet => 'अभी कोई कार्य पोस्ट नहीं किया गया';

  @override
  String get noOpenTasks => 'कोई खुले कार्य नहीं';

  @override
  String get noActiveTasks => 'कोई सक्रिय कार्य नहीं';

  @override
  String get noTasksInProgress => 'कोई कार्य प्रगति में नहीं';

  @override
  String get noCompletedTasks => 'कोई पूर्ण कार्य नहीं';

  @override
  String get noCancelledTasks => 'कोई रद्द कार्य नहीं';

  @override
  String get noExpiredTasks => 'कोई समाप्त कार्य नहीं';

  @override
  String get unableToLoadTasks => 'कार्य लोड नहीं हो सके';

  @override
  String get noNearbyJobs => 'आसपास कोई कार्य नहीं';

  @override
  String get noJobsYetBid => 'अभी कोई कार्य नहीं — बोली लगाएँ';

  @override
  String get noPendingBids => 'कोई लंबित बोली नहीं';

  @override
  String get noAcceptedJobs => 'अभी कोई स्वीकृत कार्य नहीं';

  @override
  String get noJobsInProgress => 'कोई कार्य प्रगति में नहीं';

  @override
  String get noCompletedJobsYet => 'अभी कोई पूर्ण कार्य नहीं';

  @override
  String get noCancelledJobs => 'कोई रद्द कार्य नहीं';

  @override
  String get noExpiredJobs => 'कोई समाप्त कार्य नहीं';

  @override
  String get pullDownToRefreshCheck => 'नए कार्य देखने के लिए नीचे खींचें';

  @override
  String get unableToLoadJobs => 'कार्य लोड नहीं हो सके';

  @override
  String get postNewTask => 'नया कार्य पोस्ट करें';

  @override
  String get postTaskSubtitle =>
      'स्पष्ट विवरण जोड़ें ताकि कर्मचारी सटीक प्रस्ताव भेज सकें';

  @override
  String get taskTitleLabel => 'कार्य शीर्षक';

  @override
  String get savingLocation => 'स्थान सहेजा जा रहा है';

  @override
  String get tapToSelectLocation => 'स्थान चुनने के लिए टैप करें';

  @override
  String get postTaskButton => 'कार्य पोस्ट करें';

  @override
  String get addSkillWarning =>
      'इस कार्य के लिए कम से कम एक आवश्यक कौशल जोड़ें';

  @override
  String get enterValidBudget => 'एक वैध बजट दर्ज करें';

  @override
  String get setJobLocationWarning => 'कृपया कार्य स्थान सेट करें';

  @override
  String get jobPostedSuccess => 'कार्य सफलतापूर्वक पोस्ट किया गया';

  @override
  String get failedToPostJob => 'कार्य पोस्ट करने में विफल';

  @override
  String get failedToSaveLocation => 'स्थान सहेजने में विफल';

  @override
  String get unableToLoadJobWorkflow => 'कार्य वर्कफ़्लो लोड नहीं हो सका';

  @override
  String get unknownError => 'अज्ञात त्रुटि';

  @override
  String get statusOpenForBids => 'बोली के लिए खुला';

  @override
  String get statusInProgress => 'प्रगति में';

  @override
  String get statusCompleted => 'पूर्ण';

  @override
  String get statusCancelled => 'रद्द';

  @override
  String get statusPendingStart => 'शुरू होने की प्रतीक्षा';

  @override
  String get statusPendingRelease => 'रिलीज़ की प्रतीक्षा';

  @override
  String get bids => 'बोलियाँ';

  @override
  String get noBids => 'अभी तक कोई बोली नहीं';

  @override
  String get placeBid => 'बोली लगाएँ';

  @override
  String get bidAmount => 'बोली राशि';

  @override
  String get bidNotes => 'नोट्स (वैकल्पिक)';

  @override
  String get yourBid => 'आपकी बोली';

  @override
  String get acceptBid => 'बोली स्वीकारें';

  @override
  String get rejectBid => 'बोली अस्वीकारें';

  @override
  String get bidAccepted => 'बोली स्वीकृत';

  @override
  String get bidRejected => 'बोली अस्वीकृत';

  @override
  String get bidPending => 'लंबित';

  @override
  String get offersSection => 'प्रस्ताव';

  @override
  String get noOffersReceivedYet => 'अभी कोई प्रस्ताव प्राप्त नहीं';

  @override
  String get offerAccepted => 'प्रस्ताव स्वीकृत';

  @override
  String get offerRejected => 'प्रस्ताव अस्वीकृत';

  @override
  String get offerPending => 'प्रस्ताव लंबित';

  @override
  String workerNumber(int id) {
    return 'कर्मचारी #$id';
  }

  @override
  String get acceptThisOffer => 'यह प्रस्ताव स्वीकारें';

  @override
  String get messageWorker => 'कर्मचारी को संदेश भेजें';

  @override
  String get offerAcceptedSnack => 'प्रस्ताव स्वीकार किया गया!';

  @override
  String get yourOffer => 'आपका प्रस्ताव';

  @override
  String get bidStatusSelected => 'चयनित';

  @override
  String get bidStatusRejected => 'अस्वीकृत';

  @override
  String get bidStatusPending => 'लंबित';

  @override
  String get placeYourOffer => 'अपना प्रस्ताव दें';

  @override
  String get yourOfferAmount => 'आपकी प्रस्ताव राशि';

  @override
  String get messageToClientOptional => 'ग्राहक को संदेश (वैकल्पिक)';

  @override
  String get addPartnerOptional => 'साथी जोड़ें (वैकल्पिक)';

  @override
  String get partnerNameLabel => 'साथी का नाम';

  @override
  String get partnerFeeLabel => 'साथी शुल्क';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'साथी शुल्क: $amount';
  }

  @override
  String get submitOffer => 'प्रस्ताव भेजें';

  @override
  String get enterValidOfferAmount => 'वैध प्रस्ताव राशि दर्ज करें';

  @override
  String get offerSubmittedSuccess => 'प्रस्ताव सफलतापूर्वक जमा किया गया';

  @override
  String get clientSelectedYourOffer => 'ग्राहक ने आपका प्रस्ताव चुना';

  @override
  String get handshakeHint =>
      'काम शुरू करने के लिए दोनों पक्षों को कोड साझा करना होगा';

  @override
  String get handshakeAccepted => 'हैंडशेक स्वीकृत';

  @override
  String get handshakeDeclined => 'हैंडशेक अस्वीकृत';

  @override
  String get acceptJob => 'काम स्वीकार करें';

  @override
  String get decline => 'अस्वीकार करें';

  @override
  String get startCode => 'स्टार्ट कोड';

  @override
  String get releaseCode => 'रिलीज़ कोड';

  @override
  String get generateCodes => 'कोड जनरेट करें';

  @override
  String get verifyCode => 'कोड सत्यापित करें';

  @override
  String get enterCode => 'कोड दर्ज करें';

  @override
  String get generateStartCode => 'स्टार्ट कोड जनरेट करें';

  @override
  String get startCodeCopied => 'स्टार्ट कोड कॉपी किया गया';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return 'एस्क्रो में $amount आरक्षित करें';
  }

  @override
  String get releaseCodeCopied => 'रिलीज़ कोड कॉपी किया गया';

  @override
  String get releaseCodeHint => 'रिलीज़ कोड दर्ज करें';

  @override
  String get regenerateCode => 'कोड पुनः जनरेट करें';

  @override
  String get generateReleaseCode => 'रिलीज़ कोड जनरेट करें';

  @override
  String get taskCodesGenerated => 'कार्य कोड जनरेट किए गए';

  @override
  String get newReleaseCodeGenerated => 'नया रिलीज़ कोड जनरेट किया गया';

  @override
  String get readyToBegin => 'शुरू करने के लिए तैयार';

  @override
  String get startCodeHint => 'स्टार्ट कोड दर्ज करें';

  @override
  String get verifyAndStartWork => 'सत्यापित करें और काम शुरू करें';

  @override
  String get startCodeVerified => 'स्टार्ट कोड सत्यापित';

  @override
  String get enterStartCodeFirst => 'पहले स्टार्ट कोड दर्ज करें';

  @override
  String get workInProgress => 'काम प्रगति में';

  @override
  String get releaseCodePrompt =>
      'भुगतान जारी करने के लिए रिलीज़ कोड दर्ज करें';

  @override
  String get releaseCodeHelper => 'यह कोड कर्मचारी को दें जब काम पूरा हो जाए';

  @override
  String get confirmWorkCompleted => 'काम पूरा होने की पुष्टि करें';

  @override
  String get workConfirmedPaymentReleased => 'काम पुष्टि — भुगतान जारी';

  @override
  String get enterReleaseCodeWarning => 'रिलीज़ कोड दर्ज करें';

  @override
  String get escrow => 'एस्क्रो';

  @override
  String get lockEscrow => 'एस्क्रो लॉक करें';

  @override
  String get releaseEscrow => 'भुगतान जारी करें';

  @override
  String get paymentLocked => 'भुगतान लॉक';

  @override
  String get paymentReleased => 'भुगतान जारी';

  @override
  String get paymentSafelyReserved => 'भुगतान सुरक्षित रूप से आरक्षित';

  @override
  String get cancelTask => 'कार्य रद्द करें';

  @override
  String get taskCancelled => 'कार्य रद्द किया गया';

  @override
  String get deleteTask => 'कार्य हटाएँ';

  @override
  String get deleteTaskTitle => 'कार्य हटाएँ?';

  @override
  String get deleteTaskConfirm => 'क्या आप वाकई इस कार्य को हटाना चाहते हैं?';

  @override
  String get taskDeleted => 'कार्य हटाया गया';

  @override
  String get typeFirstMessage => 'पहला संदेश टाइप करें';

  @override
  String get send => 'भेजें';

  @override
  String get failedToSendMessage => 'संदेश भेजने में विफल';

  @override
  String get conversations => 'संदेश';

  @override
  String get noMessagesYet => 'अभी तक कोई संदेश नहीं';

  @override
  String get noMessagesSubtitle =>
      'जब आप किसी कार्य के बारे में चैट शुरू करेंगे तो आपकी बातचीत यहाँ दिखाई देगी।';

  @override
  String get startConversation => 'बातचीत शुरू करें!';

  @override
  String get typeMessage => 'संदेश लिखें...';

  @override
  String get typing => 'टाइप कर रहा है...';

  @override
  String get newMessages => 'नए संदेश';

  @override
  String get now => 'अभी';

  @override
  String minutesAgo(int count) {
    return '$countमि. पहले';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वर्कर',
      one: '1 वर्कर',
    );
    return '$_temp0';
  }

  @override
  String get chatToday => 'आज';

  @override
  String get chatYesterday => 'कल';

  @override
  String chatYouPrefix(String message) {
    return 'आप: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'पुनः: $jobTitle';
  }

  @override
  String get noConversationsYet => 'अभी कोई बातचीत नहीं';

  @override
  String get loadingConversations => 'बातचीत लोड हो रही है...';

  @override
  String get loadingMessages => 'संदेश लोड हो रहे हैं...';

  @override
  String get profile => 'प्रोफ़ाइल';

  @override
  String get editProfile => 'प्रोफ़ाइल संपादित करें';

  @override
  String get fullName => 'पूरा नाम';

  @override
  String get phone => 'फ़ोन नंबर';

  @override
  String get bio => 'परिचय';

  @override
  String get skills => 'कौशल';

  @override
  String get saveChanges => 'बदलाव सहेजें';

  @override
  String get logout => 'लॉग आउट';

  @override
  String get logoutConfirm => 'क्या आप वाकई लॉग आउट करना चाहते हैं?';

  @override
  String get myProfile => 'मेरी प्रोफ़ाइल';

  @override
  String get unknown => 'अज्ञात';

  @override
  String get experienceLabel => 'अनुभव';

  @override
  String get statusLabel => 'स्थिति';

  @override
  String get notSet => 'सेट नहीं किया गया';

  @override
  String get onDuty => 'ऑन ड्यूटी';

  @override
  String get offDuty => 'ऑफ़ ड्यूटी';

  @override
  String yearsCount(int count) {
    return '$count वर्ष';
  }

  @override
  String get themeAndColors => 'थीम और रंग';

  @override
  String get aiModelLabel => 'AI मॉडल';

  @override
  String get availableForWork => 'काम के लिए उपलब्ध';

  @override
  String get visibleToClients => 'ग्राहकों को दिखाई देगा';

  @override
  String get currentlyOffDuty => 'वर्तमान में ऑफ़-ड्यूटी';

  @override
  String get myReviews => 'मेरी समीक्षाएँ';

  @override
  String get deleteAccount => 'खाता हटाएँ';

  @override
  String get deleteAccountConfirm =>
      'क्या आप वाकई अपना खाता हटाना चाहते हैं? यह क्रिया पूर्ववत नहीं की जा सकती।';

  @override
  String get couldNotDeleteAccount => 'खाता हटाया नहीं जा सका';

  @override
  String get profilePhotoUpdated => 'प्रोफ़ाइल फ़ोटो अपडेट की गई';

  @override
  String get profileUpdated => 'प्रोफ़ाइल अपडेट की गई';

  @override
  String get nameLabel => 'नाम';

  @override
  String get profileImageUrl => 'प्रोफ़ाइल छवि URL';

  @override
  String get yearsOfExperience => 'अनुभव के वर्ष';

  @override
  String get certificationsLabel => 'प्रमाणपत्र';

  @override
  String get payoutAccountLabel => 'भुगतान खाता';

  @override
  String get onDutySubtitle => 'आप नए कार्यों के लिए दृश्यमान हैं';

  @override
  String get loadingProfile => 'प्रोफ़ाइल लोड हो रहा है';

  @override
  String get availabilityLabel => 'उपलब्धता';

  @override
  String get memberLabel => 'सदस्य';

  @override
  String get available => 'उपलब्ध';

  @override
  String get unavailable => 'अनुपलब्ध';

  @override
  String get viewAllReviews => 'सभी समीक्षाएँ देखें';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get appearance => 'दिखावट';

  @override
  String get language => 'भाषा';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get lightMode => 'लाइट मोड';

  @override
  String get systemMode => 'सिस्टम';

  @override
  String get accentColour => 'एक्सेंट रंग';

  @override
  String get customColour => 'कस्टम';

  @override
  String get preview => 'पूर्वावलोकन';

  @override
  String get previewTitle => 'आपके रंग बहुत अच्छे लग रहे हैं!';

  @override
  String get previewSubtitle => 'आपका ऐप ऐसा दिखेगा।';

  @override
  String get primary => 'प्राथमिक';

  @override
  String get secondary => 'द्वितीयक';

  @override
  String get modeLabel => 'मोड';

  @override
  String get pickAColour => 'रंग चुनें';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get darkModeSubtitle => 'सिस्टम, लाइट, या डार्क मोड चुनें';

  @override
  String get reviews => 'समीक्षाएँ';

  @override
  String get leaveReview => 'समीक्षा दें';

  @override
  String get noReviews => 'अभी तक कोई समीक्षा नहीं';

  @override
  String get rating => 'रेटिंग';

  @override
  String get reviewComment => 'टिप्पणी';

  @override
  String get submitReview => 'समीक्षा जमा करें';

  @override
  String howWasWorker(String name) {
    return '$name कैसे थे?';
  }

  @override
  String get feedbackHelps => 'आपकी प्रतिक्रिया मदद करती है';

  @override
  String get thanksForReview => 'समीक्षा के लिए धन्यवाद';

  @override
  String get shareExperienceHint => 'अपना अनुभव साझा करें';

  @override
  String get ratingExcellent => 'उत्कृष्ट';

  @override
  String get ratingGreat => 'बहुत अच्छा';

  @override
  String get ratingGood => 'अच्छा';

  @override
  String get ratingFair => 'ठीक';

  @override
  String get ratingPoor => 'खराब';

  @override
  String get tapToRate => 'रेट करने के लिए टैप करें';

  @override
  String workerReviewsTitle(String name) {
    return '$name की समीक्षाएँ';
  }

  @override
  String get loadingReviews => 'समीक्षाएँ लोड हो रही हैं';

  @override
  String get noReviewsSubtitle => 'अभी कोई समीक्षा नहीं';

  @override
  String get allReviews => 'सभी समीक्षाएँ';

  @override
  String reviewCount(int count) {
    return '$count समीक्षाएँ';
  }

  @override
  String get anonymous => 'अज्ञात';

  @override
  String get loading => 'लोड हो रहा है...';

  @override
  String get error => 'कुछ गलत हो गया';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get tryAgain => 'पुनः प्रयास करें';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get confirm => 'पुष्टि करें';

  @override
  String get delete => 'हटाएँ';

  @override
  String get save => 'सहेजें';

  @override
  String get edit => 'संपादित करें';

  @override
  String get close => 'बंद करें';

  @override
  String get search => 'खोजें';

  @override
  String get noResults => 'कोई परिणाम नहीं मिला';

  @override
  String get pullToRefresh => 'रिफ़्रेश करने के लिए खींचें';

  @override
  String get pullDownToRefresh => 'रिफ़्रेश करने के लिए नीचे खींचें';

  @override
  String get yes => 'हाँ';

  @override
  String get required => 'आवश्यक';

  @override
  String get stop => 'रुकें';

  @override
  String get clear => 'साफ़ करें';

  @override
  String get aiSetup => 'AI सेटअप';

  @override
  String get aiAnalysis => 'AI विश्लेषण';

  @override
  String get unlockAi => 'AI विश्लेषण अनलॉक करें';

  @override
  String get aiTagline => 'ऑन-डिवाइस  ·  निजी  ·  मुफ़्त';

  @override
  String get deviceCheck => 'डिवाइस जाँच';

  @override
  String get chooseModel => 'अपना मॉडल चुनें';

  @override
  String get chooseModelSubtitle =>
      'एक या अधिक मॉडल डाउनलोड करें। आप बाद में उनके बीच स्विच कर सकते हैं।';

  @override
  String get initializingAi => 'AI रनटाइम शुरू हो रहा है…';

  @override
  String get modelStorage => 'मॉडल स्टोरेज';

  @override
  String get deviceIncompatible =>
      'ऑन-डिवाइस AI के लिए GPU सपोर्ट वाला भौतिक डिवाइस चाहिए। सिमुलेटर और एमुलेटर संगत नहीं हैं।';

  @override
  String get enhanceDescription => 'सुधारें';

  @override
  String get bidInsights => 'बोली अंतर्दृष्टि';

  @override
  String get whyThisJob => 'यह क्यों?';

  @override
  String get suggestPrice => 'मूल्य सुझाव';

  @override
  String get analyzing => 'विश्लेषण हो रहा है…';

  @override
  String get aiCapabilities => 'AI क्षमताएँ';

  @override
  String get onDeviceAi => 'ऑन-डिवाइस AI';

  @override
  String get aiTaglineSetup => 'निजी · ऑफ़लाइन · मुफ़्त';

  @override
  String get aiSetupDescription =>
      'AI मॉडल द्वारा संचालित कार्यों और बोलियों के लिए स्मार्ट सुझाव प्राप्त करें';

  @override
  String get physicalDevice => 'भौतिक उपकरण';

  @override
  String get emulatorDetected => 'एमुलेटर पता चला';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => 'पर्याप्त';

  @override
  String get freeStorage => 'मुफ़्त संग्रहण';

  @override
  String mbFree(int mb) {
    return '$mb MB मुफ़्त';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'AI सुविधाओं के लिए भौतिक उपकरण आवश्यक है।';

  @override
  String get multilingual => 'बहुभाषी';

  @override
  String downloadingProgress(String percent) {
    return '$percent% डाउनलोड हो रहा है';
  }

  @override
  String get loadingModel => 'मॉडल लोड हो रहा है';

  @override
  String get retryDownload => 'डाउनलोड पुनः प्रयास करें';

  @override
  String get activeAndReady => 'सक्रिय और तैयार';

  @override
  String get remove => 'हटाएँ';

  @override
  String get enableAi => 'AI सक्षम करें';

  @override
  String get downloadAiModel => 'AI मॉडल डाउनलोड करें';

  @override
  String get deviceNotSupported => 'उपकरण समर्थित नहीं है';

  @override
  String get downloadBackgroundNote =>
      'डाउनलोड बैकग्राउंड में होता है। कृपया ऐप बंद न करें।';

  @override
  String get removeAiModelTitle => 'AI मॉडल हटाएँ?';

  @override
  String get removeAiModelConfirm =>
      'क्या आप AI मॉडल हटाना चाहते हैं? यह  MB संग्रहण मुक्त करेगा।';

  @override
  String get analyzeWithAi => 'AI से विश्लेषण करें';

  @override
  String get aiAssistantAvailable => 'AI सहायक उपलब्ध';

  @override
  String get aiSetupPrompt =>
      'स्मार्ट सुझाव प्राप्त करने के लिए ऑन-डिवाइस AI मॉडल सेट करें।';

  @override
  String get setup => 'सेटअप';

  @override
  String get adminDashboard => 'एडमिन डैशबोर्ड';

  @override
  String get failedToLoadDashboard => 'डैशबोर्ड लोड करने में विफल';

  @override
  String get platformOverview => 'प्लेटफ़ॉर्म अवलोकन';

  @override
  String get liveStatistics => 'लाइव आँकड़े';

  @override
  String get usersSection => 'उपयोगकर्ता';

  @override
  String get adminTabClients => 'ग्राहक';

  @override
  String get adminTabWorkers => 'कर्मचारी';

  @override
  String get adminTabAccount => 'खाता';

  @override
  String get jobsSection => 'कार्य';

  @override
  String get activeLabel => 'सक्रिय';

  @override
  String get todaySection => 'आज';

  @override
  String get createdLabel => 'बनाया गया';

  @override
  String get completedLabel => 'पूर्ण';

  @override
  String deleteUserTitle(String role) {
    return '$role को हटाएँ?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return 'क्या आप वाकई $name को हटाना चाहते हैं?';
  }

  @override
  String get userDeletedSuccess => 'उपयोगकर्ता सफलतापूर्वक हटाया गया';

  @override
  String get unableToLoadUsers => 'उपयोगकर्ता लोड नहीं हो सके';

  @override
  String get noClientsFound => 'कोई ग्राहक नहीं मिले';

  @override
  String get noWorkersFound => 'कोई कर्मचारी नहीं मिले';

  @override
  String get deleteUserTooltip => 'उपयोगकर्ता हटाएँ';

  @override
  String get adminSession => 'एडमिन सत्र';

  @override
  String get adminManageUsersHint =>
      'ग्राहक और कर्मचारी टैब से उपयोगकर्ताओं को प्रबंधित करें।';

  @override
  String distanceKm(int radius) {
    return '$radius किमी';
  }

  @override
  String get youreOffline => 'आप ऑफ़लाइन हैं';

  @override
  String get offlineHint => 'आप ऑफ़लाइन हैं';

  @override
  String get yourSkills => 'आपके कौशल';

  @override
  String get skillsSubtitle => 'अपने कौशल और विशेषज्ञता जोड़ें';

  @override
  String get addSkillLabel => 'कौशल जोड़ें';

  @override
  String get typeToSearchSkills => 'कौशल खोजने के लिए टाइप करें';

  @override
  String savedSkillsCount(int count) {
    return '$count कौशल सहेजे गए';
  }

  @override
  String get noSkillsAdded => 'कोई कौशल नहीं जोड़ा गया';

  @override
  String get unableToLoadTaskDetails => 'कार्य विवरण लोड नहीं हो सके';

  @override
  String get detailDistance => 'दूरी';

  @override
  String get chooseLocation => 'स्थान चुनें';

  @override
  String get savedTab => 'सहेजे गए';

  @override
  String get pinOnMapTab => 'मैप पर पिन करें';

  @override
  String get locationDeniedPermanently => 'स्थान अनुमति स्थायी रूप से अस्वीकृत';

  @override
  String get couldNotGetLocation => 'स्थान प्राप्त नहीं हो सका';

  @override
  String get searchPlaces => 'स्थान खोजें';

  @override
  String get switchToSatellite => 'उपग्रह पर स्विच करें';

  @override
  String get switchToRoadMap => 'सड़क नक्शे पर स्विच करें';

  @override
  String get goToMyLocation => 'मेरे स्थान पर जाएँ';

  @override
  String get confirmLocation => 'स्थान पुष्टि करें';

  @override
  String get useWithoutSaving => 'Use without saving';

  @override
  String get saveAndUse => 'Save & use';

  @override
  String get useMyCurrentLocation => 'Use my current location';

  @override
  String get detectingLocation => 'Detecting location…';

  @override
  String get saveAddress => 'पता सहेजें';

  @override
  String get saveAddressSubtitle => 'इस पते को भविष्य के कार्यों के लिए सहेजें';

  @override
  String get labelField => 'लेबल';

  @override
  String get labelHome => 'घर';

  @override
  String get labelWork => 'कार्यालय';

  @override
  String get labelOther => 'अन्य';

  @override
  String get recipientName => 'प्राप्तकर्ता का नाम';

  @override
  String get recipientNameHint => 'प्राप्तकर्ता का नाम दर्ज करें';

  @override
  String get recipientPhone => 'प्राप्तकर्ता का फ़ोन';

  @override
  String get recipientPhoneHint => 'प्राप्तकर्ता का फ़ोन दर्ज करें';

  @override
  String get pickFromContacts => 'संपर्कों से चुनें';

  @override
  String get contactsAccessDenied => 'संपर्क पहुँच अस्वीकृत';

  @override
  String get openSettings => 'सेटिंग्स खोलें';

  @override
  String get couldNotOpenContacts => 'संपर्क खोले नहीं जा सके';

  @override
  String get areaNeighbourhood => 'क्षेत्र / मोहल्ला';

  @override
  String get areaHint => 'जैसे कि कोरमंगला, बांद्रा';

  @override
  String get cityHint => 'जैसे मुंबई';

  @override
  String get postalCodeRequired => 'पिन कोड आवश्यक है';

  @override
  String get postalCodeHint => 'जैसे 400001';

  @override
  String get countryCodeRequired => 'देश कोड आवश्यक है';

  @override
  String get countryCodeHint => '+91';

  @override
  String get requiredSkillsLabel => 'आवश्यक कौशल';

  @override
  String get skillHintText => 'कौशल टाइप करें और अल्पविराम से अलग करें';

  @override
  String get skillHelperEmpty => 'अभी कोई कौशल नहीं जोड़ा गया';

  @override
  String skillsAddedCount(int count) {
    return '$count कौशल जोड़े गए';
  }

  @override
  String get languagePicker => 'भाषा चुनें';

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
  String get accentColorBlue => 'नीला';

  @override
  String get accentColorYellow => 'पीला';

  @override
  String get accentColorGreen => 'हरा';

  @override
  String get accentColorPink => 'गुलाबी';

  @override
  String get accentColorRed => 'लाल';

  @override
  String get accentColorPurple => 'बैंगनी';

  @override
  String get accentColorOrange => 'नारंगी';

  @override
  String get accentColorTeal => 'टील';

  @override
  String get accentColorCustom => 'कस्टम';

  @override
  String get paymentStatusPending => 'भुगतान लंबित';

  @override
  String get paymentStatusLocked => 'राशि सुरक्षित रूप से आरक्षित';

  @override
  String get paymentStatusReleased => 'भुगतान सफलतापूर्वक जारी';

  @override
  String get paymentStatusOffline => 'काम पूरा होने पर सीधे भुगतान करें';

  @override
  String paymentStatusGeneric(String status) {
    return 'भुगतान स्थिति: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'प्रस्तावों के लिए खुला';

  @override
  String get jobStatusOfferAccepted => 'प्रस्ताव स्वीकृत';

  @override
  String get jobStatusReadyToStart => 'शुरू करने के लिए तैयार';

  @override
  String get jobStatusInProgress => 'प्रगति में';

  @override
  String get jobStatusPendingPayment => 'भुगतान लंबित';

  @override
  String get jobStatusPaymentReleased => 'भुगतान जारी';

  @override
  String get jobStatusTaskCompleted => 'कार्य पूर्ण';

  @override
  String get jobStatusCancelled => 'रद्द';

  @override
  String get detailBudgetLabel => 'बजट';

  @override
  String get detailLocationLabel => 'स्थान';

  @override
  String get detailSkillsLabel => 'कौशल';

  @override
  String get detailJobIdLabel => 'जॉब आईडी';

  @override
  String get tooltipCopy => 'कॉपी करें';

  @override
  String get tooltipDeleteAddress => 'पता हटाएँ';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return 'क्या \"$addressLabel\" को सहेजे गए पतों से हटाना है?';
  }

  @override
  String get errorNotAuthenticated => 'प्रमाणित नहीं। कृपया पुनः लॉग इन करें।';

  @override
  String get errorCouldNotOpenImagePicker => 'इमेज पिकर नहीं खुल सका।';

  @override
  String get errorCouldNotReadImage => 'चयनित छवि पढ़ी नहीं जा सकी।';

  @override
  String get errorImageTooLarge =>
      'छवि 5 MB से कम होनी चाहिए। कृपया छोटी फ़ाइल चुनें।';

  @override
  String get errorUploadFailed => 'अपलोड विफल। कृपया पुनः प्रयास करें।';

  @override
  String get errorNameRequired => 'नाम आवश्यक है';

  @override
  String get errorRatingRequired => 'कृपया रेटिंग चुनें';

  @override
  String get errorNotLoggedIn => 'कृपया पहले लॉग इन करें';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'इस फ़्लो में एडमिन प्रोफ़ाइल अपडेट समर्थित नहीं है';

  @override
  String get errorAdminDeletionDisabled =>
      'मोबाइल फ़्लो में एडमिन खाता हटाना अक्षम है';

  @override
  String get errorConnectionTimeout =>
      'कनेक्शन का समय समाप्त हुआ। नेटवर्क जाँचें और पुनः प्रयास करें।';

  @override
  String get errorConnectionError =>
      'सर्वर से कनेक्ट नहीं हो पा रहा। नेटवर्क जाँचें।';

  @override
  String get errorRequestCancelled => 'अनुरोध रद्द कर दिया गया।';

  @override
  String get errorBadRequest => 'अमान्य अनुरोध। कृपया अपना इनपुट जाँचें।';

  @override
  String get errorSessionExpired => 'सत्र समाप्त। कृपया पुनः लॉग इन करें।';

  @override
  String get errorPermissionDenied => 'इस कार्य की अनुमति नहीं है।';

  @override
  String get errorResourceNotFound => 'संसाधन नहीं मिला।';

  @override
  String get errorConflict =>
      'विरोध: वर्तमान स्थिति में क्रिया पूरी नहीं हो सकती।';

  @override
  String get errorFileTooLarge => 'फ़ाइल बहुत बड़ी है। अधिकतम आकार 5 MB।';

  @override
  String get errorValidationError => 'सत्यापन त्रुटि। कृपया अपना इनपुट जाँचें।';

  @override
  String get errorTooManyRequests =>
      'बहुत अधिक अनुरोध। कृपया प्रतीक्षा करें और पुनः प्रयास करें।';

  @override
  String get errorServerError =>
      'सर्वर त्रुटि। कृपया बाद में पुनः प्रयास करें।';

  @override
  String errorRequestFailed(String statusCode) {
    return 'स्थिति $statusCode के साथ अनुरोध विफल';
  }

  @override
  String get errorNetworkFailed => 'नेटवर्क अनुरोध विफल हुआ।';

  @override
  String get errorNetworkRequestFailed => 'नेटवर्क अनुरोध विफल';

  @override
  String get errorMalformedSkillResponse => 'विकृत कौशल सुझाव प्रतिक्रिया';

  @override
  String get errorMalformedResponse => 'विकृत प्रतिक्रिया पेलोड';

  @override
  String get errorMalformedAdminResponse => 'विकृत एडमिन अवलोकन प्रतिक्रिया';

  @override
  String get errorAdminAccessRequired => 'एडमिन पहुँच आवश्यक है';

  @override
  String get errorDescriptionUnavailable => 'विवरण अनुपलब्ध';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'केवल $roleLabel यह कार्य कर सकते हैं';
  }

  @override
  String get howToCreateTask => 'How would you like to create your task?';

  @override
  String get fillManually => 'Fill Manually';

  @override
  String get describeWithAi => 'Describe with AI';

  @override
  String get aiDescribeProblem => 'Describe Your Problem';

  @override
  String get aiDescribeSheetSubtitle =>
      'Tell us what you need help with in your own words. Our AI will fill in the form for you.';

  @override
  String get aiDescribeHint =>
      'e.g. My kitchen tap is leaking and I need a plumber to fix it as soon as possible. Budget around 500.';

  @override
  String get aiDescribeMinCharsWarning =>
      'Please describe your problem in at least 10 characters';

  @override
  String get aiGenerateForm => 'Generate Form';

  @override
  String get aiParsingJob => 'Analysing your description…';

  @override
  String get aiJobPrefillSuccess =>
      'Form filled from your description. Please review and adjust.';

  @override
  String aiJobParseWarning(String fields) {
    return 'Partially filled. Missing: $fields';
  }

  @override
  String get aiJobParseFailed =>
      'Could not understand the description. Please try again or fill manually.';

  @override
  String get aiPrefillBanner =>
      'AI pre-filled. Review and edit before posting.';

  @override
  String get addImageContext => 'Add image for context';

  @override
  String get imageAttached => 'Image attached';

  @override
  String get aiTopMatchesSection => 'Top Matches';

  @override
  String get nearbyJobsSection => 'Nearby Jobs';

  @override
  String get aiRankingInProgress => 'Finding your best matches…';

  @override
  String get aiBadge => 'AI';

  @override
  String get suggestBidAi => 'Suggest Bid (AI)';

  @override
  String get aiSuggestingBid => 'Generating bid suggestion…';

  @override
  String get aiBidSuggestedSuccess =>
      'Bid pre-filled from AI suggestion. Review before submitting.';

  @override
  String get aiBidGenerateFailed =>
      'Could not generate a suggestion. Please fill manually.';

  @override
  String get aiBidSuggestionBanner => 'AI suggested. Review and adjust.';

  @override
  String get aiSuggestReply => 'Suggest reply';

  @override
  String get aiGeneratingReplies => 'Generating replies…';

  @override
  String get aiSmartReplies => 'Smart replies';
}
