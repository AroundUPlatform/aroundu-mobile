// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'ورود';

  @override
  String get registerTitle => 'ایجاد حساب';

  @override
  String get emailLabel => 'ایمیل';

  @override
  String get passwordLabel => 'رمز عبور';

  @override
  String get confirmPasswordLabel => 'تأیید رمز عبور';

  @override
  String get forgotPassword => 'رمز عبور را فراموش کردید؟';

  @override
  String get loginButton => 'ورود';

  @override
  String get registerButton => 'ثبت نام';

  @override
  String get orContinueWith => 'یا ادامه دادن با';

  @override
  String get dontHaveAccount => 'حساب ندارید؟';

  @override
  String get alreadyHaveAccount => 'قبلاً حساب دارید؟';

  @override
  String get welcomeBack => 'خوش آمدید';

  @override
  String get loginSubtitle => 'وارد حساب AroundU شوید';

  @override
  String get noAccountYet => 'حساب ندارید؟';

  @override
  String get createOne => 'ایجاد';

  @override
  String get emailRequired => 'ایمیل الزامی است';

  @override
  String get enterValidEmail => 'ایمیل معتبر وارد کنید';

  @override
  String get passwordRequired => 'رمز عبور الزامی است';

  @override
  String get minimumSixCharacters => 'حداقل ۶ کاراکتر';

  @override
  String get unableToLogin => 'ورود ناموفق';

  @override
  String fieldRequired(String field) {
    return 'فیلد $field الزامی است';
  }

  @override
  String get enterValidPhone => 'شماره تلفن معتبر وارد کنید';

  @override
  String get unableToRegister => 'ثبت‌نام ناموفق';

  @override
  String get registrationSuccess => 'ثبت‌نام موفق';

  @override
  String get registerSubtitle => 'به عنوان ارائه‌دهنده یا کارگر ثبت‌نام کنید';

  @override
  String get roleLabel => 'نقش';

  @override
  String get roleJobProvider => 'ارائه‌دهنده';

  @override
  String get roleJobWorker => 'کارگر';

  @override
  String get countryLabel => 'کشور';

  @override
  String get currencyLabel => 'واحد پول';

  @override
  String get cityLabel => 'شهر';

  @override
  String get postalCodeLabel => 'کد پستی';

  @override
  String get areaOptionalLabel => 'محله (اختیاری)';

  @override
  String get fullAddressOptionalLabel => 'آدرس کامل (اختیاری)';

  @override
  String get alreadyRegistered => 'قبلاً ثبت‌نام کرده‌اید؟';

  @override
  String get logInLink => 'ورود';

  @override
  String get onboardingTitle1 => 'کارها را در اطراف خود پیدا کنید';

  @override
  String get onboardingSubtitle1 =>
      'مشاغل و خدمات محلی را در محله خود کشف کنید.';

  @override
  String get onboardingTitle2 => 'پیشنهاد بدهید و استخدام شوید';

  @override
  String get onboardingSubtitle2 =>
      'پیشنهادهای رقابتی بدهید و برای کارهایی که با مهارت‌هایتان مطابقت دارد انتخاب شوید.';

  @override
  String get onboardingTitle3 => 'پرداخت‌های امن';

  @override
  String get onboardingSubtitle3 =>
      'پرداخت‌های پشتیبانی‌شده با اسکرو تراکنش‌های عادلانه و امن را تضمین می‌کنند.';

  @override
  String get getStarted => 'شروع کنید';

  @override
  String get skip => 'رد شدن';

  @override
  String get next => 'بعدی';

  @override
  String get newHereCreateAccount => 'تازه‌وارد هستید؟ حساب بسازید';

  @override
  String get roleSelectionTitle => 'نقش خود را انتخاب کنید';

  @override
  String get roleClient => 'مشتری';

  @override
  String get roleClientDesc => 'به کمک در کارها نیاز دارم';

  @override
  String get roleWorker => 'کارگر';

  @override
  String get roleWorkerDesc => 'می‌خواهم مهارت‌هایم را ارائه دهم';

  @override
  String get continueButton => 'ادامه';

  @override
  String get roleSelectionSubtitle =>
      'چگونه می‌خواهید از AroundU استفاده کنید؟';

  @override
  String signedInAs(String email) {
    return 'ورود به عنوان $email';
  }

  @override
  String get roleProviderDesc => 'وظایف منتشر و کارگران واجدشرایط پیدا کنید';

  @override
  String get roleWorkerDescAlt => 'وظایف پیدا و با مهارت‌هایتان درآمد کسب کنید';

  @override
  String get homeTab => 'خانه';

  @override
  String get jobsTab => 'مشاغل';

  @override
  String get chatTab => 'گفتگو';

  @override
  String get profileTab => 'پروفایل';

  @override
  String get providerTabMyTasks => 'وظایف من';

  @override
  String get providerTabPostTask => 'انتشار وظیفه';

  @override
  String get tasksNavLabel => 'وظایف';

  @override
  String get postNavLabel => 'انتشار';

  @override
  String get workerTabTaskFeed => 'فید وظایف';

  @override
  String get feedNavLabel => 'فید';

  @override
  String get myJobs => 'مشاغل من';

  @override
  String get workerFeed => 'مشاغل موجود';

  @override
  String get createJob => 'ایجاد شغل';

  @override
  String get postJob => 'ارسال شغل';

  @override
  String get editJob => 'ویرایش شغل';

  @override
  String get deleteJob => 'حذف شغل';

  @override
  String get deleteJobConfirm =>
      'آیا مطمئنید که می‌خواهید این شغل را حذف کنید؟';

  @override
  String get jobTitle => 'عنوان';

  @override
  String get jobDescription => 'توضیحات';

  @override
  String get jobCategory => 'دسته‌بندی';

  @override
  String get jobBudget => 'بودجه';

  @override
  String get jobLocation => 'مکان';

  @override
  String get jobDueDate => 'تاریخ سررسید';

  @override
  String get jobSkills => 'مهارت‌های مورد نیاز';

  @override
  String get jobUrgency => 'فوریت';

  @override
  String get jobPaymentMode => 'روش پرداخت';

  @override
  String get urgencyNormal => 'عادی';

  @override
  String get urgencyMedium => 'متوسط';

  @override
  String get urgencyUrgent => 'فوری';

  @override
  String get urgencyAsap => 'فوری';

  @override
  String get paymentOffline => 'آفلاین';

  @override
  String get paymentEscrow => 'اسکرو';

  @override
  String get paymentMethod => 'روش پرداخت';

  @override
  String get payInCash => 'پرداخت نقدی';

  @override
  String get secureEscrow => 'امانت امن';

  @override
  String get filterAll => 'همه';

  @override
  String get filterOpen => 'باز';

  @override
  String get filterActive => 'فعال';

  @override
  String get filterInProgress => 'در حال انجام';

  @override
  String get filterCompleted => 'تکمیل شده';

  @override
  String get filterCancelled => 'لغو شده';

  @override
  String get filterExpired => 'منقضی';

  @override
  String get filterNearby => 'نزدیک';

  @override
  String get filterAllMine => 'همه مال من';

  @override
  String get filterBidPlaced => 'پیشنهاد داده شده';

  @override
  String get filterAccepted => 'پذیرفته شده';

  @override
  String get noTasksPostedYet => 'وظیفه‌ای منتشر نشده';

  @override
  String get noOpenTasks => 'وظیفه بازی نیست';

  @override
  String get noActiveTasks => 'وظیفه فعالی نیست';

  @override
  String get noTasksInProgress => 'وظیفه در حال انجامی نیست';

  @override
  String get noCompletedTasks => 'وظیفه تکمیل‌شده‌ای نیست';

  @override
  String get noCancelledTasks => 'وظیفه لغوشده‌ای نیست';

  @override
  String get noExpiredTasks => 'وظیفه منقضی‌ای نیست';

  @override
  String get unableToLoadTasks => 'بارگذاری وظایف ناموفق';

  @override
  String get noNearbyJobs => 'کار نزدیکی نیست';

  @override
  String get noJobsYetBid => 'کاری نیست — پیشنهاد دهید';

  @override
  String get noPendingBids => 'پیشنهاد معلقی نیست';

  @override
  String get noAcceptedJobs => 'کار پذیرفته‌ای نیست';

  @override
  String get noJobsInProgress => 'کار در حال انجامی نیست';

  @override
  String get noCompletedJobsYet => 'کار تکمیل‌شده‌ای نیست';

  @override
  String get noCancelledJobs => 'کار لغوشده‌ای نیست';

  @override
  String get noExpiredJobs => 'کار منقضی‌ای نیست';

  @override
  String get pullDownToRefreshCheck => 'برای بررسی وظایف جدید بکشید';

  @override
  String get unableToLoadJobs => 'بارگذاری کارها ناموفق';

  @override
  String get postNewTask => 'وظیفه جدید';

  @override
  String get postTaskSubtitle => 'جزئیات دقیق برای پیشنهادهای بهتر';

  @override
  String get taskTitleLabel => 'عنوان وظیفه';

  @override
  String get savingLocation => 'ذخیره مکان';

  @override
  String get tapToSelectLocation => 'برای انتخاب مکان لمس کنید';

  @override
  String get postTaskButton => 'انتشار وظیفه';

  @override
  String get addSkillWarning => 'حداقل یک مهارت موردنیاز اضافه کنید';

  @override
  String get enterValidBudget => 'بودجه معتبر وارد کنید';

  @override
  String get setJobLocationWarning => 'مکان وظیفه را تنظیم کنید';

  @override
  String get jobPostedSuccess => 'وظیفه منتشر شد';

  @override
  String get failedToPostJob => 'انتشار ناموفق';

  @override
  String get failedToSaveLocation => 'ذخیره مکان ناموفق';

  @override
  String get unableToLoadJobWorkflow => 'بارگذاری فرآیند ناموفق';

  @override
  String get unknownError => 'خطای ناشناخته';

  @override
  String get statusOpenForBids => 'باز برای پیشنهاد';

  @override
  String get statusInProgress => 'در حال انجام';

  @override
  String get statusCompleted => 'تکمیل شده';

  @override
  String get statusCancelled => 'لغو شده';

  @override
  String get statusPendingStart => 'در انتظار شروع';

  @override
  String get statusPendingRelease => 'در انتظار آزادسازی';

  @override
  String get bids => 'پیشنهادها';

  @override
  String get noBids => 'هنوز پیشنهادی نیست';

  @override
  String get placeBid => 'پیشنهاد بدهید';

  @override
  String get bidAmount => 'مبلغ پیشنهاد';

  @override
  String get bidNotes => 'یادداشت‌ها (اختیاری)';

  @override
  String get yourBid => 'پیشنهاد شما';

  @override
  String get acceptBid => 'قبول پیشنهاد';

  @override
  String get rejectBid => 'رد پیشنهاد';

  @override
  String get bidAccepted => 'پیشنهاد پذیرفته شد';

  @override
  String get bidRejected => 'پیشنهاد رد شد';

  @override
  String get bidPending => 'در انتظار';

  @override
  String get offersSection => 'پیشنهادها';

  @override
  String get noOffersReceivedYet => 'پیشنهادی دریافت نشده';

  @override
  String get offerAccepted => 'پیشنهاد پذیرفته شد';

  @override
  String get offerRejected => 'پیشنهاد رد شد';

  @override
  String get offerPending => 'پیشنهاد معلق';

  @override
  String workerNumber(int id) {
    return 'کارگر #$id';
  }

  @override
  String get acceptThisOffer => 'پذیرش این پیشنهاد';

  @override
  String get messageWorker => 'پیام به کارگر';

  @override
  String get offerAcceptedSnack => 'پیشنهاد پذیرفته شد!';

  @override
  String get yourOffer => 'پیشنهاد شما';

  @override
  String get bidStatusSelected => 'انتخاب شده';

  @override
  String get bidStatusRejected => 'رد شده';

  @override
  String get bidStatusPending => 'در انتظار';

  @override
  String get placeYourOffer => 'پیشنهاد دهید';

  @override
  String get yourOfferAmount => 'مبلغ پیشنهاد';

  @override
  String get messageToClientOptional => 'پیام به مشتری (اختیاری)';

  @override
  String get addPartnerOptional => 'افزودن شریک (اختیاری)';

  @override
  String get partnerNameLabel => 'نام شریک';

  @override
  String get partnerFeeLabel => 'هزینه شریک';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'هزینه شریک: $amount';
  }

  @override
  String get submitOffer => 'ارسال پیشنهاد';

  @override
  String get enterValidOfferAmount => 'مبلغ معتبر وارد کنید';

  @override
  String get offerSubmittedSuccess => 'پیشنهاد ارسال شد';

  @override
  String get clientSelectedYourOffer => 'مشتری پیشنهاد شما را انتخاب کرد';

  @override
  String get handshakeHint => 'هر دو طرف باید کد را وارد کنند';

  @override
  String get handshakeAccepted => 'دست‌دادن پذیرفته شد';

  @override
  String get handshakeDeclined => 'دست‌دادن رد شد';

  @override
  String get acceptJob => 'پذیرش کار';

  @override
  String get decline => 'رد';

  @override
  String get startCode => 'کد شروع';

  @override
  String get releaseCode => 'کد آزادسازی';

  @override
  String get generateCodes => 'تولید کدها';

  @override
  String get verifyCode => 'تأیید کد';

  @override
  String get enterCode => 'کد را وارد کنید';

  @override
  String get generateStartCode => 'تولید کد شروع';

  @override
  String get startCodeCopied => 'کد شروع کپی شد';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return 'رزرو $amount در امانت';
  }

  @override
  String get releaseCodeCopied => 'کد کپی شد';

  @override
  String get releaseCodeHint => 'کد آزادسازی را وارد کنید';

  @override
  String get regenerateCode => 'تولید مجدد';

  @override
  String get generateReleaseCode => 'تولید کد آزادسازی';

  @override
  String get taskCodesGenerated => 'کدها ساخته شد';

  @override
  String get newReleaseCodeGenerated => 'کد آزادسازی جدید ساخته شد';

  @override
  String get readyToBegin => 'آماده شروع';

  @override
  String get startCodeHint => 'کد شروع را وارد کنید';

  @override
  String get verifyAndStartWork => 'تأیید و شروع';

  @override
  String get startCodeVerified => 'کد شروع تأیید شد';

  @override
  String get enterStartCodeFirst => 'ابتدا کد شروع را وارد کنید';

  @override
  String get workInProgress => 'کار در حال انجام';

  @override
  String get releaseCodePrompt => 'کد را برای آزادسازی پرداخت وارد کنید';

  @override
  String get releaseCodeHelper => 'این کد را پس از اتمام کار به کارگر بدهید';

  @override
  String get confirmWorkCompleted => 'تأیید اتمام کار';

  @override
  String get workConfirmedPaymentReleased => 'کار تأیید شد — پرداخت آزاد شد!';

  @override
  String get enterReleaseCodeWarning => 'کد آزادسازی را وارد کنید';

  @override
  String get escrow => 'اسکرو';

  @override
  String get lockEscrow => 'قفل اسکرو';

  @override
  String get releaseEscrow => 'آزادسازی پرداخت';

  @override
  String get paymentLocked => 'پرداخت قفل شد';

  @override
  String get paymentReleased => 'پرداخت آزاد شد';

  @override
  String get paymentSafelyReserved => 'پرداخت به‌صورت امن رزرو شد';

  @override
  String get cancelTask => 'لغو وظیفه';

  @override
  String get taskCancelled => 'وظیفه لغو شد';

  @override
  String get deleteTask => 'حذف وظیفه';

  @override
  String get deleteTaskTitle => 'حذف وظیفه؟';

  @override
  String get deleteTaskConfirm => 'این وظیفه حذف شود؟';

  @override
  String get taskDeleted => 'وظیفه حذف شد';

  @override
  String get typeFirstMessage => 'اولین پیام را بنویسید';

  @override
  String get send => 'ارسال';

  @override
  String get failedToSendMessage => 'ارسال پیام ناموفق';

  @override
  String get conversations => 'پیام‌ها';

  @override
  String get noMessagesYet => 'هنوز پیامی نیست';

  @override
  String get noMessagesSubtitle =>
      'وقتی درباره یک کار گفتگو را شروع کنید، مکالمات شما اینجا نمایش داده می‌شوند.';

  @override
  String get startConversation => 'گفتگو را شروع کنید!';

  @override
  String get typeMessage => 'پیام بنویسید...';

  @override
  String get typing => 'در حال نوشتن...';

  @override
  String get newMessages => 'پیام‌های جدید';

  @override
  String get now => 'الان';

  @override
  String minutesAgo(int count) {
    return '$countدقیقه پیش';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کارگر',
      one: '1 کارگر',
    );
    return '$_temp0';
  }

  @override
  String get chatToday => 'امروز';

  @override
  String get chatYesterday => 'دیروز';

  @override
  String chatYouPrefix(String message) {
    return 'شما: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'پاسخ: $jobTitle';
  }

  @override
  String get noConversationsYet => 'مکالمه‌ای نیست';

  @override
  String get loadingConversations => 'در حال بارگذاری مکالمات...';

  @override
  String get loadingMessages => 'در حال بارگذاری پیام‌ها...';

  @override
  String get profile => 'پروفایل';

  @override
  String get editProfile => 'ویرایش پروفایل';

  @override
  String get fullName => 'نام کامل';

  @override
  String get phone => 'شماره تلفن';

  @override
  String get bio => 'معرفی';

  @override
  String get skills => 'مهارت‌ها';

  @override
  String get saveChanges => 'ذخیره تغییرات';

  @override
  String get logout => 'خروج';

  @override
  String get logoutConfirm => 'آیا مطمئنید که می‌خواهید خارج شوید؟';

  @override
  String get myProfile => 'پروفایل من';

  @override
  String get unknown => 'ناشناخته';

  @override
  String get experienceLabel => 'تجربه';

  @override
  String get statusLabel => 'وضعیت';

  @override
  String get notSet => 'تنظیم نشده';

  @override
  String get onDuty => 'فعال';

  @override
  String get offDuty => 'غیرفعال';

  @override
  String yearsCount(int count) {
    return '$count سال';
  }

  @override
  String get themeAndColors => 'تم و رنگ‌ها';

  @override
  String get aiModelLabel => 'مدل هوش مصنوعی';

  @override
  String get availableForWork => 'آماده کار';

  @override
  String get visibleToClients => 'قابل مشاهده برای مشتریان';

  @override
  String get currentlyOffDuty => 'در حال حاضر غیرفعال';

  @override
  String get myReviews => 'نظرات من';

  @override
  String get deleteAccount => 'حذف حساب';

  @override
  String get deleteAccountConfirm => 'مطمئنید؟ قابل بازگشت نیست.';

  @override
  String get couldNotDeleteAccount => 'حذف حساب ممکن نشد';

  @override
  String get profilePhotoUpdated => 'عکس پروفایل به‌روز شد';

  @override
  String get profileUpdated => 'پروفایل به‌روز شد';

  @override
  String get nameLabel => 'نام';

  @override
  String get profileImageUrl => 'آدرس تصویر';

  @override
  String get yearsOfExperience => 'سال‌های تجربه';

  @override
  String get certificationsLabel => 'گواهی‌نامه‌ها';

  @override
  String get payoutAccountLabel => 'حساب پرداخت';

  @override
  String get onDutySubtitle => 'برای وظایف جدید قابل مشاهده هستید';

  @override
  String get loadingProfile => 'بارگذاری پروفایل';

  @override
  String get availabilityLabel => 'دسترسی';

  @override
  String get memberLabel => 'عضو';

  @override
  String get available => 'در دسترس';

  @override
  String get unavailable => 'در دسترس نیست';

  @override
  String get viewAllReviews => 'مشاهده همه نظرات';

  @override
  String get settings => 'تنظیمات';

  @override
  String get appearance => 'ظاهر';

  @override
  String get language => 'زبان';

  @override
  String get darkMode => 'حالت تاریک';

  @override
  String get lightMode => 'حالت روشن';

  @override
  String get systemMode => 'سیستم';

  @override
  String get accentColour => 'رنگ تأکیدی';

  @override
  String get customColour => 'سفارشی';

  @override
  String get preview => 'پیش‌نمایش';

  @override
  String get previewTitle => 'رنگ‌های شما عالی هستند!';

  @override
  String get previewSubtitle => 'اپلیکیشن شما اینگونه خواهد بود.';

  @override
  String get primary => 'اصلی';

  @override
  String get secondary => 'فرعی';

  @override
  String get modeLabel => 'حالت';

  @override
  String get pickAColour => 'یک رنگ انتخاب کنید';

  @override
  String get systemDefault => 'پیش‌فرض سیستم';

  @override
  String get darkModeSubtitle => 'حالت سیستم، روشن یا تیره را انتخاب کنید';

  @override
  String get reviews => 'نظرات';

  @override
  String get leaveReview => 'نظر بدهید';

  @override
  String get noReviews => 'هنوز نظری نیست';

  @override
  String get rating => 'امتیاز';

  @override
  String get reviewComment => 'نظر';

  @override
  String get submitReview => 'ارسال نظر';

  @override
  String howWasWorker(String name) {
    return '$name چطور بود؟';
  }

  @override
  String get feedbackHelps => 'بازخورد شما کمک‌کننده است';

  @override
  String get thanksForReview => 'ممنون از نظرتان';

  @override
  String get shareExperienceHint => 'تجربه خود را به اشتراک بگذارید';

  @override
  String get ratingExcellent => 'عالی';

  @override
  String get ratingGreat => 'خیلی خوب';

  @override
  String get ratingGood => 'خوب';

  @override
  String get ratingFair => 'متوسط';

  @override
  String get ratingPoor => 'ضعیف';

  @override
  String get tapToRate => 'برای امتیازدهی لمس کنید';

  @override
  String workerReviewsTitle(String name) {
    return 'نظرات $name';
  }

  @override
  String get loadingReviews => 'بارگذاری نظرات';

  @override
  String get noReviewsSubtitle => 'نظری نیست';

  @override
  String get allReviews => 'همه نظرات';

  @override
  String reviewCount(int count) {
    return '$count نظر';
  }

  @override
  String get anonymous => 'ناشناس';

  @override
  String get loading => 'در حال بارگذاری...';

  @override
  String get error => 'مشکلی پیش آمد';

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get tryAgain => 'تلاش مجدد';

  @override
  String get cancel => 'لغو';

  @override
  String get confirm => 'تأیید';

  @override
  String get delete => 'حذف';

  @override
  String get save => 'ذخیره';

  @override
  String get edit => 'ویرایش';

  @override
  String get close => 'بستن';

  @override
  String get search => 'جستجو';

  @override
  String get noResults => 'نتیجه‌ای یافت نشد';

  @override
  String get pullToRefresh => 'برای بازنشانی بکشید';

  @override
  String get pullDownToRefresh => 'برای بازخوانی بکشید';

  @override
  String get yes => 'بله';

  @override
  String get required => 'الزامی';

  @override
  String get stop => 'توقف';

  @override
  String get clear => 'پاک کردن';

  @override
  String get aiSetup => 'راه‌اندازی هوش مصنوعی';

  @override
  String get aiAnalysis => 'تحلیل هوش مصنوعی';

  @override
  String get unlockAi => 'باز کردن تحلیل هوش مصنوعی';

  @override
  String get aiTagline => 'روی دستگاه  ·  خصوصی  ·  رایگان';

  @override
  String get deviceCheck => 'بررسی دستگاه';

  @override
  String get chooseModel => 'مدل خود را انتخاب کنید';

  @override
  String get chooseModelSubtitle =>
      'یک یا چند مدل دانلود کنید. بعداً می‌توانید بین آن‌ها تغییر دهید.';

  @override
  String get initializingAi => 'راه‌اندازی زمان اجرای هوش مصنوعی…';

  @override
  String get modelStorage => 'ذخیره‌سازی مدل';

  @override
  String get deviceIncompatible =>
      'هوش مصنوعی روی دستگاه به دستگاه فیزیکی با پشتیبانی GPU نیاز دارد. شبیه‌سازها سازگار نیستند.';

  @override
  String get enhanceDescription => 'بهبود';

  @override
  String get bidInsights => 'بینش پیشنهاد';

  @override
  String get whyThisJob => 'چرا این؟';

  @override
  String get suggestPrice => 'پیشنهاد قیمت';

  @override
  String get analyzing => 'در حال تحلیل…';

  @override
  String get aiCapabilities => 'قابلیت‌های هوش مصنوعی';

  @override
  String get onDeviceAi => 'هوش مصنوعی روی دستگاه';

  @override
  String get aiTaglineSetup => 'خصوصی · آفلاین · رایگان';

  @override
  String get aiSetupDescription => 'پیشنهادهای هوشمند برای وظایف و قیمت‌ها';

  @override
  String get physicalDevice => 'دستگاه فیزیکی';

  @override
  String get emulatorDetected => 'شبیه‌ساز شناسایی شد';

  @override
  String get ram => 'رم';

  @override
  String get sufficient => 'کافی';

  @override
  String get freeStorage => 'فضای آزاد';

  @override
  String mbFree(int mb) {
    return '$mb مگابایت آزاد';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'ویژگی‌های هوش مصنوعی نیاز به دستگاه فیزیکی دارد.';

  @override
  String get multilingual => 'چندزبانه';

  @override
  String downloadingProgress(String percent) {
    return 'در حال دانلود $percent٪';
  }

  @override
  String get loadingModel => 'بارگذاری مدل';

  @override
  String get retryDownload => 'تلاش مجدد دانلود';

  @override
  String get activeAndReady => 'فعال و آماده';

  @override
  String get remove => 'حذف';

  @override
  String get enableAi => 'فعال‌سازی هوش مصنوعی';

  @override
  String get downloadAiModel => 'دانلود مدل هوش مصنوعی';

  @override
  String get deviceNotSupported => 'دستگاه پشتیبانی نمی‌شود';

  @override
  String get downloadBackgroundNote =>
      'در حال دانلود در پس‌زمینه. برنامه را نبندید.';

  @override
  String get removeAiModelTitle => 'حذف مدل هوش مصنوعی؟';

  @override
  String get removeAiModelConfirm =>
      'مدل هوش مصنوعی حذف شود؟  مگابایت آزاد می‌شود.';

  @override
  String get analyzeWithAi => 'تحلیل با هوش مصنوعی';

  @override
  String get aiAssistantAvailable => 'دستیار هوش مصنوعی در دسترس';

  @override
  String get aiSetupPrompt =>
      'مدل هوش مصنوعی روی دستگاه را برای پیشنهادهای هوشمند تنظیم کنید.';

  @override
  String get setup => 'تنظیم';

  @override
  String get adminDashboard => 'پنل مدیریت';

  @override
  String get failedToLoadDashboard => 'بارگذاری پنل ناموفق';

  @override
  String get platformOverview => 'نمای کلی پلتفرم';

  @override
  String get liveStatistics => 'آمار زنده';

  @override
  String get usersSection => 'کاربران';

  @override
  String get adminTabClients => 'مشتریان';

  @override
  String get adminTabWorkers => 'کارگران';

  @override
  String get adminTabAccount => 'حساب';

  @override
  String get jobsSection => 'کارها';

  @override
  String get activeLabel => 'فعال';

  @override
  String get todaySection => 'امروز';

  @override
  String get createdLabel => 'ایجاد شده';

  @override
  String get completedLabel => 'تکمیل شده';

  @override
  String deleteUserTitle(String role) {
    return 'حذف $role؟';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return '$name حذف شود؟';
  }

  @override
  String get userDeletedSuccess => 'کاربر حذف شد';

  @override
  String get unableToLoadUsers => 'بارگذاری کاربران ناموفق';

  @override
  String get noClientsFound => 'مشتری یافت نشد';

  @override
  String get noWorkersFound => 'کارگری یافت نشد';

  @override
  String get deleteUserTooltip => 'حذف کاربر';

  @override
  String get adminSession => 'جلسه مدیر';

  @override
  String get adminManageUsersHint =>
      'کاربران را از برگه‌های مشتریان و کارگران مدیریت کنید.';

  @override
  String distanceKm(int radius) {
    return '$radius کیلومتر';
  }

  @override
  String get youreOffline => 'آفلاین هستید';

  @override
  String get offlineHint => 'آفلاین هستید';

  @override
  String get yourSkills => 'مهارت‌های شما';

  @override
  String get skillsSubtitle => 'مهارت‌ها و تخصص خود را اضافه کنید';

  @override
  String get addSkillLabel => 'افزودن مهارت';

  @override
  String get typeToSearchSkills => 'جستجوی مهارت';

  @override
  String savedSkillsCount(int count) {
    return '$count مهارت ذخیره شد';
  }

  @override
  String get noSkillsAdded => 'مهارتی اضافه نشده';

  @override
  String get unableToLoadTaskDetails => 'بارگذاری جزئیات ناموفق';

  @override
  String get detailDistance => 'فاصله';

  @override
  String get chooseLocation => 'انتخاب مکان';

  @override
  String get savedTab => 'ذخیره‌شده';

  @override
  String get pinOnMapTab => 'نشان‌گذاری روی نقشه';

  @override
  String get locationDeniedPermanently => 'دسترسی مکان به‌طور دائم رد شد';

  @override
  String get couldNotGetLocation => 'دریافت موقعیت ممکن نشد';

  @override
  String get searchPlaces => 'جستجوی مکان';

  @override
  String get switchToSatellite => 'ماهواره‌ای';

  @override
  String get switchToRoadMap => 'نقشه جاده‌ای';

  @override
  String get goToMyLocation => 'برو به مکان من';

  @override
  String get confirmLocation => 'تأیید مکان';

  @override
  String get useWithoutSaving => 'Use without saving';

  @override
  String get saveAndUse => 'Save & use';

  @override
  String get useMyCurrentLocation => 'Use my current location';

  @override
  String get detectingLocation => 'Detecting location…';

  @override
  String get saveAddress => 'ذخیره آدرس';

  @override
  String get saveAddressSubtitle => 'برای وظایف آینده ذخیره کنید';

  @override
  String get labelField => 'برچسب';

  @override
  String get labelHome => 'خانه';

  @override
  String get labelWork => 'محل کار';

  @override
  String get labelOther => 'سایر';

  @override
  String get recipientName => 'نام گیرنده';

  @override
  String get recipientNameHint => 'نام را وارد کنید';

  @override
  String get recipientPhone => 'تلفن گیرنده';

  @override
  String get recipientPhoneHint => 'شماره تلفن وارد کنید';

  @override
  String get pickFromContacts => 'انتخاب از مخاطبین';

  @override
  String get contactsAccessDenied => 'دسترسی به مخاطبین رد شد';

  @override
  String get openSettings => 'باز کردن تنظیمات';

  @override
  String get couldNotOpenContacts => 'باز کردن مخاطبین ممکن نشد';

  @override
  String get areaNeighbourhood => 'محله';

  @override
  String get areaHint => 'مثلاً تهرانپارس، ونک';

  @override
  String get cityHint => 'مثلاً تهران';

  @override
  String get postalCodeRequired => 'کد پستی الزامی است';

  @override
  String get postalCodeHint => 'مثلاً ۱۲۳۴۵۶۷۸۹۰';

  @override
  String get countryCodeRequired => 'کد کشور الزامی است';

  @override
  String get countryCodeHint => '+۹۸';

  @override
  String get requiredSkillsLabel => 'مهارت‌های لازم';

  @override
  String get skillHintText => 'مهارت‌ها را با کاما جدا کنید';

  @override
  String get skillHelperEmpty => 'هنوز مهارتی اضافه نشده';

  @override
  String skillsAddedCount(int count) {
    return '$count مهارت اضافه شد';
  }

  @override
  String get languagePicker => 'انتخاب زبان';

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
  String get accentColorBlue => 'آبی';

  @override
  String get accentColorYellow => 'زرد';

  @override
  String get accentColorGreen => 'سبز';

  @override
  String get accentColorPink => 'صورتی';

  @override
  String get accentColorRed => 'قرمز';

  @override
  String get accentColorPurple => 'بنفش';

  @override
  String get accentColorOrange => 'نارنجی';

  @override
  String get accentColorTeal => 'سبزآبی';

  @override
  String get accentColorCustom => 'سفارشی';

  @override
  String get paymentStatusPending => 'در انتظار پرداخت';

  @override
  String get paymentStatusLocked => 'مبلغ امن نگه‌داشته شده';

  @override
  String get paymentStatusReleased => 'پرداخت آزاد شد';

  @override
  String get paymentStatusOffline => 'پرداخت پس از اتمام';

  @override
  String paymentStatusGeneric(String status) {
    return 'وضعیت پرداخت: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'باز برای پیشنهادها';

  @override
  String get jobStatusOfferAccepted => 'پیشنهاد پذیرفته شد';

  @override
  String get jobStatusReadyToStart => 'آماده شروع';

  @override
  String get jobStatusInProgress => 'در حال انجام';

  @override
  String get jobStatusPendingPayment => 'در انتظار پرداخت';

  @override
  String get jobStatusPaymentReleased => 'پرداخت آزاد شد';

  @override
  String get jobStatusTaskCompleted => 'وظیفه تکمیل شد';

  @override
  String get jobStatusCancelled => 'لغو شده';

  @override
  String get detailBudgetLabel => 'بودجه';

  @override
  String get detailLocationLabel => 'مکان';

  @override
  String get detailSkillsLabel => 'مهارت‌ها';

  @override
  String get detailJobIdLabel => 'شناسه کار';

  @override
  String get tooltipCopy => 'کپی';

  @override
  String get tooltipDeleteAddress => 'حذف آدرس';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return '\"$addressLabel\" از آدرس‌های ذخیره شده حذف شود؟';
  }

  @override
  String get errorNotAuthenticated => 'احراز هویت نشده. دوباره وارد شوید.';

  @override
  String get errorCouldNotOpenImagePicker =>
      'باز کردن انتخاب‌گر تصویر ممکن نشد.';

  @override
  String get errorCouldNotReadImage => 'خواندن تصویر ممکن نشد.';

  @override
  String get errorImageTooLarge => 'تصویر باید کمتر از ۵ مگابایت باشد.';

  @override
  String get errorUploadFailed => 'آپلود ناموفق. دوباره تلاش کنید.';

  @override
  String get errorNameRequired => 'نام الزامی است';

  @override
  String get errorRatingRequired => 'امتیاز را انتخاب کنید';

  @override
  String get errorNotLoggedIn => 'ابتدا وارد شوید';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'به‌روزرسانی پروفایل مدیر پشتیبانی نمی‌شود';

  @override
  String get errorAdminDeletionDisabled => 'حذف مدیر در برنامه غیرفعال است';

  @override
  String get errorConnectionTimeout => 'وقفه اتصال. دوباره تلاش کنید.';

  @override
  String get errorConnectionError => 'اتصال به سرور ناموفق بود.';

  @override
  String get errorRequestCancelled => 'درخواست لغو شد.';

  @override
  String get errorBadRequest => 'درخواست نامعتبر. ورودی‌ها را بررسی کنید.';

  @override
  String get errorSessionExpired => 'جلسه منقضی شد. دوباره وارد شوید.';

  @override
  String get errorPermissionDenied => 'مجوز رد شد.';

  @override
  String get errorResourceNotFound => 'منبع یافت نشد.';

  @override
  String get errorConflict => 'تعارض: عملیات قابل انجام نیست.';

  @override
  String get errorFileTooLarge => 'فایل بسیار بزرگ است. حداکثر ۵ مگابایت.';

  @override
  String get errorValidationError => 'خطای اعتبارسنجی. ورودی‌ها را بررسی کنید.';

  @override
  String get errorTooManyRequests => 'درخواست‌های زیاد. صبر کنید.';

  @override
  String get errorServerError => 'خطای سرور. بعداً تلاش کنید.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'درخواست ناموفق: وضعیت $statusCode';
  }

  @override
  String get errorNetworkFailed => 'خطای شبکه.';

  @override
  String get errorNetworkRequestFailed => 'خطای شبکه';

  @override
  String get errorMalformedSkillResponse => 'پاسخ مهارت نامعتبر';

  @override
  String get errorMalformedResponse => 'پاسخ نامعتبر';

  @override
  String get errorMalformedAdminResponse => 'پاسخ مدیر نامعتبر';

  @override
  String get errorAdminAccessRequired => 'دسترسی مدیر لازم است';

  @override
  String get errorDescriptionUnavailable => 'توضیحات در دسترس نیست';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'فقط $roleLabel می‌تواند این کار را انجام دهد';
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
