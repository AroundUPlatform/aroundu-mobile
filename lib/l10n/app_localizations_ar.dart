// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'تسجيل الدخول';

  @override
  String get registerTitle => 'إنشاء حساب';

  @override
  String get emailLabel => 'البريد الإلكتروني';

  @override
  String get passwordLabel => 'كلمة المرور';

  @override
  String get confirmPasswordLabel => 'تأكيد كلمة المرور';

  @override
  String get forgotPassword => 'نسيت كلمة المرور؟';

  @override
  String get loginButton => 'تسجيل الدخول';

  @override
  String get registerButton => 'التسجيل';

  @override
  String get orContinueWith => 'أو تابع باستخدام';

  @override
  String get dontHaveAccount => 'ليس لديك حساب؟';

  @override
  String get alreadyHaveAccount => 'لديك حساب بالفعل؟';

  @override
  String get welcomeBack => 'مرحبًا بعودتك';

  @override
  String get loginSubtitle => 'سجّل الدخول إلى حساب AroundU';

  @override
  String get noAccountYet => 'ليس لديك حساب بعد؟';

  @override
  String get createOne => 'أنشئ حسابًا';

  @override
  String get emailRequired => 'البريد الإلكتروني مطلوب';

  @override
  String get enterValidEmail => 'أدخل بريدًا إلكترونيًا صالحًا';

  @override
  String get passwordRequired => 'كلمة المرور مطلوبة';

  @override
  String get minimumSixCharacters => '6 أحرف على الأقل';

  @override
  String get unableToLogin => 'تعذر تسجيل الدخول';

  @override
  String fieldRequired(String field) {
    return '$field مطلوب';
  }

  @override
  String get enterValidPhone => 'أدخل رقم هاتف صالح';

  @override
  String get unableToRegister => 'تعذر التسجيل';

  @override
  String get registrationSuccess => 'تم التسجيل بنجاح';

  @override
  String get registerSubtitle => 'سجل كمقدم خدمة أو عامل';

  @override
  String get roleLabel => 'الدور';

  @override
  String get roleJobProvider => 'مقدم خدمة';

  @override
  String get roleJobWorker => 'عامل';

  @override
  String get countryLabel => 'الدولة';

  @override
  String get currencyLabel => 'العملة';

  @override
  String get cityLabel => 'المدينة';

  @override
  String get postalCodeLabel => 'الرمز البريدي';

  @override
  String get areaOptionalLabel => 'المنطقة (اختياري)';

  @override
  String get fullAddressOptionalLabel => 'العنوان الكامل (اختياري)';

  @override
  String get alreadyRegistered => 'مسجل بالفعل؟';

  @override
  String get logInLink => 'تسجيل الدخول';

  @override
  String get onboardingTitle1 => 'اعثر على مهام حولك';

  @override
  String get onboardingSubtitle1 => 'اكتشف الوظائف والخدمات المحلية في منطقتك.';

  @override
  String get onboardingTitle2 => 'قدّم عروضاً واحصل على عمل';

  @override
  String get onboardingSubtitle2 =>
      'قدّم عروضاً تنافسية واحصل على مهام تتناسب مع مهاراتك.';

  @override
  String get onboardingTitle3 => 'مدفوعات آمنة';

  @override
  String get onboardingSubtitle3 =>
      'المدفوعات المدعومة بالضمان تضمن معاملات عادلة وآمنة.';

  @override
  String get getStarted => 'ابدأ الآن';

  @override
  String get skip => 'تخطي';

  @override
  String get next => 'التالي';

  @override
  String get newHereCreateAccount => 'جديد هنا؟ أنشئ حسابًا';

  @override
  String get roleSelectionTitle => 'اختر دورك';

  @override
  String get roleClient => 'عميل';

  @override
  String get roleClientDesc => 'أحتاج مساعدة في المهام';

  @override
  String get roleWorker => 'عامل';

  @override
  String get roleWorkerDesc => 'أريد تقديم مهاراتي';

  @override
  String get continueButton => 'متابعة';

  @override
  String get roleSelectionSubtitle => 'كيف تريد استخدام AroundU؟';

  @override
  String signedInAs(String email) {
    return 'مسجل كـ $email';
  }

  @override
  String get roleProviderDesc => 'انشر مهام وابحث عن عمال مهرة';

  @override
  String get roleWorkerDescAlt => 'ابحث عن مهام واكسب بمهاراتك';

  @override
  String get homeTab => 'الرئيسية';

  @override
  String get jobsTab => 'الوظائف';

  @override
  String get chatTab => 'المحادثة';

  @override
  String get profileTab => 'الملف الشخصي';

  @override
  String get providerTabMyTasks => 'مهامي';

  @override
  String get providerTabPostTask => 'نشر مهمة';

  @override
  String get tasksNavLabel => 'المهام';

  @override
  String get postNavLabel => 'نشر';

  @override
  String get workerTabTaskFeed => 'تغذية المهام';

  @override
  String get feedNavLabel => 'التغذية';

  @override
  String get myJobs => 'وظائفي';

  @override
  String get workerFeed => 'الوظائف المتاحة';

  @override
  String get createJob => 'إنشاء وظيفة';

  @override
  String get postJob => 'نشر وظيفة';

  @override
  String get editJob => 'تعديل الوظيفة';

  @override
  String get deleteJob => 'حذف الوظيفة';

  @override
  String get deleteJobConfirm => 'هل أنت متأكد من حذف هذه الوظيفة؟';

  @override
  String get jobTitle => 'العنوان';

  @override
  String get jobDescription => 'الوصف';

  @override
  String get jobCategory => 'الفئة';

  @override
  String get jobBudget => 'الميزانية';

  @override
  String get jobLocation => 'الموقع';

  @override
  String get jobDueDate => 'تاريخ الاستحقاق';

  @override
  String get jobSkills => 'المهارات المطلوبة';

  @override
  String get jobUrgency => 'الاستعجال';

  @override
  String get jobPaymentMode => 'طريقة الدفع';

  @override
  String get urgencyNormal => 'عادي';

  @override
  String get urgencyMedium => 'متوسط';

  @override
  String get urgencyUrgent => 'عاجل';

  @override
  String get urgencyAsap => 'في أسرع وقت';

  @override
  String get paymentOffline => 'غير متصل';

  @override
  String get paymentEscrow => 'ضمان';

  @override
  String get paymentMethod => 'طريقة الدفع';

  @override
  String get payInCash => 'الدفع نقدًا';

  @override
  String get secureEscrow => 'ضمان آمن';

  @override
  String get filterAll => 'الكل';

  @override
  String get filterOpen => 'مفتوح';

  @override
  String get filterActive => 'نشط';

  @override
  String get filterInProgress => 'قيد التنفيذ';

  @override
  String get filterCompleted => 'مكتمل';

  @override
  String get filterCancelled => 'ملغي';

  @override
  String get filterExpired => 'منتهي';

  @override
  String get filterNearby => 'قريب';

  @override
  String get filterAllMine => 'جميع أعمالي';

  @override
  String get filterBidPlaced => 'تم تقديم عرض';

  @override
  String get filterAccepted => 'مقبول';

  @override
  String get noTasksPostedYet => 'لم يتم نشر مهام بعد';

  @override
  String get noOpenTasks => 'لا توجد مهام مفتوحة';

  @override
  String get noActiveTasks => 'لا توجد مهام نشطة';

  @override
  String get noTasksInProgress => 'لا توجد مهام قيد التنفيذ';

  @override
  String get noCompletedTasks => 'لا توجد مهام مكتملة';

  @override
  String get noCancelledTasks => 'لا توجد مهام ملغية';

  @override
  String get noExpiredTasks => 'لا توجد مهام منتهية';

  @override
  String get unableToLoadTasks => 'تعذر تحميل المهام';

  @override
  String get noNearbyJobs => 'لا توجد أعمال قريبة';

  @override
  String get noJobsYetBid => 'لا توجد أعمال بعد — قدم عرضًا';

  @override
  String get noPendingBids => 'لا توجد عروض معلقة';

  @override
  String get noAcceptedJobs => 'لا توجد أعمال مقبولة';

  @override
  String get noJobsInProgress => 'لا توجد أعمال قيد التنفيذ';

  @override
  String get noCompletedJobsYet => 'لا توجد أعمال مكتملة بعد';

  @override
  String get noCancelledJobs => 'لا توجد أعمال ملغية';

  @override
  String get noExpiredJobs => 'لا توجد أعمال منتهية';

  @override
  String get pullDownToRefreshCheck => 'اسحب للتحقق من مهام جديدة';

  @override
  String get unableToLoadJobs => 'تعذر تحميل الأعمال';

  @override
  String get postNewTask => 'نشر مهمة جديدة';

  @override
  String get postTaskSubtitle => 'أضف تفاصيل واضحة ليقدم العمال عروضًا دقيقة';

  @override
  String get taskTitleLabel => 'عنوان المهمة';

  @override
  String get savingLocation => 'جارٍ حفظ الموقع';

  @override
  String get tapToSelectLocation => 'انقر لاختيار الموقع';

  @override
  String get postTaskButton => 'نشر المهمة';

  @override
  String get addSkillWarning => 'أضف مهارة واحدة على الأقل لهذه المهمة';

  @override
  String get enterValidBudget => 'أدخل ميزانية صالحة';

  @override
  String get setJobLocationWarning => 'يرجى تحديد موقع المهمة';

  @override
  String get jobPostedSuccess => 'تم نشر المهمة بنجاح';

  @override
  String get failedToPostJob => 'فشل نشر المهمة';

  @override
  String get failedToSaveLocation => 'فشل حفظ الموقع';

  @override
  String get unableToLoadJobWorkflow => 'تعذر تحميل سير العمل';

  @override
  String get unknownError => 'خطأ غير معروف';

  @override
  String get statusOpenForBids => 'مفتوح للعروض';

  @override
  String get statusInProgress => 'قيد التنفيذ';

  @override
  String get statusCompleted => 'مكتمل';

  @override
  String get statusCancelled => 'ملغى';

  @override
  String get statusPendingStart => 'بانتظار البدء';

  @override
  String get statusPendingRelease => 'بانتظار الإفراج';

  @override
  String get bids => 'العروض';

  @override
  String get noBids => 'لا توجد عروض بعد';

  @override
  String get placeBid => 'قدّم عرضاً';

  @override
  String get bidAmount => 'مبلغ العرض';

  @override
  String get bidNotes => 'ملاحظات (اختياري)';

  @override
  String get yourBid => 'عرضك';

  @override
  String get acceptBid => 'قبول العرض';

  @override
  String get rejectBid => 'رفض العرض';

  @override
  String get bidAccepted => 'تم قبول العرض';

  @override
  String get bidRejected => 'تم رفض العرض';

  @override
  String get bidPending => 'قيد الانتظار';

  @override
  String get offersSection => 'العروض';

  @override
  String get noOffersReceivedYet => 'لم يتم تلقي عروض بعد';

  @override
  String get offerAccepted => 'تم قبول العرض';

  @override
  String get offerRejected => 'تم رفض العرض';

  @override
  String get offerPending => 'العرض معلق';

  @override
  String workerNumber(int id) {
    return 'عامل #$id';
  }

  @override
  String get acceptThisOffer => 'قبول هذا العرض';

  @override
  String get messageWorker => 'مراسلة العامل';

  @override
  String get offerAcceptedSnack => 'تم قبول العرض!';

  @override
  String get yourOffer => 'عرضك';

  @override
  String get bidStatusSelected => 'مختار';

  @override
  String get bidStatusRejected => 'مرفوض';

  @override
  String get bidStatusPending => 'قيد الانتظار';

  @override
  String get placeYourOffer => 'قدم عرضك';

  @override
  String get yourOfferAmount => 'مبلغ عرضك';

  @override
  String get messageToClientOptional => 'رسالة للعميل (اختياري)';

  @override
  String get addPartnerOptional => 'إضافة شريك (اختياري)';

  @override
  String get partnerNameLabel => 'اسم الشريك';

  @override
  String get partnerFeeLabel => 'رسوم الشريك';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'رسوم الشريك: $amount';
  }

  @override
  String get submitOffer => 'تقديم العرض';

  @override
  String get enterValidOfferAmount => 'أدخل مبلغ عرض صالح';

  @override
  String get offerSubmittedSuccess => 'تم تقديم العرض بنجاح';

  @override
  String get clientSelectedYourOffer => 'اختار العميل عرضك';

  @override
  String get handshakeHint => 'يجب على الطرفين مشاركة الرمز لبدء العمل';

  @override
  String get handshakeAccepted => 'تم قبول المصافحة';

  @override
  String get handshakeDeclined => 'تم رفض المصافحة';

  @override
  String get acceptJob => 'قبول العمل';

  @override
  String get decline => 'رفض';

  @override
  String get startCode => 'رمز البدء';

  @override
  String get releaseCode => 'رمز الإفراج';

  @override
  String get generateCodes => 'توليد الرموز';

  @override
  String get verifyCode => 'التحقق من الرمز';

  @override
  String get enterCode => 'أدخل الرمز';

  @override
  String get generateStartCode => 'إنشاء رمز البدء';

  @override
  String get startCodeCopied => 'تم نسخ رمز البدء';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return 'حجز $amount في الضمان';
  }

  @override
  String get releaseCodeCopied => 'تم نسخ رمز الإصدار';

  @override
  String get releaseCodeHint => 'أدخل رمز الإصدار';

  @override
  String get regenerateCode => 'إعادة إنشاء الرمز';

  @override
  String get generateReleaseCode => 'إنشاء رمز الإصدار';

  @override
  String get taskCodesGenerated => 'تم إنشاء رموز المهمة';

  @override
  String get newReleaseCodeGenerated => 'تم إنشاء رمز إصدار جديد';

  @override
  String get readyToBegin => 'جاهز للبدء';

  @override
  String get startCodeHint => 'أدخل رمز البدء';

  @override
  String get verifyAndStartWork => 'تحقق وابدأ العمل';

  @override
  String get startCodeVerified => 'تم التحقق من رمز البدء';

  @override
  String get enterStartCodeFirst => 'أدخل رمز البدء أولاً';

  @override
  String get workInProgress => 'العمل قيد التنفيذ';

  @override
  String get releaseCodePrompt => 'أدخل رمز الإصدار لتحرير الدفع';

  @override
  String get releaseCodeHelper => 'أعطِ هذا الرمز للعامل عند اكتمال العمل';

  @override
  String get confirmWorkCompleted => 'تأكيد اكتمال العمل';

  @override
  String get workConfirmedPaymentReleased => 'تم تأكيد العمل — تم تحرير الدفع';

  @override
  String get enterReleaseCodeWarning => 'أدخل رمز الإصدار';

  @override
  String get escrow => 'ضمان';

  @override
  String get lockEscrow => 'قفل الضمان';

  @override
  String get releaseEscrow => 'إفراج الدفعة';

  @override
  String get paymentLocked => 'الدفعة مقفلة';

  @override
  String get paymentReleased => 'تم إفراج الدفعة';

  @override
  String get paymentSafelyReserved => 'تم حجز الدفع بأمان';

  @override
  String get cancelTask => 'إلغاء المهمة';

  @override
  String get taskCancelled => 'تم إلغاء المهمة';

  @override
  String get deleteTask => 'حذف المهمة';

  @override
  String get deleteTaskTitle => 'حذف المهمة؟';

  @override
  String get deleteTaskConfirm => 'هل أنت متأكد من حذف هذه المهمة؟';

  @override
  String get taskDeleted => 'تم حذف المهمة';

  @override
  String get typeFirstMessage => 'اكتب أول رسالة';

  @override
  String get send => 'إرسال';

  @override
  String get failedToSendMessage => 'فشل إرسال الرسالة';

  @override
  String get conversations => 'الرسائل';

  @override
  String get noMessagesYet => 'لا توجد رسائل بعد';

  @override
  String get noMessagesSubtitle =>
      'ستظهر محادثاتك هنا عندما تبدأ الدردشة حول مهمة.';

  @override
  String get startConversation => 'ابدأ المحادثة!';

  @override
  String get typeMessage => 'اكتب رسالة...';

  @override
  String get typing => 'يكتب...';

  @override
  String get newMessages => 'رسائل جديدة';

  @override
  String get now => 'الآن';

  @override
  String minutesAgo(int count) {
    return 'منذ $countد';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عمال',
      one: 'عامل واحد',
    );
    return '$_temp0';
  }

  @override
  String get chatToday => 'اليوم';

  @override
  String get chatYesterday => 'أمس';

  @override
  String chatYouPrefix(String message) {
    return 'أنت: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'رد: $jobTitle';
  }

  @override
  String get noConversationsYet => 'لا توجد محادثات بعد';

  @override
  String get loadingConversations => 'جارٍ تحميل المحادثات...';

  @override
  String get loadingMessages => 'جارٍ تحميل الرسائل...';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get editProfile => 'تعديل الملف الشخصي';

  @override
  String get fullName => 'الاسم الكامل';

  @override
  String get phone => 'رقم الهاتف';

  @override
  String get bio => 'نبذة';

  @override
  String get skills => 'المهارات';

  @override
  String get saveChanges => 'حفظ التغييرات';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get logoutConfirm => 'هل أنت متأكد من تسجيل الخروج؟';

  @override
  String get myProfile => 'ملفي الشخصي';

  @override
  String get unknown => 'غير معروف';

  @override
  String get experienceLabel => 'الخبرة';

  @override
  String get statusLabel => 'الحالة';

  @override
  String get notSet => 'غير محدد';

  @override
  String get onDuty => 'متاح';

  @override
  String get offDuty => 'غير متاح';

  @override
  String yearsCount(int count) {
    return '$count سنوات';
  }

  @override
  String get themeAndColors => 'السمة والألوان';

  @override
  String get aiModelLabel => 'نموذج الذكاء الاصطناعي';

  @override
  String get availableForWork => 'متاح للعمل';

  @override
  String get visibleToClients => 'مرئي للعملاء';

  @override
  String get currentlyOffDuty => 'غير متاح حاليًا';

  @override
  String get myReviews => 'مراجعاتي';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get deleteAccountConfirm =>
      'هل أنت متأكد من حذف حسابك؟ لا يمكن التراجع عن هذا.';

  @override
  String get couldNotDeleteAccount => 'تعذر حذف الحساب';

  @override
  String get profilePhotoUpdated => 'تم تحديث صورة الملف الشخصي';

  @override
  String get profileUpdated => 'تم تحديث الملف الشخصي';

  @override
  String get nameLabel => 'الاسم';

  @override
  String get profileImageUrl => 'رابط صورة الملف الشخصي';

  @override
  String get yearsOfExperience => 'سنوات الخبرة';

  @override
  String get certificationsLabel => 'الشهادات';

  @override
  String get payoutAccountLabel => 'حساب الدفع';

  @override
  String get onDutySubtitle => 'أنت مرئي للمهام الجديدة';

  @override
  String get loadingProfile => 'جارٍ تحميل الملف الشخصي';

  @override
  String get availabilityLabel => 'التوفر';

  @override
  String get memberLabel => 'عضو';

  @override
  String get available => 'متاح';

  @override
  String get unavailable => 'غير متاح';

  @override
  String get viewAllReviews => 'عرض جميع المراجعات';

  @override
  String get settings => 'الإعدادات';

  @override
  String get appearance => 'المظهر';

  @override
  String get language => 'اللغة';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get lightMode => 'الوضع الفاتح';

  @override
  String get systemMode => 'النظام';

  @override
  String get accentColour => 'لون التمييز';

  @override
  String get customColour => 'مخصص';

  @override
  String get preview => 'معاينة';

  @override
  String get previewTitle => 'ألوانك تبدو رائعة!';

  @override
  String get previewSubtitle => 'هكذا سيبدو تطبيقك.';

  @override
  String get primary => 'أساسي';

  @override
  String get secondary => 'ثانوي';

  @override
  String get modeLabel => 'الوضع';

  @override
  String get pickAColour => 'اختر لونًا';

  @override
  String get systemDefault => 'الافتراضي';

  @override
  String get darkModeSubtitle => 'اختر الوضع: النظام أو فاتح أو داكن';

  @override
  String get reviews => 'التقييمات';

  @override
  String get leaveReview => 'اترك تقييماً';

  @override
  String get noReviews => 'لا توجد تقييمات بعد';

  @override
  String get rating => 'التقييم';

  @override
  String get reviewComment => 'تعليق';

  @override
  String get submitReview => 'إرسال التقييم';

  @override
  String howWasWorker(String name) {
    return 'كيف كان $name؟';
  }

  @override
  String get feedbackHelps => 'ملاحظاتك تساعد';

  @override
  String get thanksForReview => 'شكرًا على المراجعة';

  @override
  String get shareExperienceHint => 'شارك تجربتك';

  @override
  String get ratingExcellent => 'ممتاز';

  @override
  String get ratingGreat => 'رائع';

  @override
  String get ratingGood => 'جيد';

  @override
  String get ratingFair => 'مقبول';

  @override
  String get ratingPoor => 'ضعيف';

  @override
  String get tapToRate => 'انقر للتقييم';

  @override
  String workerReviewsTitle(String name) {
    return 'مراجعات $name';
  }

  @override
  String get loadingReviews => 'جارٍ تحميل المراجعات';

  @override
  String get noReviewsSubtitle => 'لا توجد مراجعات بعد';

  @override
  String get allReviews => 'جميع المراجعات';

  @override
  String reviewCount(int count) {
    return '$count مراجعات';
  }

  @override
  String get anonymous => 'مجهول';

  @override
  String get loading => 'جارٍ التحميل...';

  @override
  String get error => 'حدث خطأ ما';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get tryAgain => 'حاول مجددًا';

  @override
  String get cancel => 'إلغاء';

  @override
  String get confirm => 'تأكيد';

  @override
  String get delete => 'حذف';

  @override
  String get save => 'حفظ';

  @override
  String get edit => 'تعديل';

  @override
  String get close => 'إغلاق';

  @override
  String get search => 'بحث';

  @override
  String get noResults => 'لم يتم العثور على نتائج';

  @override
  String get pullToRefresh => 'اسحب للتحديث';

  @override
  String get pullDownToRefresh => 'اسحب للتحديث';

  @override
  String get yes => 'نعم';

  @override
  String get required => 'مطلوب';

  @override
  String get stop => 'إيقاف';

  @override
  String get clear => 'مسح';

  @override
  String get aiSetup => 'إعداد الذكاء الاصطناعي';

  @override
  String get aiAnalysis => 'تحليل الذكاء الاصطناعي';

  @override
  String get unlockAi => 'فتح تحليل الذكاء الاصطناعي';

  @override
  String get aiTagline => 'على الجهاز  ·  خاص  ·  مجاني';

  @override
  String get deviceCheck => 'فحص الجهاز';

  @override
  String get chooseModel => 'اختر نموذجك';

  @override
  String get chooseModelSubtitle =>
      'قم بتنزيل نموذج واحد أو أكثر. يمكنك التبديل بينها لاحقاً.';

  @override
  String get initializingAi => 'جارٍ تهيئة وقت تشغيل الذكاء الاصطناعي…';

  @override
  String get modelStorage => 'تخزين النموذج';

  @override
  String get deviceIncompatible =>
      'يتطلب الذكاء الاصطناعي على الجهاز جهازاً فعلياً بدعم GPU. المحاكيات غير متوافقة.';

  @override
  String get enhanceDescription => 'تحسين';

  @override
  String get bidInsights => 'رؤى العروض';

  @override
  String get whyThisJob => 'لماذا هذا؟';

  @override
  String get suggestPrice => 'اقتراح السعر';

  @override
  String get analyzing => 'جارٍ التحليل…';

  @override
  String get aiCapabilities => 'قدرات الذكاء الاصطناعي';

  @override
  String get onDeviceAi => 'ذكاء اصطناعي على الجهاز';

  @override
  String get aiTaglineSetup => 'خاص · بدون إنترنت · مجاني';

  @override
  String get aiSetupDescription =>
      'احصل على اقتراحات ذكية للمهام والعروض مدعومة بنموذج ذكاء اصطناعي';

  @override
  String get physicalDevice => 'جهاز حقيقي';

  @override
  String get emulatorDetected => 'تم اكتشاف محاكي';

  @override
  String get ram => 'ذاكرة الوصول العشوائي';

  @override
  String get sufficient => 'كافٍ';

  @override
  String get freeStorage => 'تخزين مجاني';

  @override
  String mbFree(int mb) {
    return '$mb ميجا مجاني';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'ميزات الذكاء الاصطناعي تتطلب جهازًا حقيقيًا.';

  @override
  String get multilingual => 'متعدد اللغات';

  @override
  String downloadingProgress(String percent) {
    return 'جارٍ التحميل $percent%';
  }

  @override
  String get loadingModel => 'جارٍ تحميل النموذج';

  @override
  String get retryDownload => 'إعادة محاولة التحميل';

  @override
  String get activeAndReady => 'نشط وجاهز';

  @override
  String get remove => 'إزالة';

  @override
  String get enableAi => 'تفعيل الذكاء الاصطناعي';

  @override
  String get downloadAiModel => 'تحميل نموذج الذكاء الاصطناعي';

  @override
  String get deviceNotSupported => 'الجهاز غير مدعوم';

  @override
  String get downloadBackgroundNote =>
      'التحميل يتم في الخلفية. لا تغلق التطبيق.';

  @override
  String get removeAiModelTitle => 'إزالة نموذج الذكاء الاصطناعي؟';

  @override
  String get removeAiModelConfirm =>
      'هل تريد إزالة نموذج الذكاء الاصطناعي؟ سيحرر  ميجا.';

  @override
  String get analyzeWithAi => 'تحليل بالذكاء الاصطناعي';

  @override
  String get aiAssistantAvailable => 'مساعد الذكاء الاصطناعي متاح';

  @override
  String get aiSetupPrompt =>
      'قم بإعداد نموذج ذكاء اصطناعي على الجهاز للحصول على اقتراحات ذكية.';

  @override
  String get setup => 'إعداد';

  @override
  String get adminDashboard => 'لوحة الإدارة';

  @override
  String get failedToLoadDashboard => 'فشل تحميل لوحة المعلومات';

  @override
  String get platformOverview => 'نظرة عامة على المنصة';

  @override
  String get liveStatistics => 'إحصائيات مباشرة';

  @override
  String get usersSection => 'المستخدمون';

  @override
  String get adminTabClients => 'العملاء';

  @override
  String get adminTabWorkers => 'العمال';

  @override
  String get adminTabAccount => 'الحساب';

  @override
  String get jobsSection => 'الأعمال';

  @override
  String get activeLabel => 'نشط';

  @override
  String get todaySection => 'اليوم';

  @override
  String get createdLabel => 'تم الإنشاء';

  @override
  String get completedLabel => 'مكتمل';

  @override
  String deleteUserTitle(String role) {
    return 'حذف $role؟';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return 'هل أنت متأكد من حذف $name؟';
  }

  @override
  String get userDeletedSuccess => 'تم حذف المستخدم بنجاح';

  @override
  String get unableToLoadUsers => 'تعذر تحميل المستخدمين';

  @override
  String get noClientsFound => 'لم يتم العثور على عملاء';

  @override
  String get noWorkersFound => 'لم يتم العثور على عمال';

  @override
  String get deleteUserTooltip => 'حذف المستخدم';

  @override
  String get adminSession => 'جلسة الإدارة';

  @override
  String get adminManageUsersHint =>
      'إدارة المستخدمين من علامات العملاء والعمال.';

  @override
  String distanceKm(int radius) {
    return '$radius كم';
  }

  @override
  String get youreOffline => 'أنت غير متصل';

  @override
  String get offlineHint => 'أنت غير متصل';

  @override
  String get yourSkills => 'مهاراتك';

  @override
  String get skillsSubtitle => 'أضف مهاراتك وخبراتك';

  @override
  String get addSkillLabel => 'إضافة مهارة';

  @override
  String get typeToSearchSkills => 'اكتب للبحث عن مهارات';

  @override
  String savedSkillsCount(int count) {
    return '$count مهارات محفوظة';
  }

  @override
  String get noSkillsAdded => 'لم تتم إضافة مهارات';

  @override
  String get unableToLoadTaskDetails => 'تعذر تحميل تفاصيل المهمة';

  @override
  String get detailDistance => 'المسافة';

  @override
  String get chooseLocation => 'اختر الموقع';

  @override
  String get savedTab => 'المحفوظة';

  @override
  String get pinOnMapTab => 'تثبيت على الخريطة';

  @override
  String get locationDeniedPermanently => 'تم رفض إذن الموقع نهائيًا';

  @override
  String get couldNotGetLocation => 'تعذر الحصول على الموقع';

  @override
  String get searchPlaces => 'بحث عن أماكن';

  @override
  String get switchToSatellite => 'التبديل للقمر الصناعي';

  @override
  String get switchToRoadMap => 'التبديل للخريطة';

  @override
  String get goToMyLocation => 'الذهاب إلى موقعي';

  @override
  String get confirmLocation => 'تأكيد الموقع';

  @override
  String get saveAddress => 'حفظ العنوان';

  @override
  String get saveAddressSubtitle => 'احفظ هذا العنوان للمهام المستقبلية';

  @override
  String get labelField => 'التسمية';

  @override
  String get labelHome => 'المنزل';

  @override
  String get labelWork => 'العمل';

  @override
  String get labelOther => 'أخرى';

  @override
  String get recipientName => 'اسم المستلم';

  @override
  String get recipientNameHint => 'أدخل اسم المستلم';

  @override
  String get recipientPhone => 'هاتف المستلم';

  @override
  String get recipientPhoneHint => 'أدخل هاتف المستلم';

  @override
  String get pickFromContacts => 'اختر من جهات الاتصال';

  @override
  String get contactsAccessDenied => 'تم رفض الوصول إلى جهات الاتصال';

  @override
  String get openSettings => 'فتح الإعدادات';

  @override
  String get couldNotOpenContacts => 'تعذر فتح جهات الاتصال';

  @override
  String get areaNeighbourhood => 'المنطقة / الحي';

  @override
  String get areaHint => 'مثل المعادي، الزمالك';

  @override
  String get cityHint => 'مثل القاهرة';

  @override
  String get postalCodeRequired => 'الرمز البريدي مطلوب';

  @override
  String get postalCodeHint => 'مثل 11511';

  @override
  String get countryCodeRequired => 'رمز الدولة مطلوب';

  @override
  String get countryCodeHint => '+971';

  @override
  String get requiredSkillsLabel => 'المهارات المطلوبة';

  @override
  String get skillHintText => 'اكتب المهارات وافصلها بفواصل';

  @override
  String get skillHelperEmpty => 'لم تتم إضافة مهارات بعد';

  @override
  String skillsAddedCount(int count) {
    return 'تمت إضافة $count مهارات';
  }

  @override
  String get languagePicker => 'اختر اللغة';

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
  String get accentColorBlue => 'أزرق';

  @override
  String get accentColorYellow => 'أصفر';

  @override
  String get accentColorGreen => 'أخضر';

  @override
  String get accentColorPink => 'وردي';

  @override
  String get accentColorRed => 'أحمر';

  @override
  String get accentColorPurple => 'بنفسجي';

  @override
  String get accentColorOrange => 'برتقالي';

  @override
  String get accentColorTeal => 'أزرق مخضر';

  @override
  String get accentColorCustom => 'مخصص';

  @override
  String get paymentStatusPending => 'الدفع معلق';

  @override
  String get paymentStatusLocked => 'المبلغ محجوز بأمان';

  @override
  String get paymentStatusReleased => 'تم تحرير الدفع بنجاح';

  @override
  String get paymentStatusOffline => 'ادفع مباشرة عند الإنجاز';

  @override
  String paymentStatusGeneric(String status) {
    return 'حالة الدفع: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'مفتوح للعروض';

  @override
  String get jobStatusOfferAccepted => 'تم قبول العرض';

  @override
  String get jobStatusReadyToStart => 'جاهز للبدء';

  @override
  String get jobStatusInProgress => 'قيد التنفيذ';

  @override
  String get jobStatusPendingPayment => 'بانتظار الدفع';

  @override
  String get jobStatusPaymentReleased => 'تم تحرير الدفع';

  @override
  String get jobStatusTaskCompleted => 'المهمة مكتملة';

  @override
  String get jobStatusCancelled => 'ملغي';

  @override
  String get detailBudgetLabel => 'الميزانية';

  @override
  String get detailLocationLabel => 'الموقع';

  @override
  String get detailSkillsLabel => 'المهارات';

  @override
  String get detailJobIdLabel => 'معرف العمل';

  @override
  String get tooltipCopy => 'نسخ';

  @override
  String get tooltipDeleteAddress => 'حذف العنوان';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return 'هل تريد إزالة \"$addressLabel\" من العناوين المحفوظة؟';
  }

  @override
  String get errorNotAuthenticated => 'غير مصادق. يرجى تسجيل الدخول مجددًا.';

  @override
  String get errorCouldNotOpenImagePicker => 'تعذر فتح منتقي الصور.';

  @override
  String get errorCouldNotReadImage => 'تعذرت قراءة الصورة المحددة.';

  @override
  String get errorImageTooLarge => 'يجب أن تكون الصورة أقل من 5 ميجابايت.';

  @override
  String get errorUploadFailed => 'فشل الرفع. حاول مجددًا.';

  @override
  String get errorNameRequired => 'الاسم مطلوب';

  @override
  String get errorRatingRequired => 'يرجى اختيار تقييم';

  @override
  String get errorNotLoggedIn => 'يرجى تسجيل الدخول أولاً';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'تحديث ملف المسؤول غير مدعوم';

  @override
  String get errorAdminDeletionDisabled => 'حذف حساب المسؤول معطل في التطبيق';

  @override
  String get errorConnectionTimeout =>
      'انتهت مهلة الاتصال. تحقق من الشبكة وحاول مجددًا.';

  @override
  String get errorConnectionError => 'تعذر الاتصال بالخادم. تحقق من الشبكة.';

  @override
  String get errorRequestCancelled => 'تم إلغاء الطلب.';

  @override
  String get errorBadRequest => 'طلب غير صالح. تحقق من المدخلات.';

  @override
  String get errorSessionExpired => 'انتهت الجلسة. يرجى تسجيل الدخول مجددًا.';

  @override
  String get errorPermissionDenied => 'ليس لديك صلاحية لهذا الإجراء.';

  @override
  String get errorResourceNotFound => 'المورد غير موجود.';

  @override
  String get errorConflict => 'تعارض: لا يمكن إتمام الإجراء.';

  @override
  String get errorFileTooLarge => 'الملف كبير جدًا. الحد الأقصى 5 ميجابايت.';

  @override
  String get errorValidationError => 'خطأ في التحقق. راجع المدخلات.';

  @override
  String get errorTooManyRequests => 'طلبات كثيرة. انتظر وحاول مجددًا.';

  @override
  String get errorServerError => 'خطأ في الخادم. حاول مجددًا لاحقًا.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'فشل الطلب بالرمز $statusCode';
  }

  @override
  String get errorNetworkFailed => 'فشل طلب الشبكة.';

  @override
  String get errorNetworkRequestFailed => 'فشل طلب الشبكة';

  @override
  String get errorMalformedSkillResponse => 'استجابة مهارات غير صحيحة';

  @override
  String get errorMalformedResponse => 'حمولة استجابة غير صحيحة';

  @override
  String get errorMalformedAdminResponse => 'استجابة إدارية غير صحيحة';

  @override
  String get errorAdminAccessRequired => 'مطلوب صلاحيات المسؤول';

  @override
  String get errorDescriptionUnavailable => 'الوصف غير متاح';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'فقط $roleLabel يمكنهم تنفيذ هذا الإجراء';
  }

  @override
  String get useWithoutSaving => 'استخدم بدون حفظ';

  @override
  String get saveAndUse => 'حفظ واستخدام';

  @override
  String get useMyCurrentLocation => 'استخدم موقعي الحالي';

  @override
  String get detectingLocation => 'جارٍ تحديد الموقع…';
}
