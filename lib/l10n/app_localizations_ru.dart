// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'Войти';

  @override
  String get registerTitle => 'Создать Аккаунт';

  @override
  String get emailLabel => 'Электронная почта';

  @override
  String get passwordLabel => 'Пароль';

  @override
  String get confirmPasswordLabel => 'Подтвердите пароль';

  @override
  String get forgotPassword => 'Забыли пароль?';

  @override
  String get loginButton => 'Войти';

  @override
  String get registerButton => 'Зарегистрироваться';

  @override
  String get orContinueWith => 'Или продолжить с';

  @override
  String get dontHaveAccount => 'Нет аккаунта?';

  @override
  String get alreadyHaveAccount => 'Уже есть аккаунт?';

  @override
  String get onboardingTitle1 => 'Найдите задачи рядом с вами';

  @override
  String get onboardingSubtitle1 =>
      'Откройте местные вакансии и услуги в вашем районе.';

  @override
  String get onboardingTitle2 => 'Предложите цену и получите работу';

  @override
  String get onboardingSubtitle2 =>
      'Делайте конкурентоспособные ставки и получайте задания, соответствующие вашим навыкам.';

  @override
  String get onboardingTitle3 => 'Безопасные платежи';

  @override
  String get onboardingSubtitle3 =>
      'Платежи через эскроу обеспечивают справедливые и безопасные сделки.';

  @override
  String get getStarted => 'Начать';

  @override
  String get skip => 'Пропустить';

  @override
  String get next => 'Далее';

  @override
  String get roleSelectionTitle => 'Выберите вашу роль';

  @override
  String get roleClient => 'Заказчик';

  @override
  String get roleClientDesc => 'Мне нужна помощь с задачами';

  @override
  String get roleWorker => 'Исполнитель';

  @override
  String get roleWorkerDesc => 'Я хочу предложить свои навыки';

  @override
  String get continueButton => 'Продолжить';

  @override
  String get homeTab => 'Главная';

  @override
  String get jobsTab => 'Работы';

  @override
  String get chatTab => 'Чат';

  @override
  String get profileTab => 'Профиль';

  @override
  String get myJobs => 'Мои работы';

  @override
  String get workerFeed => 'Доступные работы';

  @override
  String get createJob => 'Создать работу';

  @override
  String get postJob => 'Опубликовать работу';

  @override
  String get editJob => 'Редактировать работу';

  @override
  String get deleteJob => 'Удалить работу';

  @override
  String get deleteJobConfirm => 'Вы уверены, что хотите удалить эту работу?';

  @override
  String get jobTitle => 'Заголовок';

  @override
  String get jobDescription => 'Описание';

  @override
  String get jobCategory => 'Категория';

  @override
  String get jobBudget => 'Бюджет';

  @override
  String get jobLocation => 'Местоположение';

  @override
  String get jobDueDate => 'Срок выполнения';

  @override
  String get jobSkills => 'Требуемые навыки';

  @override
  String get jobUrgency => 'Срочность';

  @override
  String get jobPaymentMode => 'Способ оплаты';

  @override
  String get urgencyNormal => 'Обычный';

  @override
  String get urgencyUrgent => 'Срочный';

  @override
  String get paymentOffline => 'Офлайн';

  @override
  String get paymentEscrow => 'Эскроу';

  @override
  String get statusOpenForBids => 'Открыто для ставок';

  @override
  String get statusInProgress => 'В процессе';

  @override
  String get statusCompleted => 'Завершено';

  @override
  String get statusCancelled => 'Отменено';

  @override
  String get statusPendingStart => 'Ожидание начала';

  @override
  String get statusPendingRelease => 'Ожидание выплаты';

  @override
  String get bids => 'Ставки';

  @override
  String get noBids => 'Ставок пока нет';

  @override
  String get placeBid => 'Сделать ставку';

  @override
  String get bidAmount => 'Сумма ставки';

  @override
  String get bidNotes => 'Примечания (необязательно)';

  @override
  String get yourBid => 'Ваша ставка';

  @override
  String get acceptBid => 'Принять ставку';

  @override
  String get rejectBid => 'Отклонить ставку';

  @override
  String get bidAccepted => 'Ставка принята';

  @override
  String get bidRejected => 'Ставка отклонена';

  @override
  String get bidPending => 'Ожидается';

  @override
  String get startCode => 'Код начала';

  @override
  String get releaseCode => 'Код выплаты';

  @override
  String get generateCodes => 'Сгенерировать коды';

  @override
  String get verifyCode => 'Проверить код';

  @override
  String get enterCode => 'Введите код';

  @override
  String get escrow => 'Эскроу';

  @override
  String get lockEscrow => 'Заблокировать эскроу';

  @override
  String get releaseEscrow => 'Выплатить';

  @override
  String get paymentLocked => 'Платёж заблокирован';

  @override
  String get paymentReleased => 'Платёж выплачен';

  @override
  String get conversations => 'Сообщения';

  @override
  String get noMessagesYet => 'Сообщений пока нет';

  @override
  String get noMessagesSubtitle =>
      'Ваши разговоры появятся здесь, когда вы начнёте общение о задаче.';

  @override
  String get startConversation => 'Начните разговор!';

  @override
  String get typeMessage => 'Введите сообщение...';

  @override
  String get typing => 'печатает...';

  @override
  String get newMessages => 'Новые сообщения';

  @override
  String get now => 'сейчас';

  @override
  String minutesAgo(int count) {
    return '$countмин назад';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count исполнителей',
      one: '1 исполнитель',
    );
    return '$_temp0';
  }

  @override
  String get profile => 'Профиль';

  @override
  String get editProfile => 'Редактировать профиль';

  @override
  String get fullName => 'Полное имя';

  @override
  String get phone => 'Номер телефона';

  @override
  String get bio => 'О себе';

  @override
  String get skills => 'Навыки';

  @override
  String get saveChanges => 'Сохранить изменения';

  @override
  String get logout => 'Выйти';

  @override
  String get logoutConfirm => 'Вы уверены, что хотите выйти?';

  @override
  String get settings => 'Настройки';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get language => 'Язык';

  @override
  String get darkMode => 'Тёмная тема';

  @override
  String get lightMode => 'Светлая тема';

  @override
  String get systemMode => 'Система';

  @override
  String get accentColour => 'Цвет акцента';

  @override
  String get customColour => 'Свой';

  @override
  String get preview => 'Предпросмотр';

  @override
  String get previewTitle => 'Ваши цвета отлично выглядят!';

  @override
  String get previewSubtitle => 'Так будет выглядеть ваше приложение.';

  @override
  String get primary => 'Основной';

  @override
  String get secondary => 'Дополнительный';

  @override
  String get reviews => 'Отзывы';

  @override
  String get leaveReview => 'Оставить отзыв';

  @override
  String get noReviews => 'Отзывов пока нет';

  @override
  String get rating => 'Рейтинг';

  @override
  String get reviewComment => 'Комментарий';

  @override
  String get submitReview => 'Отправить отзыв';

  @override
  String get loading => 'Загрузка...';

  @override
  String get loadingConversations => 'Загрузка разговоров...';

  @override
  String get loadingMessages => 'Загрузка сообщений...';

  @override
  String get error => 'Что-то пошло не так';

  @override
  String get retry => 'Повторить';

  @override
  String get cancel => 'Отмена';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get delete => 'Удалить';

  @override
  String get save => 'Сохранить';

  @override
  String get edit => 'Редактировать';

  @override
  String get close => 'Закрыть';

  @override
  String get search => 'Поиск';

  @override
  String get noResults => 'Результатов не найдено';

  @override
  String get pullToRefresh => 'Потяните, чтобы обновить';

  @override
  String get aiSetup => 'Настройка ИИ';

  @override
  String get aiAnalysis => 'Анализ ИИ';

  @override
  String get unlockAi => 'Разблокировать анализ ИИ';

  @override
  String get aiTagline => 'На устройстве  ·  Приватно  ·  Бесплатно';

  @override
  String get deviceCheck => 'Проверка устройства';

  @override
  String get chooseModel => 'Выберите модель';

  @override
  String get chooseModelSubtitle =>
      'Скачайте одну или несколько моделей. Позже можно переключаться между ними.';

  @override
  String get initializingAi => 'Инициализация среды ИИ…';

  @override
  String get modelStorage => 'Хранилище модели';

  @override
  String get deviceIncompatible =>
      'ИИ на устройстве требует физическое устройство с поддержкой GPU. Симуляторы и эмуляторы несовместимы.';

  @override
  String get enhanceDescription => 'Улучшить';

  @override
  String get bidInsights => 'Аналитика ставки';

  @override
  String get whyThisJob => 'Почему это?';

  @override
  String get suggestPrice => 'Предложить цену';

  @override
  String get analyzing => 'Анализ…';

  @override
  String get languagePicker => 'Выберите язык';

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
}
