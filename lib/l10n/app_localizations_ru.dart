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
  String get welcomeBack => 'С возвращением';

  @override
  String get loginSubtitle => 'Войдите в аккаунт AroundU';

  @override
  String get noAccountYet => 'Нет аккаунта?';

  @override
  String get createOne => 'Создать';

  @override
  String get emailRequired => 'Эл. почта обязательна';

  @override
  String get enterValidEmail => 'Введите корректную почту';

  @override
  String get passwordRequired => 'Пароль обязателен';

  @override
  String get minimumSixCharacters => 'Минимум 6 символов';

  @override
  String get unableToLogin => 'Ошибка входа';

  @override
  String fieldRequired(String field) {
    return 'Поле $field обязательно';
  }

  @override
  String get enterValidPhone => 'Введите корректный телефон';

  @override
  String get unableToRegister => 'Ошибка регистрации';

  @override
  String get registrationSuccess => 'Регистрация успешна';

  @override
  String get registerSubtitle => 'Зарегистрируйтесь как заказчик или работник';

  @override
  String get roleLabel => 'Роль';

  @override
  String get roleJobProvider => 'Заказчик';

  @override
  String get roleJobWorker => 'Работник';

  @override
  String get countryLabel => 'Страна';

  @override
  String get currencyLabel => 'Валюта';

  @override
  String get cityLabel => 'Город';

  @override
  String get postalCodeLabel => 'Почтовый индекс';

  @override
  String get areaOptionalLabel => 'Район (необяз.)';

  @override
  String get fullAddressOptionalLabel => 'Полный адрес (необяз.)';

  @override
  String get alreadyRegistered => 'Уже зарегистрированы?';

  @override
  String get logInLink => 'Войти';

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
  String get newHereCreateAccount => 'Впервые? Создайте аккаунт';

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
  String get roleSelectionSubtitle => 'Как вы хотите использовать AroundU?';

  @override
  String signedInAs(String email) {
    return 'Вход как $email';
  }

  @override
  String get roleProviderDesc => 'Публикуйте задания и находите работников';

  @override
  String get roleWorkerDescAlt =>
      'Находите заказы и зарабатывайте своими навыками';

  @override
  String get homeTab => 'Главная';

  @override
  String get jobsTab => 'Работы';

  @override
  String get chatTab => 'Чат';

  @override
  String get profileTab => 'Профиль';

  @override
  String get providerTabMyTasks => 'Мои задания';

  @override
  String get providerTabPostTask => 'Опубликовать';

  @override
  String get tasksNavLabel => 'Задания';

  @override
  String get postNavLabel => 'Опубликовать';

  @override
  String get workerTabTaskFeed => 'Лента заданий';

  @override
  String get feedNavLabel => 'Лента';

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
  String get urgencyMedium => 'Средняя';

  @override
  String get urgencyUrgent => 'Срочный';

  @override
  String get urgencyAsap => 'Как можно скорее';

  @override
  String get paymentOffline => 'Офлайн';

  @override
  String get paymentEscrow => 'Эскроу';

  @override
  String get paymentMethod => 'Способ оплаты';

  @override
  String get payInCash => 'Оплата наличными';

  @override
  String get secureEscrow => 'Безопасный эскроу';

  @override
  String get filterAll => 'Все';

  @override
  String get filterOpen => 'Открыто';

  @override
  String get filterActive => 'Активные';

  @override
  String get filterInProgress => 'В процессе';

  @override
  String get filterCompleted => 'Завершено';

  @override
  String get filterCancelled => 'Отменено';

  @override
  String get filterExpired => 'Истекло';

  @override
  String get filterNearby => 'Рядом';

  @override
  String get filterAllMine => 'Все мои';

  @override
  String get filterBidPlaced => 'Заявка подана';

  @override
  String get filterAccepted => 'Принято';

  @override
  String get noTasksPostedYet => 'Нет опубликованных заданий';

  @override
  String get noOpenTasks => 'Нет открытых заданий';

  @override
  String get noActiveTasks => 'Нет активных заданий';

  @override
  String get noTasksInProgress => 'Нет заданий в процессе';

  @override
  String get noCompletedTasks => 'Нет завершённых заданий';

  @override
  String get noCancelledTasks => 'Нет отменённых заданий';

  @override
  String get noExpiredTasks => 'Нет просроченных заданий';

  @override
  String get unableToLoadTasks => 'Ошибка загрузки заданий';

  @override
  String get noNearbyJobs => 'Нет заказов рядом';

  @override
  String get noJobsYetBid => 'Нет заказов — подайте заявку';

  @override
  String get noPendingBids => 'Нет ожидающих заявок';

  @override
  String get noAcceptedJobs => 'Нет принятых заказов';

  @override
  String get noJobsInProgress => 'Нет заказов в процессе';

  @override
  String get noCompletedJobsYet => 'Нет завершённых заказов';

  @override
  String get noCancelledJobs => 'Нет отменённых заказов';

  @override
  String get noExpiredJobs => 'Нет просроченных заказов';

  @override
  String get pullDownToRefreshCheck => 'Потяните для проверки новых заданий';

  @override
  String get unableToLoadJobs => 'Ошибка загрузки заказов';

  @override
  String get postNewTask => 'Новое задание';

  @override
  String get postTaskSubtitle => 'Добавьте детали для точных предложений';

  @override
  String get taskTitleLabel => 'Название задания';

  @override
  String get savingLocation => 'Сохранение места';

  @override
  String get tapToSelectLocation => 'Нажмите для выбора места';

  @override
  String get postTaskButton => 'Опубликовать';

  @override
  String get addSkillWarning => 'Добавьте хотя бы один требуемый навык';

  @override
  String get enterValidBudget => 'Введите корректный бюджет';

  @override
  String get setJobLocationWarning => 'Укажите место задания';

  @override
  String get jobPostedSuccess => 'Задание опубликовано';

  @override
  String get failedToPostJob => 'Ошибка публикации';

  @override
  String get failedToSaveLocation => 'Ошибка сохранения места';

  @override
  String get unableToLoadJobWorkflow => 'Ошибка загрузки процесса';

  @override
  String get unknownError => 'Неизвестная ошибка';

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
  String get offersSection => 'Предложения';

  @override
  String get noOffersReceivedYet => 'Нет полученных предложений';

  @override
  String get offerAccepted => 'Предложение принято';

  @override
  String get offerRejected => 'Предложение отклонено';

  @override
  String get offerPending => 'Предложение ожидает';

  @override
  String workerNumber(int id) {
    return 'Работник #$id';
  }

  @override
  String get acceptThisOffer => 'Принять это предложение';

  @override
  String get messageWorker => 'Написать работнику';

  @override
  String get offerAcceptedSnack => 'Предложение принято!';

  @override
  String get yourOffer => 'Ваше предложение';

  @override
  String get bidStatusSelected => 'Выбран';

  @override
  String get bidStatusRejected => 'Отклонён';

  @override
  String get bidStatusPending => 'Ожидание';

  @override
  String get placeYourOffer => 'Сделайте предложение';

  @override
  String get yourOfferAmount => 'Сумма предложения';

  @override
  String get messageToClientOptional => 'Сообщение клиенту (необяз.)';

  @override
  String get addPartnerOptional => 'Добавить партнёра (необязательно)';

  @override
  String get partnerNameLabel => 'Имя партнёра';

  @override
  String get partnerFeeLabel => 'Комиссия партнёра';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'Комиссия партнёра: $amount';
  }

  @override
  String get submitOffer => 'Отправить предложение';

  @override
  String get enterValidOfferAmount => 'Введите корректную сумму';

  @override
  String get offerSubmittedSuccess => 'Предложение отправлено';

  @override
  String get clientSelectedYourOffer => 'Клиент выбрал ваше предложение';

  @override
  String get handshakeHint => 'Обе стороны должны ввести код для начала';

  @override
  String get handshakeAccepted => 'Рукопожатие принято';

  @override
  String get handshakeDeclined => 'Рукопожатие отклонено';

  @override
  String get acceptJob => 'Принять заказ';

  @override
  String get decline => 'Отклонить';

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
  String get generateStartCode => 'Сгенерировать стартовый код';

  @override
  String get startCodeCopied => 'Стартовый код скопирован';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return 'Зарезервировать $amount на эскроу';
  }

  @override
  String get releaseCodeCopied => 'Код скопирован';

  @override
  String get releaseCodeHint => 'Введите код выпуска';

  @override
  String get regenerateCode => 'Перегенерировать';

  @override
  String get generateReleaseCode => 'Сгенерировать код выпуска';

  @override
  String get taskCodesGenerated => 'Коды сгенерированы';

  @override
  String get newReleaseCodeGenerated => 'Новый код выпуска создан';

  @override
  String get readyToBegin => 'Готов к началу';

  @override
  String get startCodeHint => 'Введите стартовый код';

  @override
  String get verifyAndStartWork => 'Проверить и начать';

  @override
  String get startCodeVerified => 'Стартовый код подтверждён';

  @override
  String get enterStartCodeFirst => 'Сначала введите стартовый код';

  @override
  String get workInProgress => 'Работа идёт';

  @override
  String get releaseCodePrompt => 'Введите код для выпуска оплаты';

  @override
  String get releaseCodeHelper => 'Передайте этот код работнику по завершении';

  @override
  String get confirmWorkCompleted => 'Подтвердить завершение работы';

  @override
  String get workConfirmedPaymentReleased =>
      'Работа подтверждена — оплата выпущена!';

  @override
  String get enterReleaseCodeWarning => 'Введите код выпуска';

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
  String get paymentSafelyReserved => 'Оплата надёжно зарезервирована';

  @override
  String get cancelTask => 'Отменить задание';

  @override
  String get taskCancelled => 'Задание отменено';

  @override
  String get deleteTask => 'Удалить задание';

  @override
  String get deleteTaskTitle => 'Удалить задание?';

  @override
  String get deleteTaskConfirm => 'Удалить это задание?';

  @override
  String get taskDeleted => 'Задание удалено';

  @override
  String get typeFirstMessage => 'Введите первое сообщение';

  @override
  String get send => 'Отправить';

  @override
  String get failedToSendMessage => 'Ошибка отправки сообщения';

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
  String get chatToday => 'Сегодня';

  @override
  String get chatYesterday => 'Вчера';

  @override
  String chatYouPrefix(String message) {
    return 'Вы: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'Re: $jobTitle';
  }

  @override
  String get noConversationsYet => 'Нет разговоров';

  @override
  String get loadingConversations => 'Загрузка разговоров...';

  @override
  String get loadingMessages => 'Загрузка сообщений...';

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
  String get myProfile => 'Мой профиль';

  @override
  String get unknown => 'Неизвестно';

  @override
  String get experienceLabel => 'Опыт';

  @override
  String get statusLabel => 'Статус';

  @override
  String get notSet => 'Не задано';

  @override
  String get onDuty => 'На смене';

  @override
  String get offDuty => 'Не на смене';

  @override
  String yearsCount(int count) {
    return '$count лет';
  }

  @override
  String get themeAndColors => 'Тема и цвета';

  @override
  String get aiModelLabel => 'AI-модель';

  @override
  String get availableForWork => 'Доступен для работы';

  @override
  String get visibleToClients => 'Видимы для клиентов';

  @override
  String get currentlyOffDuty => 'Сейчас не на смене';

  @override
  String get myReviews => 'Мои отзывы';

  @override
  String get deleteAccount => 'Удалить аккаунт';

  @override
  String get deleteAccountConfirm => 'Вы уверены? Это необратимо.';

  @override
  String get couldNotDeleteAccount => 'Не удалось удалить аккаунт';

  @override
  String get profilePhotoUpdated => 'Фото обновлено';

  @override
  String get profileUpdated => 'Профиль обновлён';

  @override
  String get nameLabel => 'Имя';

  @override
  String get profileImageUrl => 'URL фото';

  @override
  String get yearsOfExperience => 'Лет опыта';

  @override
  String get certificationsLabel => 'Сертификаты';

  @override
  String get payoutAccountLabel => 'Счёт выплат';

  @override
  String get onDutySubtitle => 'Вы видимы для новых заданий';

  @override
  String get loadingProfile => 'Загрузка профиля';

  @override
  String get availabilityLabel => 'Доступность';

  @override
  String get memberLabel => 'Участник';

  @override
  String get available => 'Доступен';

  @override
  String get unavailable => 'Недоступен';

  @override
  String get viewAllReviews => 'Все отзывы';

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
  String get modeLabel => 'Режим';

  @override
  String get pickAColour => 'Выберите цвет';

  @override
  String get systemDefault => 'По умолчанию';

  @override
  String get darkModeSubtitle => 'Выберите системный, светлый или тёмный режим';

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
  String howWasWorker(String name) {
    return 'Как вам $name?';
  }

  @override
  String get feedbackHelps => 'Ваш отзыв помогает';

  @override
  String get thanksForReview => 'Спасибо за отзыв';

  @override
  String get shareExperienceHint => 'Поделитесь впечатлениями';

  @override
  String get ratingExcellent => 'Отлично';

  @override
  String get ratingGreat => 'Очень хорошо';

  @override
  String get ratingGood => 'Хорошо';

  @override
  String get ratingFair => 'Удовлетворительно';

  @override
  String get ratingPoor => 'Плохо';

  @override
  String get tapToRate => 'Нажмите для оценки';

  @override
  String workerReviewsTitle(String name) {
    return 'Отзывы о $name';
  }

  @override
  String get loadingReviews => 'Загрузка отзывов';

  @override
  String get noReviewsSubtitle => 'Нет отзывов';

  @override
  String get allReviews => 'Все отзывы';

  @override
  String reviewCount(int count) {
    return '$count отзывов';
  }

  @override
  String get anonymous => 'Аноним';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'Что-то пошло не так';

  @override
  String get retry => 'Повторить';

  @override
  String get tryAgain => 'Повторить';

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
  String get pullDownToRefresh => 'Потяните для обновления';

  @override
  String get yes => 'Да';

  @override
  String get required => 'Обязательно';

  @override
  String get stop => 'Стоп';

  @override
  String get clear => 'Очистить';

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
  String get aiCapabilities => 'Возможности AI';

  @override
  String get onDeviceAi => 'AI на устройстве';

  @override
  String get aiTaglineSetup => 'Приватно · Офлайн · Бесплатно';

  @override
  String get aiSetupDescription =>
      'Получайте умные подсказки для задач и предложений';

  @override
  String get physicalDevice => 'Физическое устройство';

  @override
  String get emulatorDetected => 'Обнаружен эмулятор';

  @override
  String get ram => 'ОЗУ';

  @override
  String get sufficient => 'Достаточно';

  @override
  String get freeStorage => 'Свободное место';

  @override
  String mbFree(int mb) {
    return '$mb МБ свободно';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'Функции AI требуют физическое устройство.';

  @override
  String get multilingual => 'Многоязычный';

  @override
  String downloadingProgress(String percent) {
    return 'Загрузка $percent%';
  }

  @override
  String get loadingModel => 'Загрузка модели';

  @override
  String get retryDownload => 'Повторить загрузку';

  @override
  String get activeAndReady => 'Активен и готов';

  @override
  String get remove => 'Удалить';

  @override
  String get enableAi => 'Включить AI';

  @override
  String get downloadAiModel => 'Скачать AI-модель';

  @override
  String get deviceNotSupported => 'Устройство не поддерживается';

  @override
  String get downloadBackgroundNote =>
      'Загрузка в фоне. Не закрывайте приложение.';

  @override
  String get removeAiModelTitle => 'Удалить AI-модель?';

  @override
  String get removeAiModelConfirm => 'Удалить AI-модель? Освободит  МБ.';

  @override
  String get analyzeWithAi => 'Анализ с AI';

  @override
  String get aiAssistantAvailable => 'AI-ассистент доступен';

  @override
  String get aiSetupPrompt =>
      'Настройте AI-модель на устройстве для умных подсказок.';

  @override
  String get setup => 'Настроить';

  @override
  String get adminDashboard => 'Панель администратора';

  @override
  String get failedToLoadDashboard => 'Ошибка загрузки панели';

  @override
  String get platformOverview => 'Обзор платформы';

  @override
  String get liveStatistics => 'Статистика в реальном времени';

  @override
  String get usersSection => 'Пользователи';

  @override
  String get adminTabClients => 'Клиенты';

  @override
  String get adminTabWorkers => 'Работники';

  @override
  String get adminTabAccount => 'Аккаунт';

  @override
  String get jobsSection => 'Заказы';

  @override
  String get activeLabel => 'Активный';

  @override
  String get todaySection => 'Сегодня';

  @override
  String get createdLabel => 'Создано';

  @override
  String get completedLabel => 'Завершено';

  @override
  String deleteUserTitle(String role) {
    return 'Удалить $role?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return 'Удалить $name?';
  }

  @override
  String get userDeletedSuccess => 'Пользователь удалён';

  @override
  String get unableToLoadUsers => 'Ошибка загрузки пользователей';

  @override
  String get noClientsFound => 'Клиенты не найдены';

  @override
  String get noWorkersFound => 'Работники не найдены';

  @override
  String get deleteUserTooltip => 'Удалить пользователя';

  @override
  String get adminSession => 'Сессия администратора';

  @override
  String get adminManageUsersHint =>
      'Управляйте пользователями через вкладки Клиенты и Работники.';

  @override
  String distanceKm(int radius) {
    return '$radius км';
  }

  @override
  String get youreOffline => 'Вы офлайн';

  @override
  String get offlineHint => 'Вы офлайн';

  @override
  String get yourSkills => 'Ваши навыки';

  @override
  String get skillsSubtitle => 'Добавьте свои навыки и опыт';

  @override
  String get addSkillLabel => 'Добавить навык';

  @override
  String get typeToSearchSkills => 'Поиск навыков';

  @override
  String savedSkillsCount(int count) {
    return '$count навыков сохранено';
  }

  @override
  String get noSkillsAdded => 'Нет навыков';

  @override
  String get unableToLoadTaskDetails => 'Ошибка загрузки деталей';

  @override
  String get detailDistance => 'Расстояние';

  @override
  String get chooseLocation => 'Выбрать место';

  @override
  String get savedTab => 'Сохранённые';

  @override
  String get pinOnMapTab => 'Отметить на карте';

  @override
  String get locationDeniedPermanently => 'Доступ к геолокации запрещён';

  @override
  String get couldNotGetLocation => 'Не удалось получить местоположение';

  @override
  String get searchPlaces => 'Поиск мест';

  @override
  String get switchToSatellite => 'Спутник';

  @override
  String get switchToRoadMap => 'Карта дорог';

  @override
  String get goToMyLocation => 'К моему месту';

  @override
  String get confirmLocation => 'Подтвердить место';

  @override
  String get useWithoutSaving => 'Use without saving';

  @override
  String get saveAndUse => 'Save & use';

  @override
  String get useMyCurrentLocation => 'Use my current location';

  @override
  String get detectingLocation => 'Detecting location…';

  @override
  String get saveAddress => 'Сохранить адрес';

  @override
  String get saveAddressSubtitle => 'Сохранить для будущих заданий';

  @override
  String get labelField => 'Метка';

  @override
  String get labelHome => 'Дом';

  @override
  String get labelWork => 'Работа';

  @override
  String get labelOther => 'Другое';

  @override
  String get recipientName => 'Имя получателя';

  @override
  String get recipientNameHint => 'Введите имя';

  @override
  String get recipientPhone => 'Телефон получателя';

  @override
  String get recipientPhoneHint => 'Введите телефон';

  @override
  String get pickFromContacts => 'Выбрать из контактов';

  @override
  String get contactsAccessDenied => 'Доступ к контактам запрещён';

  @override
  String get openSettings => 'Открыть настройки';

  @override
  String get couldNotOpenContacts => 'Не удалось открыть контакты';

  @override
  String get areaNeighbourhood => 'Район';

  @override
  String get areaHint => 'Например, Арбат, Невский';

  @override
  String get cityHint => 'Например, Москва';

  @override
  String get postalCodeRequired => 'Индекс обязателен';

  @override
  String get postalCodeHint => 'Например, 101000';

  @override
  String get countryCodeRequired => 'Код страны обязателен';

  @override
  String get countryCodeHint => '+7';

  @override
  String get requiredSkillsLabel => 'Требуемые навыки';

  @override
  String get skillHintText => 'Введите навыки через запятую';

  @override
  String get skillHelperEmpty => 'Навыки ещё не добавлены';

  @override
  String skillsAddedCount(int count) {
    return '$count навыков добавлено';
  }

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

  @override
  String get accentColorBlue => 'Синий';

  @override
  String get accentColorYellow => 'Жёлтый';

  @override
  String get accentColorGreen => 'Зелёный';

  @override
  String get accentColorPink => 'Розовый';

  @override
  String get accentColorRed => 'Красный';

  @override
  String get accentColorPurple => 'Фиолетовый';

  @override
  String get accentColorOrange => 'Оранжевый';

  @override
  String get accentColorTeal => 'Бирюзовый';

  @override
  String get accentColorCustom => 'Пользовательский';

  @override
  String get paymentStatusPending => 'Ожидает оплаты';

  @override
  String get paymentStatusLocked => 'Сумма надёжно зарезервирована';

  @override
  String get paymentStatusReleased => 'Оплата выпущена';

  @override
  String get paymentStatusOffline => 'Оплата при завершении';

  @override
  String paymentStatusGeneric(String status) {
    return 'Статус оплаты: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'Открыто для предложений';

  @override
  String get jobStatusOfferAccepted => 'Предложение принято';

  @override
  String get jobStatusReadyToStart => 'Готов к старту';

  @override
  String get jobStatusInProgress => 'В процессе';

  @override
  String get jobStatusPendingPayment => 'Ожидает оплаты';

  @override
  String get jobStatusPaymentReleased => 'Оплата выпущена';

  @override
  String get jobStatusTaskCompleted => 'Задание завершено';

  @override
  String get jobStatusCancelled => 'Отменено';

  @override
  String get detailBudgetLabel => 'Бюджет';

  @override
  String get detailLocationLabel => 'Место';

  @override
  String get detailSkillsLabel => 'Навыки';

  @override
  String get detailJobIdLabel => 'ID заказа';

  @override
  String get tooltipCopy => 'Копировать';

  @override
  String get tooltipDeleteAddress => 'Удалить адрес';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return 'Удалить \"$addressLabel\" из сохранённых?';
  }

  @override
  String get errorNotAuthenticated => 'Не авторизован. Войдите снова.';

  @override
  String get errorCouldNotOpenImagePicker =>
      'Не удалось открыть выбор изображений.';

  @override
  String get errorCouldNotReadImage => 'Не удалось прочитать изображение.';

  @override
  String get errorImageTooLarge => 'Изображение должно быть менее 5 МБ.';

  @override
  String get errorUploadFailed => 'Загрузка не удалась. Повторите.';

  @override
  String get errorNameRequired => 'Имя обязательно';

  @override
  String get errorRatingRequired => 'Выберите оценку';

  @override
  String get errorNotLoggedIn => 'Сначала войдите';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'Обновление профиля админа не поддерживается';

  @override
  String get errorAdminDeletionDisabled =>
      'Удаление админа отключено в приложении';

  @override
  String get errorConnectionTimeout => 'Таймаут подключения. Повторите.';

  @override
  String get errorConnectionError => 'Ошибка подключения к серверу.';

  @override
  String get errorRequestCancelled => 'Запрос отменён.';

  @override
  String get errorBadRequest => 'Неверный запрос. Проверьте данные.';

  @override
  String get errorSessionExpired => 'Сессия истекла. Войдите снова.';

  @override
  String get errorPermissionDenied => 'Нет разрешения.';

  @override
  String get errorResourceNotFound => 'Ресурс не найден.';

  @override
  String get errorConflict => 'Конфликт: действие невозможно.';

  @override
  String get errorFileTooLarge => 'Файл слишком большой. Макс 5 МБ.';

  @override
  String get errorValidationError => 'Ошибка валидации. Проверьте данные.';

  @override
  String get errorTooManyRequests => 'Слишком много запросов. Подождите.';

  @override
  String get errorServerError => 'Ошибка сервера. Повторите позже.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'Запрос не удался: статус $statusCode';
  }

  @override
  String get errorNetworkFailed => 'Ошибка сети.';

  @override
  String get errorNetworkRequestFailed => 'Ошибка сети';

  @override
  String get errorMalformedSkillResponse => 'Некорректный ответ навыков';

  @override
  String get errorMalformedResponse => 'Некорректный ответ';

  @override
  String get errorMalformedAdminResponse => 'Некорректный ответ администратора';

  @override
  String get errorAdminAccessRequired => 'Требуется доступ администратора';

  @override
  String get errorDescriptionUnavailable => 'Описание недоступно';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'Только $roleLabel могут это сделать';
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
