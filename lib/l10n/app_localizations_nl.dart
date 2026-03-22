// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'Inloggen';

  @override
  String get registerTitle => 'Account Aanmaken';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get passwordLabel => 'Wachtwoord';

  @override
  String get confirmPasswordLabel => 'Wachtwoord Bevestigen';

  @override
  String get forgotPassword => 'Wachtwoord vergeten?';

  @override
  String get loginButton => 'Inloggen';

  @override
  String get registerButton => 'Registreren';

  @override
  String get orContinueWith => 'Of ga verder met';

  @override
  String get dontHaveAccount => 'Geen account?';

  @override
  String get alreadyHaveAccount => 'Al een account?';

  @override
  String get onboardingTitle1 => 'Vind Taken bij Jou in de Buurt';

  @override
  String get onboardingSubtitle1 =>
      'Ontdek lokale banen en diensten in je buurt.';

  @override
  String get onboardingTitle2 => 'Bied en Word Ingehuurd';

  @override
  String get onboardingSubtitle2 =>
      'Doe concurrerende biedingen en word geselecteerd voor taken die bij je vaardigheden passen.';

  @override
  String get onboardingTitle3 => 'Veilige Betalingen';

  @override
  String get onboardingSubtitle3 =>
      'Escrow-ondersteunde betalingen garanderen eerlijke en veilige transacties.';

  @override
  String get getStarted => 'Aan de Slag';

  @override
  String get skip => 'Overslaan';

  @override
  String get next => 'Volgende';

  @override
  String get roleSelectionTitle => 'Kies Je Rol';

  @override
  String get roleClient => 'Opdrachtgever';

  @override
  String get roleClientDesc => 'Ik heb hulp nodig bij taken';

  @override
  String get roleWorker => 'Werknemer';

  @override
  String get roleWorkerDesc => 'Ik wil mijn vaardigheden aanbieden';

  @override
  String get continueButton => 'Doorgaan';

  @override
  String get homeTab => 'Home';

  @override
  String get jobsTab => 'Banen';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Profiel';

  @override
  String get myJobs => 'Mijn Banen';

  @override
  String get workerFeed => 'Beschikbare Banen';

  @override
  String get createJob => 'Baan Aanmaken';

  @override
  String get postJob => 'Baan Plaatsen';

  @override
  String get editJob => 'Baan Bewerken';

  @override
  String get deleteJob => 'Baan Verwijderen';

  @override
  String get deleteJobConfirm =>
      'Weet je zeker dat je deze baan wilt verwijderen?';

  @override
  String get jobTitle => 'Titel';

  @override
  String get jobDescription => 'Beschrijving';

  @override
  String get jobCategory => 'Categorie';

  @override
  String get jobBudget => 'Budget';

  @override
  String get jobLocation => 'Locatie';

  @override
  String get jobDueDate => 'Vervaldatum';

  @override
  String get jobSkills => 'Vereiste Vaardigheden';

  @override
  String get jobUrgency => 'Urgentie';

  @override
  String get jobPaymentMode => 'Betaalmethode';

  @override
  String get urgencyNormal => 'Normaal';

  @override
  String get urgencyUrgent => 'Urgent';

  @override
  String get paymentOffline => 'Offline';

  @override
  String get paymentEscrow => 'Escrow';

  @override
  String get statusOpenForBids => 'Open voor Biedingen';

  @override
  String get statusInProgress => 'In Uitvoering';

  @override
  String get statusCompleted => 'Voltooid';

  @override
  String get statusCancelled => 'Geannuleerd';

  @override
  String get statusPendingStart => 'Wacht op Start';

  @override
  String get statusPendingRelease => 'Wacht op Vrijgave';

  @override
  String get bids => 'Biedingen';

  @override
  String get noBids => 'Nog geen biedingen';

  @override
  String get placeBid => 'Bod Plaatsen';

  @override
  String get bidAmount => 'Biedingsbedrag';

  @override
  String get bidNotes => 'Opmerkingen (optioneel)';

  @override
  String get yourBid => 'Jouw Bod';

  @override
  String get acceptBid => 'Bod Accepteren';

  @override
  String get rejectBid => 'Bod Afwijzen';

  @override
  String get bidAccepted => 'Bod Geaccepteerd';

  @override
  String get bidRejected => 'Bod Afgewezen';

  @override
  String get bidPending => 'In Afwachting';

  @override
  String get startCode => 'Startcode';

  @override
  String get releaseCode => 'Vrijgavecode';

  @override
  String get generateCodes => 'Codes Genereren';

  @override
  String get verifyCode => 'Code Verifiëren';

  @override
  String get enterCode => 'Code Invoeren';

  @override
  String get escrow => 'Escrow';

  @override
  String get lockEscrow => 'Escrow Vergrendelen';

  @override
  String get releaseEscrow => 'Betaling Vrijgeven';

  @override
  String get paymentLocked => 'Betaling Vergrendeld';

  @override
  String get paymentReleased => 'Betaling Vrijgegeven';

  @override
  String get conversations => 'Berichten';

  @override
  String get noMessagesYet => 'Nog geen berichten';

  @override
  String get noMessagesSubtitle =>
      'Je gesprekken verschijnen hier wanneer je over een taak gaat chatten.';

  @override
  String get startConversation => 'Start het gesprek!';

  @override
  String get typeMessage => 'Typ een bericht...';

  @override
  String get typing => 'aan het typen...';

  @override
  String get newMessages => 'Nieuwe Berichten';

  @override
  String get now => 'nu';

  @override
  String minutesAgo(int count) {
    return '${count}min geleden';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count werknemers',
      one: '1 werknemer',
    );
    return '$_temp0';
  }

  @override
  String get profile => 'Profiel';

  @override
  String get editProfile => 'Profiel Bewerken';

  @override
  String get fullName => 'Volledige Naam';

  @override
  String get phone => 'Telefoonnummer';

  @override
  String get bio => 'Bio';

  @override
  String get skills => 'Vaardigheden';

  @override
  String get saveChanges => 'Wijzigingen Opslaan';

  @override
  String get logout => 'Uitloggen';

  @override
  String get logoutConfirm => 'Weet je zeker dat je wilt uitloggen?';

  @override
  String get settings => 'Instellingen';

  @override
  String get appearance => 'Uiterlijk';

  @override
  String get language => 'Taal';

  @override
  String get darkMode => 'Donkere Modus';

  @override
  String get lightMode => 'Lichte Modus';

  @override
  String get systemMode => 'Systeem';

  @override
  String get accentColour => 'Accentkleur';

  @override
  String get customColour => 'Aangepast';

  @override
  String get preview => 'Voorbeeld';

  @override
  String get previewTitle => 'Je kleuren zien er geweldig uit!';

  @override
  String get previewSubtitle => 'Zo zal je app eruitzien.';

  @override
  String get primary => 'Primair';

  @override
  String get secondary => 'Secundair';

  @override
  String get reviews => 'Beoordelingen';

  @override
  String get leaveReview => 'Beoordeling Achterlaten';

  @override
  String get noReviews => 'Nog geen beoordelingen';

  @override
  String get rating => 'Beoordeling';

  @override
  String get reviewComment => 'Opmerking';

  @override
  String get submitReview => 'Beoordeling Verzenden';

  @override
  String get loading => 'Laden...';

  @override
  String get loadingConversations => 'Gesprekken laden...';

  @override
  String get loadingMessages => 'Berichten laden...';

  @override
  String get error => 'Er ging iets mis';

  @override
  String get retry => 'Opnieuw Proberen';

  @override
  String get cancel => 'Annuleren';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get delete => 'Verwijderen';

  @override
  String get save => 'Opslaan';

  @override
  String get edit => 'Bewerken';

  @override
  String get close => 'Sluiten';

  @override
  String get search => 'Zoeken';

  @override
  String get noResults => 'Geen resultaten gevonden';

  @override
  String get pullToRefresh => 'Trek om te vernieuwen';

  @override
  String get aiSetup => 'AI-Instelling';

  @override
  String get aiAnalysis => 'AI-Analyse';

  @override
  String get unlockAi => 'Ontgrendel AI-Analyse';

  @override
  String get aiTagline => 'Op het apparaat  ·  Privé  ·  Gratis';

  @override
  String get deviceCheck => 'Apparaatcontrole';

  @override
  String get chooseModel => 'Kies Je Model';

  @override
  String get chooseModelSubtitle =>
      'Download een of meer modellen. Je kunt later wisselen.';

  @override
  String get initializingAi => 'AI-runtime initialiseren…';

  @override
  String get modelStorage => 'Modelopslag';

  @override
  String get deviceIncompatible =>
      'On-device AI vereist een fysiek apparaat met GPU-ondersteuning. Simulatoren en emulators zijn niet compatibel.';

  @override
  String get enhanceDescription => 'Verbeteren';

  @override
  String get bidInsights => 'Bod-Inzichten';

  @override
  String get whyThisJob => 'Waarom dit?';

  @override
  String get suggestPrice => 'Prijs Voorstellen';

  @override
  String get analyzing => 'Analyseren…';

  @override
  String get languagePicker => 'Taal Selecteren';

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
