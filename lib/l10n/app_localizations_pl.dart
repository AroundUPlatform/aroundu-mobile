// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'Zaloguj się';

  @override
  String get registerTitle => 'Utwórz Konto';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get passwordLabel => 'Hasło';

  @override
  String get confirmPasswordLabel => 'Potwierdź Hasło';

  @override
  String get forgotPassword => 'Zapomniałeś hasła?';

  @override
  String get loginButton => 'Zaloguj się';

  @override
  String get registerButton => 'Zarejestruj się';

  @override
  String get orContinueWith => 'Lub kontynuuj z';

  @override
  String get dontHaveAccount => 'Nie masz konta?';

  @override
  String get alreadyHaveAccount => 'Masz już konto?';

  @override
  String get welcomeBack => 'Witaj ponownie';

  @override
  String get loginSubtitle => 'Zaloguj się do swojego konta AroundU';

  @override
  String get noAccountYet => 'Nie masz konta?';

  @override
  String get createOne => 'Utwórz';

  @override
  String get emailRequired => 'E-mail wymagany';

  @override
  String get enterValidEmail => 'Wprowadź prawidłowy e-mail';

  @override
  String get passwordRequired => 'Hasło wymagane';

  @override
  String get minimumSixCharacters => 'Minimum 6 znaków';

  @override
  String get unableToLogin => 'Logowanie nieudane';

  @override
  String fieldRequired(String field) {
    return '$field jest wymagane';
  }

  @override
  String get enterValidPhone => 'Wprowadź prawidłowy telefon';

  @override
  String get unableToRegister => 'Rejestracja nieudana';

  @override
  String get registrationSuccess => 'Rejestracja udana';

  @override
  String get registerSubtitle => 'Zarejestruj się jako dostawca lub pracownik';

  @override
  String get roleLabel => 'Rola';

  @override
  String get roleJobProvider => 'Zleceniodawca';

  @override
  String get roleJobWorker => 'Pracownik';

  @override
  String get countryLabel => 'Kraj';

  @override
  String get currencyLabel => 'Waluta';

  @override
  String get cityLabel => 'Miasto';

  @override
  String get postalCodeLabel => 'Kod pocztowy';

  @override
  String get areaOptionalLabel => 'Obszar (opcjonalnie)';

  @override
  String get fullAddressOptionalLabel => 'Pełny adres (opcjonalnie)';

  @override
  String get alreadyRegistered => 'Już zarejestrowany?';

  @override
  String get logInLink => 'Zaloguj się';

  @override
  String get onboardingTitle1 => 'Znajdź Zadania w Okolicy';

  @override
  String get onboardingSubtitle1 =>
      'Odkryj lokalne prace i usługi w swojej okolicy.';

  @override
  String get onboardingTitle2 => 'Licytuj i Zostań Zatrudniony';

  @override
  String get onboardingSubtitle2 =>
      'Składaj konkurencyjne oferty i daj się wybrać do zadań pasujących do twoich umiejętności.';

  @override
  String get onboardingTitle3 => 'Bezpieczne Płatności';

  @override
  String get onboardingSubtitle3 =>
      'Płatności zabezpieczone escrow zapewniają uczciwe i bezpieczne transakcje.';

  @override
  String get getStarted => 'Zacznij';

  @override
  String get skip => 'Pomiń';

  @override
  String get next => 'Dalej';

  @override
  String get newHereCreateAccount => 'Nowy? Utwórz konto';

  @override
  String get roleSelectionTitle => 'Wybierz Swoją Rolę';

  @override
  String get roleClient => 'Klient';

  @override
  String get roleClientDesc => 'Potrzebuję pomocy z zadaniami';

  @override
  String get roleWorker => 'Pracownik';

  @override
  String get roleWorkerDesc => 'Chcę zaoferować swoje umiejętności';

  @override
  String get continueButton => 'Kontynuuj';

  @override
  String get roleSelectionSubtitle => 'Jak chcesz używać AroundU?';

  @override
  String signedInAs(String email) {
    return 'Zalogowany jako $email';
  }

  @override
  String get roleProviderDesc => 'Publikuj zadania i znajdź pracowników';

  @override
  String get roleWorkerDescAlt =>
      'Znajdź zlecenia i zarabiaj swoimi umiejętnościami';

  @override
  String get homeTab => 'Strona Główna';

  @override
  String get jobsTab => 'Prace';

  @override
  String get chatTab => 'Czat';

  @override
  String get profileTab => 'Profil';

  @override
  String get providerTabMyTasks => 'Moje zadania';

  @override
  String get providerTabPostTask => 'Opublikuj zadanie';

  @override
  String get tasksNavLabel => 'Zadania';

  @override
  String get postNavLabel => 'Publikuj';

  @override
  String get workerTabTaskFeed => 'Feed zadań';

  @override
  String get feedNavLabel => 'Feed';

  @override
  String get myJobs => 'Moje Prace';

  @override
  String get workerFeed => 'Dostępne Prace';

  @override
  String get createJob => 'Utwórz Pracę';

  @override
  String get postJob => 'Opublikuj Pracę';

  @override
  String get editJob => 'Edytuj Pracę';

  @override
  String get deleteJob => 'Usuń Pracę';

  @override
  String get deleteJobConfirm => 'Czy na pewno chcesz usunąć tę pracę?';

  @override
  String get jobTitle => 'Tytuł';

  @override
  String get jobDescription => 'Opis';

  @override
  String get jobCategory => 'Kategoria';

  @override
  String get jobBudget => 'Budżet';

  @override
  String get jobLocation => 'Lokalizacja';

  @override
  String get jobDueDate => 'Termin';

  @override
  String get jobSkills => 'Wymagane Umiejętności';

  @override
  String get jobUrgency => 'Pilność';

  @override
  String get jobPaymentMode => 'Metoda Płatności';

  @override
  String get urgencyNormal => 'Normalny';

  @override
  String get urgencyMedium => 'Średni';

  @override
  String get urgencyUrgent => 'Pilny';

  @override
  String get urgencyAsap => 'Jak najszybciej';

  @override
  String get paymentOffline => 'Offline';

  @override
  String get paymentEscrow => 'Escrow';

  @override
  String get paymentMethod => 'Metoda płatności';

  @override
  String get payInCash => 'Zapłać gotówką';

  @override
  String get secureEscrow => 'Bezpieczny depozyt';

  @override
  String get filterAll => 'Wszystkie';

  @override
  String get filterOpen => 'Otwarte';

  @override
  String get filterActive => 'Aktywne';

  @override
  String get filterInProgress => 'W toku';

  @override
  String get filterCompleted => 'Ukończone';

  @override
  String get filterCancelled => 'Anulowane';

  @override
  String get filterExpired => 'Wygasłe';

  @override
  String get filterNearby => 'W pobliżu';

  @override
  String get filterAllMine => 'Wszystkie moje';

  @override
  String get filterBidPlaced => 'Oferta złożona';

  @override
  String get filterAccepted => 'Zaakceptowane';

  @override
  String get noTasksPostedYet => 'Brak opublikowanych zadań';

  @override
  String get noOpenTasks => 'Brak otwartych zadań';

  @override
  String get noActiveTasks => 'Brak aktywnych zadań';

  @override
  String get noTasksInProgress => 'Brak zadań w toku';

  @override
  String get noCompletedTasks => 'Brak ukończonych zadań';

  @override
  String get noCancelledTasks => 'Brak anulowanych zadań';

  @override
  String get noExpiredTasks => 'Brak wygasłych zadań';

  @override
  String get unableToLoadTasks => 'Błąd ładowania zadań';

  @override
  String get noNearbyJobs => 'Brak zleceń w pobliżu';

  @override
  String get noJobsYetBid => 'Brak zleceń — złóż ofertę';

  @override
  String get noPendingBids => 'Brak oczekujących ofert';

  @override
  String get noAcceptedJobs => 'Brak przyjętych zleceń';

  @override
  String get noJobsInProgress => 'Brak zleceń w toku';

  @override
  String get noCompletedJobsYet => 'Brak ukończonych zleceń';

  @override
  String get noCancelledJobs => 'Brak anulowanych zleceń';

  @override
  String get noExpiredJobs => 'Brak wygasłych zleceń';

  @override
  String get pullDownToRefreshCheck => 'Pociągnij, aby sprawdzić nowe zadania';

  @override
  String get unableToLoadJobs => 'Błąd ładowania zleceń';

  @override
  String get postNewTask => 'Nowe zadanie';

  @override
  String get postTaskSubtitle => 'Dodaj szczegóły, aby uzyskać dokładne oferty';

  @override
  String get taskTitleLabel => 'Tytuł zadania';

  @override
  String get savingLocation => 'Zapisywanie lokalizacji';

  @override
  String get tapToSelectLocation => 'Dotknij, aby wybrać lokalizację';

  @override
  String get postTaskButton => 'Opublikuj zadanie';

  @override
  String get addSkillWarning => 'Dodaj co najmniej jedną wymaganą umiejętność';

  @override
  String get enterValidBudget => 'Wprowadź prawidłowy budżet';

  @override
  String get setJobLocationWarning => 'Ustaw lokalizację zadania';

  @override
  String get jobPostedSuccess => 'Zadanie opublikowane';

  @override
  String get failedToPostJob => 'Błąd publikacji';

  @override
  String get failedToSaveLocation => 'Błąd zapisu lokalizacji';

  @override
  String get unableToLoadJobWorkflow => 'Błąd ładowania przepływu';

  @override
  String get unknownError => 'Nieznany błąd';

  @override
  String get statusOpenForBids => 'Otwarty na Oferty';

  @override
  String get statusInProgress => 'W Toku';

  @override
  String get statusCompleted => 'Zakończony';

  @override
  String get statusCancelled => 'Anulowany';

  @override
  String get statusPendingStart => 'Oczekuje na Start';

  @override
  String get statusPendingRelease => 'Oczekuje na Zwolnienie';

  @override
  String get bids => 'Oferty';

  @override
  String get noBids => 'Brak ofert';

  @override
  String get placeBid => 'Złóż Ofertę';

  @override
  String get bidAmount => 'Kwota Oferty';

  @override
  String get bidNotes => 'Uwagi (opcjonalne)';

  @override
  String get yourBid => 'Twoja Oferta';

  @override
  String get acceptBid => 'Akceptuj Ofertę';

  @override
  String get rejectBid => 'Odrzuć Ofertę';

  @override
  String get bidAccepted => 'Oferta Zaakceptowana';

  @override
  String get bidRejected => 'Oferta Odrzucona';

  @override
  String get bidPending => 'Oczekujący';

  @override
  String get offersSection => 'Oferty';

  @override
  String get noOffersReceivedYet => 'Brak otrzymanych ofert';

  @override
  String get offerAccepted => 'Oferta zaakceptowana';

  @override
  String get offerRejected => 'Oferta odrzucona';

  @override
  String get offerPending => 'Oferta oczekuje';

  @override
  String workerNumber(int id) {
    return 'Pracownik #$id';
  }

  @override
  String get acceptThisOffer => 'Przyjmij tę ofertę';

  @override
  String get messageWorker => 'Wiadomość do pracownika';

  @override
  String get offerAcceptedSnack => 'Oferta zaakceptowana!';

  @override
  String get yourOffer => 'Twoja oferta';

  @override
  String get bidStatusSelected => 'Wybrany';

  @override
  String get bidStatusRejected => 'Odrzucony';

  @override
  String get bidStatusPending => 'Oczekujący';

  @override
  String get placeYourOffer => 'Złóż ofertę';

  @override
  String get yourOfferAmount => 'Kwota Twojej oferty';

  @override
  String get messageToClientOptional => 'Wiadomość do klienta (opcjonalne)';

  @override
  String get addPartnerOptional => 'Dodaj partnera (opcjonalne)';

  @override
  String get partnerNameLabel => 'Nazwa partnera';

  @override
  String get partnerFeeLabel => 'Opłata partnera';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'Opłata partnera: $amount';
  }

  @override
  String get submitOffer => 'Złóż ofertę';

  @override
  String get enterValidOfferAmount => 'Wprowadź prawidłową kwotę';

  @override
  String get offerSubmittedSuccess => 'Oferta złożona';

  @override
  String get clientSelectedYourOffer => 'Klient wybrał Twoją ofertę';

  @override
  String get handshakeHint => 'Obie strony muszą udostępnić kod, aby rozpocząć';

  @override
  String get handshakeAccepted => 'Uścisk zaakceptowany';

  @override
  String get handshakeDeclined => 'Uścisk odrzucony';

  @override
  String get acceptJob => 'Przyjmij zlecenie';

  @override
  String get decline => 'Odrzuć';

  @override
  String get startCode => 'Kod Startowy';

  @override
  String get releaseCode => 'Kod Zwolnienia';

  @override
  String get generateCodes => 'Generuj Kody';

  @override
  String get verifyCode => 'Zweryfikuj Kod';

  @override
  String get enterCode => 'Wprowadź Kod';

  @override
  String get generateStartCode => 'Generuj kod startowy';

  @override
  String get startCodeCopied => 'Kod startowy skopiowany';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return 'Zarezerwuj $amount na depozycie';
  }

  @override
  String get releaseCodeCopied => 'Kod skopiowany';

  @override
  String get releaseCodeHint => 'Wprowadź kod zwolnienia';

  @override
  String get regenerateCode => 'Wygeneruj ponownie';

  @override
  String get generateReleaseCode => 'Generuj kod zwolnienia';

  @override
  String get taskCodesGenerated => 'Kody wygenerowane';

  @override
  String get newReleaseCodeGenerated => 'Nowy kod zwolnienia wygenerowany';

  @override
  String get readyToBegin => 'Gotowy do rozpoczęcia';

  @override
  String get startCodeHint => 'Wprowadź kod startowy';

  @override
  String get verifyAndStartWork => 'Weryfikuj i rozpocznij';

  @override
  String get startCodeVerified => 'Kod startowy zweryfikowany';

  @override
  String get enterStartCodeFirst => 'Najpierw wprowadź kod startowy';

  @override
  String get workInProgress => 'Praca w toku';

  @override
  String get releaseCodePrompt => 'Wprowadź kod, aby zwolnić płatność';

  @override
  String get releaseCodeHelper => 'Podaj ten kod pracownikowi po zakończeniu';

  @override
  String get confirmWorkCompleted => 'Potwierdź zakończenie pracy';

  @override
  String get workConfirmedPaymentReleased =>
      'Praca potwierdzona — płatność zwolniona!';

  @override
  String get enterReleaseCodeWarning => 'Wprowadź kod zwolnienia';

  @override
  String get escrow => 'Escrow';

  @override
  String get lockEscrow => 'Zablokuj Escrow';

  @override
  String get releaseEscrow => 'Zwolnij Płatność';

  @override
  String get paymentLocked => 'Płatność Zablokowana';

  @override
  String get paymentReleased => 'Płatność Zwolniona';

  @override
  String get paymentSafelyReserved => 'Płatność bezpiecznie zarezerwowana';

  @override
  String get cancelTask => 'Anuluj zadanie';

  @override
  String get taskCancelled => 'Zadanie anulowane';

  @override
  String get deleteTask => 'Usuń zadanie';

  @override
  String get deleteTaskTitle => 'Usunąć zadanie?';

  @override
  String get deleteTaskConfirm => 'Usunąć to zadanie?';

  @override
  String get taskDeleted => 'Zadanie usunięte';

  @override
  String get typeFirstMessage => 'Napisz pierwszą wiadomość';

  @override
  String get send => 'Wyślij';

  @override
  String get failedToSendMessage => 'Błąd wysyłania wiadomości';

  @override
  String get conversations => 'Wiadomości';

  @override
  String get noMessagesYet => 'Brak wiadomości';

  @override
  String get noMessagesSubtitle =>
      'Twoje rozmowy pojawią się tutaj, gdy zaczniesz czatować o zadaniu.';

  @override
  String get startConversation => 'Rozpocznij rozmowę!';

  @override
  String get typeMessage => 'Wpisz wiadomość...';

  @override
  String get typing => 'pisze...';

  @override
  String get newMessages => 'Nowe Wiadomości';

  @override
  String get now => 'teraz';

  @override
  String minutesAgo(int count) {
    return '${count}min temu';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pracowników',
      one: '1 pracownik',
    );
    return '$_temp0';
  }

  @override
  String get chatToday => 'Dziś';

  @override
  String get chatYesterday => 'Wczoraj';

  @override
  String chatYouPrefix(String message) {
    return 'Ty: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'Re: $jobTitle';
  }

  @override
  String get noConversationsYet => 'Brak rozmów';

  @override
  String get loadingConversations => 'Ładowanie rozmów...';

  @override
  String get loadingMessages => 'Ładowanie wiadomości...';

  @override
  String get profile => 'Profil';

  @override
  String get editProfile => 'Edytuj Profil';

  @override
  String get fullName => 'Pełne Imię';

  @override
  String get phone => 'Numer Telefonu';

  @override
  String get bio => 'Bio';

  @override
  String get skills => 'Umiejętności';

  @override
  String get saveChanges => 'Zapisz Zmiany';

  @override
  String get logout => 'Wyloguj się';

  @override
  String get logoutConfirm => 'Czy na pewno chcesz się wylogować?';

  @override
  String get myProfile => 'Mój profil';

  @override
  String get unknown => 'Nieznany';

  @override
  String get experienceLabel => 'Doświadczenie';

  @override
  String get statusLabel => 'Status';

  @override
  String get notSet => 'Nie ustawiono';

  @override
  String get onDuty => 'Na służbie';

  @override
  String get offDuty => 'Poza służbą';

  @override
  String yearsCount(int count) {
    return '$count lat';
  }

  @override
  String get themeAndColors => 'Motyw i kolory';

  @override
  String get aiModelLabel => 'Model AI';

  @override
  String get availableForWork => 'Dostępny do pracy';

  @override
  String get visibleToClients => 'Widoczny dla klientów';

  @override
  String get currentlyOffDuty => 'Aktualnie poza służbą';

  @override
  String get myReviews => 'Moje opinie';

  @override
  String get deleteAccount => 'Usuń konto';

  @override
  String get deleteAccountConfirm =>
      'Jesteś pewien? Tej operacji nie można cofnąć.';

  @override
  String get couldNotDeleteAccount => 'Nie udało się usunąć konta';

  @override
  String get profilePhotoUpdated => 'Zdjęcie profilu zaktualizowane';

  @override
  String get profileUpdated => 'Profil zaktualizowany';

  @override
  String get nameLabel => 'Imię';

  @override
  String get profileImageUrl => 'URL zdjęcia';

  @override
  String get yearsOfExperience => 'Lata doświadczenia';

  @override
  String get certificationsLabel => 'Certyfikaty';

  @override
  String get payoutAccountLabel => 'Konto wypłat';

  @override
  String get onDutySubtitle => 'Jesteś widoczny dla nowych zadań';

  @override
  String get loadingProfile => 'Ładowanie profilu';

  @override
  String get availabilityLabel => 'Dostępność';

  @override
  String get memberLabel => 'Członek';

  @override
  String get available => 'Dostępny';

  @override
  String get unavailable => 'Niedostępny';

  @override
  String get viewAllReviews => 'Zobacz wszystkie opinie';

  @override
  String get settings => 'Ustawienia';

  @override
  String get appearance => 'Wygląd';

  @override
  String get language => 'Język';

  @override
  String get darkMode => 'Tryb Ciemny';

  @override
  String get lightMode => 'Tryb Jasny';

  @override
  String get systemMode => 'System';

  @override
  String get accentColour => 'Kolor Akcentu';

  @override
  String get customColour => 'Własny';

  @override
  String get preview => 'Podgląd';

  @override
  String get previewTitle => 'Twoje kolory wyglądają świetnie!';

  @override
  String get previewSubtitle => 'Tak będzie wyglądać twoja aplikacja.';

  @override
  String get primary => 'Główny';

  @override
  String get secondary => 'Dodatkowy';

  @override
  String get modeLabel => 'Tryb';

  @override
  String get pickAColour => 'Wybierz kolor';

  @override
  String get systemDefault => 'Domyślny systemu';

  @override
  String get darkModeSubtitle => 'Wybierz tryb systemowy, jasny lub ciemny';

  @override
  String get reviews => 'Recenzje';

  @override
  String get leaveReview => 'Zostaw Recenzję';

  @override
  String get noReviews => 'Brak recenzji';

  @override
  String get rating => 'Ocena';

  @override
  String get reviewComment => 'Komentarz';

  @override
  String get submitReview => 'Prześlij Recenzję';

  @override
  String howWasWorker(String name) {
    return 'Jak był $name?';
  }

  @override
  String get feedbackHelps => 'Twoja opinia pomaga';

  @override
  String get thanksForReview => 'Dziękujemy za opinię';

  @override
  String get shareExperienceHint => 'Podziel się doświadczeniem';

  @override
  String get ratingExcellent => 'Doskonały';

  @override
  String get ratingGreat => 'Bardzo dobry';

  @override
  String get ratingGood => 'Dobry';

  @override
  String get ratingFair => 'Dostateczny';

  @override
  String get ratingPoor => 'Słaby';

  @override
  String get tapToRate => 'Dotknij, aby ocenić';

  @override
  String workerReviewsTitle(String name) {
    return 'Opinie o $name';
  }

  @override
  String get loadingReviews => 'Ładowanie opinii';

  @override
  String get noReviewsSubtitle => 'Brak opinii';

  @override
  String get allReviews => 'Wszystkie opinie';

  @override
  String reviewCount(int count) {
    return '$count opinii';
  }

  @override
  String get anonymous => 'Anonimowy';

  @override
  String get loading => 'Ładowanie...';

  @override
  String get error => 'Coś poszło nie tak';

  @override
  String get retry => 'Ponów';

  @override
  String get tryAgain => 'Spróbuj ponownie';

  @override
  String get cancel => 'Anuluj';

  @override
  String get confirm => 'Potwierdź';

  @override
  String get delete => 'Usuń';

  @override
  String get save => 'Zapisz';

  @override
  String get edit => 'Edytuj';

  @override
  String get close => 'Zamknij';

  @override
  String get search => 'Szukaj';

  @override
  String get noResults => 'Brak wyników';

  @override
  String get pullToRefresh => 'Pociągnij, aby odświeżyć';

  @override
  String get pullDownToRefresh => 'Pociągnij, aby odświeżyć';

  @override
  String get yes => 'Tak';

  @override
  String get required => 'Wymagane';

  @override
  String get stop => 'Stop';

  @override
  String get clear => 'Wyczyść';

  @override
  String get aiSetup => 'Konfiguracja AI';

  @override
  String get aiAnalysis => 'Analiza AI';

  @override
  String get unlockAi => 'Odblokuj Analizę AI';

  @override
  String get aiTagline => 'Na urządzeniu  ·  Prywatne  ·  Bezpłatne';

  @override
  String get deviceCheck => 'Sprawdzenie Urządzenia';

  @override
  String get chooseModel => 'Wybierz Model';

  @override
  String get chooseModelSubtitle =>
      'Pobierz jeden lub więcej modeli. Możesz później przełączać między nimi.';

  @override
  String get initializingAi => 'Inicjalizowanie środowiska AI…';

  @override
  String get modelStorage => 'Pamięć Modelu';

  @override
  String get deviceIncompatible =>
      'AI na urządzeniu wymaga fizycznego urządzenia z obsługą GPU. Symulatory i emulatory nie są kompatybilne.';

  @override
  String get enhanceDescription => 'Ulepsz';

  @override
  String get bidInsights => 'Analiza Oferty';

  @override
  String get whyThisJob => 'Dlaczego to?';

  @override
  String get suggestPrice => 'Zaproponuj Cenę';

  @override
  String get analyzing => 'Analizowanie…';

  @override
  String get aiCapabilities => 'Możliwości AI';

  @override
  String get onDeviceAi => 'AI na urządzeniu';

  @override
  String get aiTaglineSetup => 'Prywatne · Offline · Bezpłatne';

  @override
  String get aiSetupDescription =>
      'Otrzymuj inteligentne sugestie do zadań i ofert';

  @override
  String get physicalDevice => 'Urządzenie fizyczne';

  @override
  String get emulatorDetected => 'Wykryto emulator';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => 'Wystarczający';

  @override
  String get freeStorage => 'Wolne miejsce';

  @override
  String mbFree(int mb) {
    return '$mb MB wolne';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'Funkcje AI wymagają fizycznego urządzenia.';

  @override
  String get multilingual => 'Wielojęzyczny';

  @override
  String downloadingProgress(String percent) {
    return 'Pobieranie $percent%';
  }

  @override
  String get loadingModel => 'Ładowanie modelu';

  @override
  String get retryDownload => 'Ponów pobieranie';

  @override
  String get activeAndReady => 'Aktywny i gotowy';

  @override
  String get remove => 'Usuń';

  @override
  String get enableAi => 'Włącz AI';

  @override
  String get downloadAiModel => 'Pobierz model AI';

  @override
  String get deviceNotSupported => 'Urządzenie nieobsługiwane';

  @override
  String get downloadBackgroundNote =>
      'Pobieranie w tle. Nie zamykaj aplikacji.';

  @override
  String get removeAiModelTitle => 'Usunąć model AI?';

  @override
  String get removeAiModelConfirm => 'Usunąć model AI? Zwolni  MB.';

  @override
  String get analyzeWithAi => 'Analizuj z AI';

  @override
  String get aiAssistantAvailable => 'Asystent AI dostępny';

  @override
  String get aiSetupPrompt =>
      'Skonfiguruj model AI na urządzeniu dla inteligentnych sugestii.';

  @override
  String get setup => 'Konfiguruj';

  @override
  String get adminDashboard => 'Panel admina';

  @override
  String get failedToLoadDashboard => 'Błąd ładowania panelu';

  @override
  String get platformOverview => 'Przegląd platformy';

  @override
  String get liveStatistics => 'Statystyki na żywo';

  @override
  String get usersSection => 'Użytkownicy';

  @override
  String get adminTabClients => 'Klienci';

  @override
  String get adminTabWorkers => 'Pracownicy';

  @override
  String get adminTabAccount => 'Konto';

  @override
  String get jobsSection => 'Zlecenia';

  @override
  String get activeLabel => 'Aktywny';

  @override
  String get todaySection => 'Dziś';

  @override
  String get createdLabel => 'Utworzone';

  @override
  String get completedLabel => 'Ukończone';

  @override
  String deleteUserTitle(String role) {
    return 'Usunąć $role?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return 'Usunąć $name?';
  }

  @override
  String get userDeletedSuccess => 'Użytkownik usunięty';

  @override
  String get unableToLoadUsers => 'Błąd ładowania użytkowników';

  @override
  String get noClientsFound => 'Nie znaleziono klientów';

  @override
  String get noWorkersFound => 'Nie znaleziono pracowników';

  @override
  String get deleteUserTooltip => 'Usuń użytkownika';

  @override
  String get adminSession => 'Sesja admina';

  @override
  String get adminManageUsersHint =>
      'Zarządzaj użytkownikami z zakładek Klienci i Pracownicy.';

  @override
  String distanceKm(int radius) {
    return '$radius km';
  }

  @override
  String get youreOffline => 'Jesteś offline';

  @override
  String get offlineHint => 'Jesteś offline';

  @override
  String get yourSkills => 'Twoje umiejętności';

  @override
  String get skillsSubtitle => 'Dodaj swoje umiejętności i doświadczenie';

  @override
  String get addSkillLabel => 'Dodaj umiejętność';

  @override
  String get typeToSearchSkills => 'Szukaj umiejętności';

  @override
  String savedSkillsCount(int count) {
    return '$count umiejętności zapisanych';
  }

  @override
  String get noSkillsAdded => 'Brak umiejętności';

  @override
  String get unableToLoadTaskDetails => 'Błąd ładowania szczegółów';

  @override
  String get detailDistance => 'Odległość';

  @override
  String get chooseLocation => 'Wybierz lokalizację';

  @override
  String get savedTab => 'Zapisane';

  @override
  String get pinOnMapTab => 'Zaznacz na mapie';

  @override
  String get locationDeniedPermanently => 'Uprawnienie lokalizacji odmówione';

  @override
  String get couldNotGetLocation => 'Nie udało się uzyskać lokalizacji';

  @override
  String get searchPlaces => 'Szukaj miejsc';

  @override
  String get switchToSatellite => 'Satelita';

  @override
  String get switchToRoadMap => 'Mapa drogowa';

  @override
  String get goToMyLocation => 'Do mojej lokalizacji';

  @override
  String get confirmLocation => 'Potwierdź lokalizację';

  @override
  String get saveAddress => 'Zapisz adres';

  @override
  String get saveAddressSubtitle => 'Zapisz na przyszłe zadania';

  @override
  String get labelField => 'Etykieta';

  @override
  String get labelHome => 'Dom';

  @override
  String get labelWork => 'Praca';

  @override
  String get labelOther => 'Inne';

  @override
  String get recipientName => 'Imię odbiorcy';

  @override
  String get recipientNameHint => 'Wprowadź imię';

  @override
  String get recipientPhone => 'Telefon odbiorcy';

  @override
  String get recipientPhoneHint => 'Wprowadź telefon';

  @override
  String get pickFromContacts => 'Wybierz z kontaktów';

  @override
  String get contactsAccessDenied => 'Odmowa dostępu do kontaktów';

  @override
  String get openSettings => 'Otwórz ustawienia';

  @override
  String get couldNotOpenContacts => 'Nie udało się otworzyć kontaktów';

  @override
  String get areaNeighbourhood => 'Obszar / Dzielnica';

  @override
  String get areaHint => 'Np. Śródmieście, Kazimierz';

  @override
  String get cityHint => 'Np. Warszawa';

  @override
  String get postalCodeRequired => 'Kod pocztowy wymagany';

  @override
  String get postalCodeHint => 'Np. 00-001';

  @override
  String get countryCodeRequired => 'Numer kierunkowy wymagany';

  @override
  String get countryCodeHint => '+48';

  @override
  String get requiredSkillsLabel => 'Wymagane umiejętności';

  @override
  String get skillHintText => 'Wpisz umiejętności, oddziel przecinkami';

  @override
  String get skillHelperEmpty => 'Brak umiejętności';

  @override
  String skillsAddedCount(int count) {
    return '$count umiejętności dodanych';
  }

  @override
  String get languagePicker => 'Wybierz Język';

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
  String get accentColorBlue => 'Niebieski';

  @override
  String get accentColorYellow => 'Żółty';

  @override
  String get accentColorGreen => 'Zielony';

  @override
  String get accentColorPink => 'Różowy';

  @override
  String get accentColorRed => 'Czerwony';

  @override
  String get accentColorPurple => 'Fioletowy';

  @override
  String get accentColorOrange => 'Pomarańczowy';

  @override
  String get accentColorTeal => 'Morski';

  @override
  String get accentColorCustom => 'Niestandardowy';

  @override
  String get paymentStatusPending => 'Płatność oczekuje';

  @override
  String get paymentStatusLocked => 'Kwota bezpiecznie zarezerwowana';

  @override
  String get paymentStatusReleased => 'Płatność zwolniona';

  @override
  String get paymentStatusOffline => 'Zapłać po zakończeniu';

  @override
  String paymentStatusGeneric(String status) {
    return 'Status płatności: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'Otwarte na oferty';

  @override
  String get jobStatusOfferAccepted => 'Oferta zaakceptowana';

  @override
  String get jobStatusReadyToStart => 'Gotowy do rozpoczęcia';

  @override
  String get jobStatusInProgress => 'W toku';

  @override
  String get jobStatusPendingPayment => 'Oczekuje na płatność';

  @override
  String get jobStatusPaymentReleased => 'Płatność zwolniona';

  @override
  String get jobStatusTaskCompleted => 'Zadanie ukończone';

  @override
  String get jobStatusCancelled => 'Anulowane';

  @override
  String get detailBudgetLabel => 'Budżet';

  @override
  String get detailLocationLabel => 'Lokalizacja';

  @override
  String get detailSkillsLabel => 'Umiejętności';

  @override
  String get detailJobIdLabel => 'ID zlecenia';

  @override
  String get tooltipCopy => 'Kopiuj';

  @override
  String get tooltipDeleteAddress => 'Usuń adres';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return 'Usunąć \"$addressLabel\" z zapisanych adresów?';
  }

  @override
  String get errorNotAuthenticated =>
      'Nie uwierzytelniony. Zaloguj się ponownie.';

  @override
  String get errorCouldNotOpenImagePicker =>
      'Nie udało się otworzyć wybieraka zdjęć.';

  @override
  String get errorCouldNotReadImage => 'Nie udało się odczytać zdjęcia.';

  @override
  String get errorImageTooLarge => 'Obraz musi mieć mniej niż 5 MB.';

  @override
  String get errorUploadFailed => 'Przesyłanie nieudane. Spróbuj ponownie.';

  @override
  String get errorNameRequired => 'Imię jest wymagane';

  @override
  String get errorRatingRequired => 'Wybierz ocenę';

  @override
  String get errorNotLoggedIn => 'Zaloguj się';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'Aktualizacja profilu admina nieobsługiwana';

  @override
  String get errorAdminDeletionDisabled =>
      'Usunięcie admina wyłączone w aplikacji';

  @override
  String get errorConnectionTimeout =>
      'Przekroczono limit czasu. Spróbuj ponownie.';

  @override
  String get errorConnectionError => 'Błąd połączenia z serwerem.';

  @override
  String get errorRequestCancelled => 'Żądanie anulowane.';

  @override
  String get errorBadRequest => 'Nieprawidłowe żądanie. Sprawdź dane.';

  @override
  String get errorSessionExpired => 'Sesja wygasła. Zaloguj się.';

  @override
  String get errorPermissionDenied => 'Brak uprawnień.';

  @override
  String get errorResourceNotFound => 'Nie znaleziono zasobu.';

  @override
  String get errorConflict => 'Konflikt: nie można wykonać akcji.';

  @override
  String get errorFileTooLarge => 'Plik za duży. Maks 5 MB.';

  @override
  String get errorValidationError => 'Błąd walidacji. Sprawdź dane.';

  @override
  String get errorTooManyRequests => 'Za dużo żądań. Poczekaj.';

  @override
  String get errorServerError => 'Błąd serwera. Spróbuj później.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'Żądanie nieudane: status $statusCode';
  }

  @override
  String get errorNetworkFailed => 'Błąd sieci.';

  @override
  String get errorNetworkRequestFailed => 'Błąd sieci';

  @override
  String get errorMalformedSkillResponse =>
      'Nieprawidłowa odpowiedź umiejętności';

  @override
  String get errorMalformedResponse => 'Nieprawidłowa odpowiedź';

  @override
  String get errorMalformedAdminResponse => 'Nieprawidłowa odpowiedź admina';

  @override
  String get errorAdminAccessRequired => 'Wymagany dostęp admina';

  @override
  String get errorDescriptionUnavailable => 'Opis niedostępny';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'Tylko $roleLabel mogą to zrobić';
  }

  @override
  String get useWithoutSaving => 'Użyj bez zapisywania';

  @override
  String get saveAndUse => 'Zapisz i użyj';

  @override
  String get useMyCurrentLocation => 'Użyj mojej lokalizacji';

  @override
  String get detectingLocation => 'Wykrywanie lokalizacji…';
}
