// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'התחברות';

  @override
  String get registerTitle => 'יצירת חשבון';

  @override
  String get emailLabel => 'אימייל';

  @override
  String get passwordLabel => 'סיסמה';

  @override
  String get confirmPasswordLabel => 'אימות סיסמה';

  @override
  String get forgotPassword => 'שכחת סיסמה?';

  @override
  String get loginButton => 'התחברות';

  @override
  String get registerButton => 'הרשמה';

  @override
  String get orContinueWith => 'או המשך עם';

  @override
  String get dontHaveAccount => 'אין לך חשבון?';

  @override
  String get alreadyHaveAccount => 'כבר יש לך חשבון?';

  @override
  String get welcomeBack => 'ברוך שובך';

  @override
  String get loginSubtitle => 'היכנס לחשבון AroundU שלך';

  @override
  String get noAccountYet => 'אין חשבון?';

  @override
  String get createOne => 'צור';

  @override
  String get emailRequired => 'אימייל נדרש';

  @override
  String get enterValidEmail => 'הזן אימייל תקין';

  @override
  String get passwordRequired => 'סיסמה נדרשת';

  @override
  String get minimumSixCharacters => 'לפחות 6 תווים';

  @override
  String get unableToLogin => 'כניסה נכשלה';

  @override
  String fieldRequired(String field) {
    return 'השדה $field נדרש';
  }

  @override
  String get enterValidPhone => 'הזן טלפון תקין';

  @override
  String get unableToRegister => 'הרשמה נכשלה';

  @override
  String get registrationSuccess => 'הרשמה הצליחה';

  @override
  String get registerSubtitle => 'הירשם כמזמין או עובד';

  @override
  String get roleLabel => 'תפקיד';

  @override
  String get roleJobProvider => 'מזמין';

  @override
  String get roleJobWorker => 'עובד';

  @override
  String get countryLabel => 'מדינה';

  @override
  String get currencyLabel => 'מטבע';

  @override
  String get cityLabel => 'עיר';

  @override
  String get postalCodeLabel => 'מיקוד';

  @override
  String get areaOptionalLabel => 'שכונה (אופציונלי)';

  @override
  String get fullAddressOptionalLabel => 'כתובת מלאה (אופציונלי)';

  @override
  String get alreadyRegistered => 'כבר רשום?';

  @override
  String get logInLink => 'היכנס';

  @override
  String get onboardingTitle1 => 'מצא משימות סביבך';

  @override
  String get onboardingSubtitle1 => 'גלה עבודות ושירותים מקומיים בשכונה שלך.';

  @override
  String get onboardingTitle2 => 'הגש הצעה והתקבל לעבודה';

  @override
  String get onboardingSubtitle2 =>
      'הגש הצעות תחרותיות והתקבל למשימות שמתאימות לכישוריך.';

  @override
  String get onboardingTitle3 => 'תשלומים מאובטחים';

  @override
  String get onboardingSubtitle3 =>
      'תשלומים מגובי נאמנות מבטיחים עסקאות הוגנות ובטוחות.';

  @override
  String get getStarted => 'התחל';

  @override
  String get skip => 'דלג';

  @override
  String get next => 'הבא';

  @override
  String get newHereCreateAccount => 'חדש? צור חשבון';

  @override
  String get roleSelectionTitle => 'בחר את התפקיד שלך';

  @override
  String get roleClient => 'לקוח';

  @override
  String get roleClientDesc => 'אני צריך עזרה במשימות';

  @override
  String get roleWorker => 'עובד';

  @override
  String get roleWorkerDesc => 'אני רוצה להציע את הכישורים שלי';

  @override
  String get continueButton => 'המשך';

  @override
  String get roleSelectionSubtitle => 'איך תרצה להשתמש ב-AroundU?';

  @override
  String signedInAs(String email) {
    return 'מחובר כ-$email';
  }

  @override
  String get roleProviderDesc => 'פרסם משימות ומצא עובדים מתאימים';

  @override
  String get roleWorkerDescAlt => 'מצא משימות והרוויח עם הכישורים שלך';

  @override
  String get homeTab => 'בית';

  @override
  String get jobsTab => 'עבודות';

  @override
  String get chatTab => 'צ\'אט';

  @override
  String get profileTab => 'פרופיל';

  @override
  String get providerTabMyTasks => 'המשימות שלי';

  @override
  String get providerTabPostTask => 'פרסם משימה';

  @override
  String get tasksNavLabel => 'משימות';

  @override
  String get postNavLabel => 'פרסם';

  @override
  String get workerTabTaskFeed => 'פיד משימות';

  @override
  String get feedNavLabel => 'פיד';

  @override
  String get myJobs => 'העבודות שלי';

  @override
  String get workerFeed => 'עבודות זמינות';

  @override
  String get createJob => 'צור עבודה';

  @override
  String get postJob => 'פרסם עבודה';

  @override
  String get editJob => 'ערוך עבודה';

  @override
  String get deleteJob => 'מחק עבודה';

  @override
  String get deleteJobConfirm => 'האם אתה בטוח שברצונך למחוק עבודה זו?';

  @override
  String get jobTitle => 'כותרת';

  @override
  String get jobDescription => 'תיאור';

  @override
  String get jobCategory => 'קטגוריה';

  @override
  String get jobBudget => 'תקציב';

  @override
  String get jobLocation => 'מיקום';

  @override
  String get jobDueDate => 'תאריך יעד';

  @override
  String get jobSkills => 'כישורים נדרשים';

  @override
  String get jobUrgency => 'דחיפות';

  @override
  String get jobPaymentMode => 'אופן תשלום';

  @override
  String get urgencyNormal => 'רגיל';

  @override
  String get urgencyMedium => 'בינוני';

  @override
  String get urgencyUrgent => 'דחוף';

  @override
  String get urgencyAsap => 'בהקדם';

  @override
  String get paymentOffline => 'לא מקוון';

  @override
  String get paymentEscrow => 'נאמנות';

  @override
  String get paymentMethod => 'אמצעי תשלום';

  @override
  String get payInCash => 'שלם במזומן';

  @override
  String get secureEscrow => 'נאמנות מאובטחת';

  @override
  String get filterAll => 'הכל';

  @override
  String get filterOpen => 'פתוח';

  @override
  String get filterActive => 'פעיל';

  @override
  String get filterInProgress => 'בתהליך';

  @override
  String get filterCompleted => 'הושלם';

  @override
  String get filterCancelled => 'בוטל';

  @override
  String get filterExpired => 'פג';

  @override
  String get filterNearby => 'בקרבת מקום';

  @override
  String get filterAllMine => 'כל שלי';

  @override
  String get filterBidPlaced => 'הצעה הוגשה';

  @override
  String get filterAccepted => 'התקבל';

  @override
  String get noTasksPostedYet => 'לא פורסמו משימ';

  @override
  String get noOpenTasks => 'אין משימות פתוחות';

  @override
  String get noActiveTasks => 'אין משימות פעילות';

  @override
  String get noTasksInProgress => 'אין משימות בתהליך';

  @override
  String get noCompletedTasks => 'אין משימות שהושלמו';

  @override
  String get noCancelledTasks => 'אין משימות שבוטלו';

  @override
  String get noExpiredTasks => 'אין משימות שפגו';

  @override
  String get unableToLoadTasks => 'טעינת משימות נכשלה';

  @override
  String get noNearbyJobs => 'אין עבודות קרובות';

  @override
  String get noJobsYetBid => 'אין עבודות — הגש הצעה';

  @override
  String get noPendingBids => 'אין הצעות ממתינות';

  @override
  String get noAcceptedJobs => 'אין עבודות שהתקבלו';

  @override
  String get noJobsInProgress => 'אין עבודות בתהליך';

  @override
  String get noCompletedJobsYet => 'אין עבודות שהושלמו';

  @override
  String get noCancelledJobs => 'אין עבודות שבוטלו';

  @override
  String get noExpiredJobs => 'אין עבודות שפגו';

  @override
  String get pullDownToRefreshCheck => 'משוך כלפי מטה לבדוק משימות חדשות';

  @override
  String get unableToLoadJobs => 'טעינת עבודות נכשלה';

  @override
  String get postNewTask => 'משימה חדשה';

  @override
  String get postTaskSubtitle => 'הוסף פרטים ברורים להצעות מדויקות';

  @override
  String get taskTitleLabel => 'כותרת משימה';

  @override
  String get savingLocation => 'שומר מיקום';

  @override
  String get tapToSelectLocation => 'הקש לבחירת מיקום';

  @override
  String get postTaskButton => 'פרסם משימה';

  @override
  String get addSkillWarning => 'הוסף לפחות מיומנות נדרשת אחת';

  @override
  String get enterValidBudget => 'הזן תקציב תקין';

  @override
  String get setJobLocationWarning => 'הגדר מיקום משימה';

  @override
  String get jobPostedSuccess => 'משימה פורסמה';

  @override
  String get failedToPostJob => 'פרסום נכשל';

  @override
  String get failedToSaveLocation => 'שמירת מיקום נכשלה';

  @override
  String get unableToLoadJobWorkflow => 'טעינת תהליך נכשלה';

  @override
  String get unknownError => 'שגיאה לא ידועה';

  @override
  String get statusOpenForBids => 'פתוח להצעות';

  @override
  String get statusInProgress => 'בתהליך';

  @override
  String get statusCompleted => 'הושלם';

  @override
  String get statusCancelled => 'בוטל';

  @override
  String get statusPendingStart => 'ממתין להתחלה';

  @override
  String get statusPendingRelease => 'ממתין לשחרור';

  @override
  String get bids => 'הצעות';

  @override
  String get noBids => 'אין הצעות עדיין';

  @override
  String get placeBid => 'הגש הצעה';

  @override
  String get bidAmount => 'סכום ההצעה';

  @override
  String get bidNotes => 'הערות (אופציונלי)';

  @override
  String get yourBid => 'ההצעה שלך';

  @override
  String get acceptBid => 'קבל הצעה';

  @override
  String get rejectBid => 'דחה הצעה';

  @override
  String get bidAccepted => 'ההצעה התקבלה';

  @override
  String get bidRejected => 'ההצעה נדחתה';

  @override
  String get bidPending => 'ממתין';

  @override
  String get offersSection => 'הצעות';

  @override
  String get noOffersReceivedYet => 'לא התקבלו הצעות';

  @override
  String get offerAccepted => 'הצעה התקבלה';

  @override
  String get offerRejected => 'הצעה נדחתה';

  @override
  String get offerPending => 'הצעה ממתינה';

  @override
  String workerNumber(int id) {
    return 'עובד #$id';
  }

  @override
  String get acceptThisOffer => 'קבל הצעה זו';

  @override
  String get messageWorker => 'שלח הודעה לעובד';

  @override
  String get offerAcceptedSnack => 'ההצעה התקבלה!';

  @override
  String get yourOffer => 'ההצעה שלך';

  @override
  String get bidStatusSelected => 'נבחר';

  @override
  String get bidStatusRejected => 'נדחה';

  @override
  String get bidStatusPending => 'ממתין';

  @override
  String get placeYourOffer => 'הגש הצעה';

  @override
  String get yourOfferAmount => 'סכום ההצעה';

  @override
  String get messageToClientOptional => 'הודעה ללקוח (אופציונלי)';

  @override
  String get addPartnerOptional => 'הוסף שותף (אופציונלי)';

  @override
  String get partnerNameLabel => 'שם שותף';

  @override
  String get partnerFeeLabel => 'עמלת שותף';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'עמלת שותף: $amount';
  }

  @override
  String get submitOffer => 'שלח הצעה';

  @override
  String get enterValidOfferAmount => 'הזן סכום תקין';

  @override
  String get offerSubmittedSuccess => 'הצעה נשלחה';

  @override
  String get clientSelectedYourOffer => 'הלקוח בחר בהצעה שלך';

  @override
  String get handshakeHint => 'שני הצדדים צריכים לשתף קוד להתחלה';

  @override
  String get handshakeAccepted => 'לחיצת יד התקבלה';

  @override
  String get handshakeDeclined => 'לחיצת יד נדחתה';

  @override
  String get acceptJob => 'קבל עבודה';

  @override
  String get decline => 'דחה';

  @override
  String get startCode => 'קוד התחלה';

  @override
  String get releaseCode => 'קוד שחרור';

  @override
  String get generateCodes => 'צור קודים';

  @override
  String get verifyCode => 'אמת קוד';

  @override
  String get enterCode => 'הזן קוד';

  @override
  String get generateStartCode => 'צור קוד התחלה';

  @override
  String get startCodeCopied => 'קוד התחלה הועתק';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return 'שמור $amount בנאמנות';
  }

  @override
  String get releaseCodeCopied => 'קוד הועתק';

  @override
  String get releaseCodeHint => 'הזן קוד שחרור';

  @override
  String get regenerateCode => 'צור מחדש';

  @override
  String get generateReleaseCode => 'צור קוד שחרור';

  @override
  String get taskCodesGenerated => 'קודים נוצרו';

  @override
  String get newReleaseCodeGenerated => 'קוד שחרור חדש נוצר';

  @override
  String get readyToBegin => 'מוכן להתחיל';

  @override
  String get startCodeHint => 'הזן קוד התחלה';

  @override
  String get verifyAndStartWork => 'אמת והתחל';

  @override
  String get startCodeVerified => 'קוד התחלה אומת';

  @override
  String get enterStartCodeFirst => 'הזן קוד התחלה קודם';

  @override
  String get workInProgress => 'עבודה בתהליך';

  @override
  String get releaseCodePrompt => 'הזן קוד לשחרור תשלום';

  @override
  String get releaseCodeHelper => 'תן קוד זה לעובד בסיום העבודה';

  @override
  String get confirmWorkCompleted => 'אשר השלמת עבודה';

  @override
  String get workConfirmedPaymentReleased => 'עבודה אושרה — תשלום שוחרר!';

  @override
  String get enterReleaseCodeWarning => 'הזן קוד שחרור';

  @override
  String get escrow => 'נאמנות';

  @override
  String get lockEscrow => 'נעל נאמנות';

  @override
  String get releaseEscrow => 'שחרר תשלום';

  @override
  String get paymentLocked => 'התשלום נעול';

  @override
  String get paymentReleased => 'התשלום שוחרר';

  @override
  String get paymentSafelyReserved => 'התשלום נשמר בבטחה';

  @override
  String get cancelTask => 'בטל משימה';

  @override
  String get taskCancelled => 'משימה בוטלה';

  @override
  String get deleteTask => 'מחק משימה';

  @override
  String get deleteTaskTitle => 'למחוק משימה?';

  @override
  String get deleteTaskConfirm => 'למחוק משימה זו?';

  @override
  String get taskDeleted => 'משימה נמחקה';

  @override
  String get typeFirstMessage => 'הקלד הודעה ראשונה';

  @override
  String get send => 'שלח';

  @override
  String get failedToSendMessage => 'שליחת הודעה נכשלה';

  @override
  String get conversations => 'הודעות';

  @override
  String get noMessagesYet => 'אין הודעות עדיין';

  @override
  String get noMessagesSubtitle =>
      'השיחות שלך יופיעו כאן כשתתחיל לשוחח על משימה.';

  @override
  String get startConversation => 'התחל שיחה!';

  @override
  String get typeMessage => 'הקלד הודעה...';

  @override
  String get typing => 'מקליד...';

  @override
  String get newMessages => 'הודעות חדשות';

  @override
  String get now => 'עכשיו';

  @override
  String minutesAgo(int count) {
    return 'לפני $countד\'';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count עובדים',
      one: 'עובד אחד',
    );
    return '$_temp0';
  }

  @override
  String get chatToday => 'היום';

  @override
  String get chatYesterday => 'אתמול';

  @override
  String chatYouPrefix(String message) {
    return 'אתה: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'תשובה: $jobTitle';
  }

  @override
  String get noConversationsYet => 'אין שיחות';

  @override
  String get loadingConversations => 'טוען שיחות...';

  @override
  String get loadingMessages => 'טוען הודעות...';

  @override
  String get profile => 'פרופיל';

  @override
  String get editProfile => 'ערוך פרופיל';

  @override
  String get fullName => 'שם מלא';

  @override
  String get phone => 'מספר טלפון';

  @override
  String get bio => 'אודות';

  @override
  String get skills => 'כישורים';

  @override
  String get saveChanges => 'שמור שינויים';

  @override
  String get logout => 'התנתק';

  @override
  String get logoutConfirm => 'האם אתה בטוח שברצונך להתנתק?';

  @override
  String get myProfile => 'הפרופיל שלי';

  @override
  String get unknown => 'לא ידוע';

  @override
  String get experienceLabel => 'ניסיון';

  @override
  String get statusLabel => 'סטטוס';

  @override
  String get notSet => 'לא הוגדר';

  @override
  String get onDuty => 'בתפקיד';

  @override
  String get offDuty => 'מחוץ לתפקיד';

  @override
  String yearsCount(int count) {
    return '$count שנים';
  }

  @override
  String get themeAndColors => 'ערכת נושא וצבעים';

  @override
  String get aiModelLabel => 'מודל AI';

  @override
  String get availableForWork => 'זמין לעבודה';

  @override
  String get visibleToClients => 'גלוי ללקוחות';

  @override
  String get currentlyOffDuty => 'כרגע לא בתפקיד';

  @override
  String get myReviews => 'הביקורות שלי';

  @override
  String get deleteAccount => 'מחק חשבון';

  @override
  String get deleteAccountConfirm => 'בטוח? לא ניתן לבטל.';

  @override
  String get couldNotDeleteAccount => 'לא ניתן למחוק חשבון';

  @override
  String get profilePhotoUpdated => 'תמונה עודכנה';

  @override
  String get profileUpdated => 'פרופיל עודכן';

  @override
  String get nameLabel => 'שם';

  @override
  String get profileImageUrl => 'כתובת תמונה';

  @override
  String get yearsOfExperience => 'שנות ניסיון';

  @override
  String get certificationsLabel => 'תעודות';

  @override
  String get payoutAccountLabel => 'חשבון תשלום';

  @override
  String get onDutySubtitle => 'גלוי למשימות חדשות';

  @override
  String get loadingProfile => 'טוען פרופיל';

  @override
  String get availabilityLabel => 'זמינות';

  @override
  String get memberLabel => 'חבר';

  @override
  String get available => 'זמין';

  @override
  String get unavailable => 'לא זמין';

  @override
  String get viewAllReviews => 'צפה בכל הביקורות';

  @override
  String get settings => 'הגדרות';

  @override
  String get appearance => 'מראה';

  @override
  String get language => 'שפה';

  @override
  String get darkMode => 'מצב כהה';

  @override
  String get lightMode => 'מצב בהיר';

  @override
  String get systemMode => 'מערכת';

  @override
  String get accentColour => 'צבע הדגשה';

  @override
  String get customColour => 'מותאם אישית';

  @override
  String get preview => 'תצוגה מקדימה';

  @override
  String get previewTitle => 'הצבעים שלך נראים מעולה!';

  @override
  String get previewSubtitle => 'כך תיראה האפליקציה שלך.';

  @override
  String get primary => 'ראשי';

  @override
  String get secondary => 'משני';

  @override
  String get modeLabel => 'מצב';

  @override
  String get pickAColour => 'בחר צבע';

  @override
  String get systemDefault => 'ברירת מחדל';

  @override
  String get darkModeSubtitle => 'בחר מערכת, בהיר או כהה';

  @override
  String get reviews => 'ביקורות';

  @override
  String get leaveReview => 'השאר ביקורת';

  @override
  String get noReviews => 'אין ביקורות עדיין';

  @override
  String get rating => 'דירוג';

  @override
  String get reviewComment => 'תגובה';

  @override
  String get submitReview => 'שלח ביקורת';

  @override
  String howWasWorker(String name) {
    return 'איך היה $name?';
  }

  @override
  String get feedbackHelps => 'המשוב שלך עוזר';

  @override
  String get thanksForReview => 'תודה על הביקורת';

  @override
  String get shareExperienceHint => 'שתף את החוויה שלך';

  @override
  String get ratingExcellent => 'מצוין';

  @override
  String get ratingGreat => 'טוב מאוד';

  @override
  String get ratingGood => 'טוב';

  @override
  String get ratingFair => 'סביר';

  @override
  String get ratingPoor => 'גרוע';

  @override
  String get tapToRate => 'הקש לדירוג';

  @override
  String workerReviewsTitle(String name) {
    return 'ביקורות על $name';
  }

  @override
  String get loadingReviews => 'טוען ביקורות';

  @override
  String get noReviewsSubtitle => 'אין ביקורות';

  @override
  String get allReviews => 'כל הביקורות';

  @override
  String reviewCount(int count) {
    return '$count ביקורות';
  }

  @override
  String get anonymous => 'אנונימי';

  @override
  String get loading => 'טוען...';

  @override
  String get error => 'משהו השתבש';

  @override
  String get retry => 'נסה שוב';

  @override
  String get tryAgain => 'נסה שוב';

  @override
  String get cancel => 'ביטול';

  @override
  String get confirm => 'אישור';

  @override
  String get delete => 'מחק';

  @override
  String get save => 'שמור';

  @override
  String get edit => 'ערוך';

  @override
  String get close => 'סגור';

  @override
  String get search => 'חיפוש';

  @override
  String get noResults => 'לא נמצאו תוצאות';

  @override
  String get pullToRefresh => 'משוך לרענון';

  @override
  String get pullDownToRefresh => 'משוך כלפי מטה לרענון';

  @override
  String get yes => 'כן';

  @override
  String get required => 'נדרש';

  @override
  String get stop => 'עצור';

  @override
  String get clear => 'נקה';

  @override
  String get aiSetup => 'הגדרת AI';

  @override
  String get aiAnalysis => 'ניתוח AI';

  @override
  String get unlockAi => 'בטל נעילת ניתוח AI';

  @override
  String get aiTagline => 'על המכשיר  ·  פרטי  ·  חינם';

  @override
  String get deviceCheck => 'בדיקת מכשיר';

  @override
  String get chooseModel => 'בחר את המודל שלך';

  @override
  String get chooseModelSubtitle =>
      'הורד מודל אחד או יותר. תוכל לעבור ביניהם מאוחר יותר.';

  @override
  String get initializingAi => 'מאתחל זמן ריצת AI…';

  @override
  String get modelStorage => 'אחסון מודל';

  @override
  String get deviceIncompatible =>
      'AI על המכשיר דורש מכשיר פיזי עם תמיכת GPU. סימולטורים ואמולטורים אינם תואמים.';

  @override
  String get enhanceDescription => 'שפר';

  @override
  String get bidInsights => 'תובנות הצעה';

  @override
  String get whyThisJob => 'למה זה?';

  @override
  String get suggestPrice => 'הצע מחיר';

  @override
  String get analyzing => 'מנתח…';

  @override
  String get aiCapabilities => 'יכולות AI';

  @override
  String get onDeviceAi => 'AI על המכשיר';

  @override
  String get aiTaglineSetup => 'פרטי · לא מקוון · חינם';

  @override
  String get aiSetupDescription => 'קבל הצעות חכמות למשימות והצעות';

  @override
  String get physicalDevice => 'מכשיר פיזי';

  @override
  String get emulatorDetected => 'אמולטור זוהה';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => 'מספיק';

  @override
  String get freeStorage => 'אחסון פנוי';

  @override
  String mbFree(int mb) {
    return '$mb MB פנוי';
  }

  @override
  String get aiRequiresPhysicalDevice => 'תכונות AI דורשות מכשיר פיזי.';

  @override
  String get multilingual => 'רב-לשוני';

  @override
  String downloadingProgress(String percent) {
    return 'מוריד $percent%';
  }

  @override
  String get loadingModel => 'טוען מודל';

  @override
  String get retryDownload => 'נסה הורדה שוב';

  @override
  String get activeAndReady => 'פעיל ומוכן';

  @override
  String get remove => 'הסר';

  @override
  String get enableAi => 'הפעל AI';

  @override
  String get downloadAiModel => 'הורד מודל AI';

  @override
  String get deviceNotSupported => 'מכשיר לא נתמך';

  @override
  String get downloadBackgroundNote => 'מוריד ברקע. אל תסגור את האפליקציה.';

  @override
  String get removeAiModelTitle => 'להסיר מודל AI?';

  @override
  String get removeAiModelConfirm => 'להסיר מודל AI? ישחרר  MB.';

  @override
  String get analyzeWithAi => 'ניתוח עם AI';

  @override
  String get aiAssistantAvailable => 'עוזר AI זמין';

  @override
  String get aiSetupPrompt => 'הגדר מודל AI על המכשיר להצעות חכמות.';

  @override
  String get setup => 'הגדרה';

  @override
  String get adminDashboard => 'לוח מנהל';

  @override
  String get failedToLoadDashboard => 'טעינת לוח נכשלה';

  @override
  String get platformOverview => 'סקירת פלטפורמה';

  @override
  String get liveStatistics => 'סטטיסטיקה בזמן אמת';

  @override
  String get usersSection => 'משתמשים';

  @override
  String get adminTabClients => 'לקוחות';

  @override
  String get adminTabWorkers => 'עובדים';

  @override
  String get adminTabAccount => 'חשבון';

  @override
  String get jobsSection => 'עבודות';

  @override
  String get activeLabel => 'פעיל';

  @override
  String get todaySection => 'היום';

  @override
  String get createdLabel => 'נוצר';

  @override
  String get completedLabel => 'הושלם';

  @override
  String deleteUserTitle(String role) {
    return 'למחוק את $role?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return 'למחוק את $name?';
  }

  @override
  String get userDeletedSuccess => 'משתמש נמחק';

  @override
  String get unableToLoadUsers => 'טעינת משתמשים נכשלה';

  @override
  String get noClientsFound => 'לא נמצאו לקוחות';

  @override
  String get noWorkersFound => 'לא נמצאו עובדים';

  @override
  String get deleteUserTooltip => 'מחק משתמש';

  @override
  String get adminSession => 'סשן מנהל';

  @override
  String get adminManageUsersHint => 'נהל משתמשים מלשוניות לקוחות ועובדים.';

  @override
  String distanceKm(int radius) {
    return '$radius ק\"מ';
  }

  @override
  String get youreOffline => 'אתה לא מקוון';

  @override
  String get offlineHint => 'אתה לא מקוון';

  @override
  String get yourSkills => 'המיומנויות שלך';

  @override
  String get skillsSubtitle => 'הוסף מיומנויות ומומחיות';

  @override
  String get addSkillLabel => 'הוסף מיומנות';

  @override
  String get typeToSearchSkills => 'חפש מיומנויות';

  @override
  String savedSkillsCount(int count) {
    return '$count מיומנויות נשמרו';
  }

  @override
  String get noSkillsAdded => 'אין מיומנויות';

  @override
  String get unableToLoadTaskDetails => 'טעינת פרטים נכשלה';

  @override
  String get detailDistance => 'מרחק';

  @override
  String get chooseLocation => 'בחר מיקום';

  @override
  String get savedTab => 'שמורים';

  @override
  String get pinOnMapTab => 'סמן על מפה';

  @override
  String get locationDeniedPermanently => 'הרשאת מיקום נדחתה לצמיתות';

  @override
  String get couldNotGetLocation => 'לא ניתן לקבל מיקום';

  @override
  String get searchPlaces => 'חפש מקומות';

  @override
  String get switchToSatellite => 'לוויין';

  @override
  String get switchToRoadMap => 'מפת כבישים';

  @override
  String get goToMyLocation => 'למיקום שלי';

  @override
  String get confirmLocation => 'אשר מיקום';

  @override
  String get useWithoutSaving => 'Use without saving';

  @override
  String get saveAndUse => 'Save & use';

  @override
  String get useMyCurrentLocation => 'Use my current location';

  @override
  String get detectingLocation => 'Detecting location…';

  @override
  String get saveAddress => 'שמור כתובת';

  @override
  String get saveAddressSubtitle => 'שמור למשימות עתידיות';

  @override
  String get labelField => 'תווית';

  @override
  String get labelHome => 'בית';

  @override
  String get labelWork => 'עבודה';

  @override
  String get labelOther => 'אחר';

  @override
  String get recipientName => 'שם מקבל';

  @override
  String get recipientNameHint => 'הזן שם';

  @override
  String get recipientPhone => 'טלפון מקבל';

  @override
  String get recipientPhoneHint => 'הזן טלפון';

  @override
  String get pickFromContacts => 'בחר מאנשי קשר';

  @override
  String get contactsAccessDenied => 'גישה לאנשי קשר נדחתה';

  @override
  String get openSettings => 'פתח הגדרות';

  @override
  String get couldNotOpenContacts => 'לא ניתן לפתוח אנשי קשר';

  @override
  String get areaNeighbourhood => 'שכונה';

  @override
  String get areaHint => 'למשל רמת גן, רעננה';

  @override
  String get cityHint => 'למשל תל אביב';

  @override
  String get postalCodeRequired => 'מיקוד נדרש';

  @override
  String get postalCodeHint => 'למשל 6100000';

  @override
  String get countryCodeRequired => 'קוד מדינה נדרש';

  @override
  String get countryCodeHint => '+972';

  @override
  String get requiredSkillsLabel => 'מיומנויות נדרשות';

  @override
  String get skillHintText => 'הזן מיומנויות, הפרד בפסיק';

  @override
  String get skillHelperEmpty => 'עדיין לא נוספו מיומנויות';

  @override
  String skillsAddedCount(int count) {
    return '$count מיומנויות נוספו';
  }

  @override
  String get languagePicker => 'בחר שפה';

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
  String get languageMalayalam => 'മലయാളം';

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
  String get accentColorBlue => 'כחול';

  @override
  String get accentColorYellow => 'צהוב';

  @override
  String get accentColorGreen => 'ירוק';

  @override
  String get accentColorPink => 'ורוד';

  @override
  String get accentColorRed => 'אדום';

  @override
  String get accentColorPurple => 'סגול';

  @override
  String get accentColorOrange => 'כתום';

  @override
  String get accentColorTeal => 'טורקיז';

  @override
  String get accentColorCustom => 'מותאם אישית';

  @override
  String get paymentStatusPending => 'ממתין לתשלום';

  @override
  String get paymentStatusLocked => 'הסכום נשמר בבטחה';

  @override
  String get paymentStatusReleased => 'תשלום שוחרר';

  @override
  String get paymentStatusOffline => 'תשלום בסיום';

  @override
  String paymentStatusGeneric(String status) {
    return 'סטטוס תשלום: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'פתוח להצעות';

  @override
  String get jobStatusOfferAccepted => 'הצעה התקבלה';

  @override
  String get jobStatusReadyToStart => 'מוכן להתחיל';

  @override
  String get jobStatusInProgress => 'בתהליך';

  @override
  String get jobStatusPendingPayment => 'ממתין לתשלום';

  @override
  String get jobStatusPaymentReleased => 'תשלום שוחרר';

  @override
  String get jobStatusTaskCompleted => 'משימה הושלמה';

  @override
  String get jobStatusCancelled => 'בוטל';

  @override
  String get detailBudgetLabel => 'תקציב';

  @override
  String get detailLocationLabel => 'מיקום';

  @override
  String get detailSkillsLabel => 'מיומנויות';

  @override
  String get detailJobIdLabel => 'מזהה עבודה';

  @override
  String get tooltipCopy => 'העתק';

  @override
  String get tooltipDeleteAddress => 'מחק כתובת';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return 'למחוק את \"$addressLabel\" מכתובות שמורות?';
  }

  @override
  String get errorNotAuthenticated => 'לא מאומת. היכנס שוב.';

  @override
  String get errorCouldNotOpenImagePicker => 'לא ניתן לפתוח בורר תמונות.';

  @override
  String get errorCouldNotReadImage => 'לא ניתן לקרוא תמונה.';

  @override
  String get errorImageTooLarge => 'תמונה חייבת להיות פחות מ-5MB.';

  @override
  String get errorUploadFailed => 'העלאה נכשלה. נסה שוב.';

  @override
  String get errorNameRequired => 'שם נדרש';

  @override
  String get errorRatingRequired => 'בחר דירוג';

  @override
  String get errorNotLoggedIn => 'היכנס קודם';

  @override
  String get errorAdminProfileUpdateNotSupported => 'עדכון פרופיל מנהל לא נתמך';

  @override
  String get errorAdminDeletionDisabled => 'מחיקת מנהל מושבתת';

  @override
  String get errorConnectionTimeout => 'תם הזמן. נסה שוב.';

  @override
  String get errorConnectionError => 'חיבור לשרת נכשל.';

  @override
  String get errorRequestCancelled => 'הבקשה בוטלה.';

  @override
  String get errorBadRequest => 'בקשה לא תקינה. בדוק קלט.';

  @override
  String get errorSessionExpired => 'הסשן פג. היכנס שוב.';

  @override
  String get errorPermissionDenied => 'ההרשאה נדחתה.';

  @override
  String get errorResourceNotFound => 'משאב לא נמצא.';

  @override
  String get errorConflict => 'התנגשות: לא ניתן להשלים.';

  @override
  String get errorFileTooLarge => 'קובץ גדול מדי. מקס 5MB.';

  @override
  String get errorValidationError => 'שגיאת אימות. בדוק קלט.';

  @override
  String get errorTooManyRequests => 'יותר מדי בקשות. המתן.';

  @override
  String get errorServerError => 'שגיאת שרת. נסה מאוחר יותר.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'בקשה נכשלה: סטטוס $statusCode';
  }

  @override
  String get errorNetworkFailed => 'שגיאת רשת.';

  @override
  String get errorNetworkRequestFailed => 'שגיאת רשת';

  @override
  String get errorMalformedSkillResponse => 'תגובת מיומנויות שגויה';

  @override
  String get errorMalformedResponse => 'תגובה שגויה';

  @override
  String get errorMalformedAdminResponse => 'תגובת מנהל שגויה';

  @override
  String get errorAdminAccessRequired => 'נדרשת גישת מנהל';

  @override
  String get errorDescriptionUnavailable => 'תיאור לא זמין';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'רק $roleLabel יכולים לבצע זאת';
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
