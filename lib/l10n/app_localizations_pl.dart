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
  String get homeTab => 'Strona Główna';

  @override
  String get jobsTab => 'Prace';

  @override
  String get chatTab => 'Czat';

  @override
  String get profileTab => 'Profil';

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
  String get urgencyUrgent => 'Pilny';

  @override
  String get paymentOffline => 'Offline';

  @override
  String get paymentEscrow => 'Escrow';

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
  String get loading => 'Ładowanie...';

  @override
  String get loadingConversations => 'Ładowanie rozmów...';

  @override
  String get loadingMessages => 'Ładowanie wiadomości...';

  @override
  String get error => 'Coś poszło nie tak';

  @override
  String get retry => 'Ponów';

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
}
