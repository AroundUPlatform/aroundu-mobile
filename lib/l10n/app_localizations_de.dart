// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'Anmelden';

  @override
  String get registerTitle => 'Konto erstellen';

  @override
  String get emailLabel => 'E-Mail';

  @override
  String get passwordLabel => 'Passwort';

  @override
  String get confirmPasswordLabel => 'Passwort bestätigen';

  @override
  String get forgotPassword => 'Passwort vergessen?';

  @override
  String get loginButton => 'Anmelden';

  @override
  String get registerButton => 'Registrieren';

  @override
  String get orContinueWith => 'Oder fortfahren mit';

  @override
  String get dontHaveAccount => 'Kein Konto?';

  @override
  String get alreadyHaveAccount => 'Bereits ein Konto?';

  @override
  String get onboardingTitle1 => 'Finde Aufgaben in deiner Nähe';

  @override
  String get onboardingSubtitle1 =>
      'Entdecke lokale Jobs und Dienstleistungen in deiner Nachbarschaft.';

  @override
  String get onboardingTitle2 => 'Biete und werde eingestellt';

  @override
  String get onboardingSubtitle2 =>
      'Gib wettbewerbsfähige Gebote ab und werde für Aufgaben ausgewählt, die deinen Fähigkeiten entsprechen.';

  @override
  String get onboardingTitle3 => 'Sichere Zahlungen';

  @override
  String get onboardingSubtitle3 =>
      'Treuhand-gestützte Zahlungen gewährleisten faire und sichere Transaktionen.';

  @override
  String get getStarted => 'Loslegen';

  @override
  String get skip => 'Überspringen';

  @override
  String get next => 'Weiter';

  @override
  String get roleSelectionTitle => 'Wähle deine Rolle';

  @override
  String get roleClient => 'Auftraggeber';

  @override
  String get roleClientDesc => 'Ich brauche Hilfe bei Aufgaben';

  @override
  String get roleWorker => 'Arbeiter';

  @override
  String get roleWorkerDesc => 'Ich möchte meine Fähigkeiten anbieten';

  @override
  String get continueButton => 'Fortfahren';

  @override
  String get homeTab => 'Start';

  @override
  String get jobsTab => 'Jobs';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Profil';

  @override
  String get myJobs => 'Meine Jobs';

  @override
  String get workerFeed => 'Verfügbare Jobs';

  @override
  String get createJob => 'Job erstellen';

  @override
  String get postJob => 'Job veröffentlichen';

  @override
  String get editJob => 'Job bearbeiten';

  @override
  String get deleteJob => 'Job löschen';

  @override
  String get deleteJobConfirm =>
      'Bist du sicher, dass du diesen Job löschen möchtest?';

  @override
  String get jobTitle => 'Titel';

  @override
  String get jobDescription => 'Beschreibung';

  @override
  String get jobCategory => 'Kategorie';

  @override
  String get jobBudget => 'Budget';

  @override
  String get jobLocation => 'Standort';

  @override
  String get jobDueDate => 'Fälligkeitsdatum';

  @override
  String get jobSkills => 'Erforderliche Fähigkeiten';

  @override
  String get jobUrgency => 'Dringlichkeit';

  @override
  String get jobPaymentMode => 'Zahlungsart';

  @override
  String get urgencyNormal => 'Normal';

  @override
  String get urgencyUrgent => 'Dringend';

  @override
  String get paymentOffline => 'Offline';

  @override
  String get paymentEscrow => 'Treuhand';

  @override
  String get statusOpenForBids => 'Offen für Gebote';

  @override
  String get statusInProgress => 'In Bearbeitung';

  @override
  String get statusCompleted => 'Abgeschlossen';

  @override
  String get statusCancelled => 'Abgebrochen';

  @override
  String get statusPendingStart => 'Warte auf Start';

  @override
  String get statusPendingRelease => 'Warte auf Freigabe';

  @override
  String get bids => 'Gebote';

  @override
  String get noBids => 'Noch keine Gebote';

  @override
  String get placeBid => 'Gebot abgeben';

  @override
  String get bidAmount => 'Gebotsbetrag';

  @override
  String get bidNotes => 'Notizen (optional)';

  @override
  String get yourBid => 'Dein Gebot';

  @override
  String get acceptBid => 'Gebot annehmen';

  @override
  String get rejectBid => 'Gebot ablehnen';

  @override
  String get bidAccepted => 'Gebot angenommen';

  @override
  String get bidRejected => 'Gebot abgelehnt';

  @override
  String get bidPending => 'Ausstehend';

  @override
  String get startCode => 'Startcode';

  @override
  String get releaseCode => 'Freigabecode';

  @override
  String get generateCodes => 'Codes generieren';

  @override
  String get verifyCode => 'Code verifizieren';

  @override
  String get enterCode => 'Code eingeben';

  @override
  String get escrow => 'Treuhand';

  @override
  String get lockEscrow => 'Treuhand sperren';

  @override
  String get releaseEscrow => 'Zahlung freigeben';

  @override
  String get paymentLocked => 'Zahlung gesperrt';

  @override
  String get paymentReleased => 'Zahlung freigegeben';

  @override
  String get conversations => 'Nachrichten';

  @override
  String get noMessagesYet => 'Noch keine Nachrichten';

  @override
  String get noMessagesSubtitle =>
      'Deine Unterhaltungen werden hier angezeigt, wenn du über eine Aufgabe chattest.';

  @override
  String get startConversation => 'Starte die Unterhaltung!';

  @override
  String get typeMessage => 'Nachricht eingeben...';

  @override
  String get typing => 'tippt...';

  @override
  String get newMessages => 'Neue Nachrichten';

  @override
  String get now => 'jetzt';

  @override
  String minutesAgo(int count) {
    return 'vor ${count}Min.';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Arbeiter',
      one: '1 Arbeiter',
    );
    return '$_temp0';
  }

  @override
  String get profile => 'Profil';

  @override
  String get editProfile => 'Profil bearbeiten';

  @override
  String get fullName => 'Vollständiger Name';

  @override
  String get phone => 'Telefonnummer';

  @override
  String get bio => 'Über mich';

  @override
  String get skills => 'Fähigkeiten';

  @override
  String get saveChanges => 'Änderungen speichern';

  @override
  String get logout => 'Abmelden';

  @override
  String get logoutConfirm => 'Bist du sicher, dass du dich abmelden möchtest?';

  @override
  String get settings => 'Einstellungen';

  @override
  String get appearance => 'Erscheinungsbild';

  @override
  String get language => 'Sprache';

  @override
  String get darkMode => 'Dunkler Modus';

  @override
  String get lightMode => 'Heller Modus';

  @override
  String get systemMode => 'System';

  @override
  String get accentColour => 'Akzentfarbe';

  @override
  String get customColour => 'Benutzerdefiniert';

  @override
  String get preview => 'Vorschau';

  @override
  String get previewTitle => 'Deine Farben sehen toll aus!';

  @override
  String get previewSubtitle => 'So wird deine App aussehen.';

  @override
  String get primary => 'Primär';

  @override
  String get secondary => 'Sekundär';

  @override
  String get reviews => 'Bewertungen';

  @override
  String get leaveReview => 'Bewertung abgeben';

  @override
  String get noReviews => 'Noch keine Bewertungen';

  @override
  String get rating => 'Bewertung';

  @override
  String get reviewComment => 'Kommentar';

  @override
  String get submitReview => 'Bewertung abschicken';

  @override
  String get loading => 'Laden...';

  @override
  String get loadingConversations => 'Lade Unterhaltungen...';

  @override
  String get loadingMessages => 'Lade Nachrichten...';

  @override
  String get error => 'Etwas ist schiefgelaufen';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get delete => 'Löschen';

  @override
  String get save => 'Speichern';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get close => 'Schließen';

  @override
  String get search => 'Suchen';

  @override
  String get noResults => 'Keine Ergebnisse gefunden';

  @override
  String get pullToRefresh => 'Zum Aktualisieren ziehen';

  @override
  String get aiSetup => 'KI-Einrichtung';

  @override
  String get aiAnalysis => 'KI-Analyse';

  @override
  String get unlockAi => 'KI-Analyse freischalten';

  @override
  String get aiTagline => 'Auf dem Gerät  ·  Privat  ·  Kostenlos';

  @override
  String get deviceCheck => 'Geräteprüfung';

  @override
  String get chooseModel => 'Wähle dein Modell';

  @override
  String get chooseModelSubtitle =>
      'Lade ein oder mehrere Modelle herunter. Du kannst später zwischen ihnen wechseln.';

  @override
  String get initializingAi => 'KI-Laufzeit wird initialisiert…';

  @override
  String get modelStorage => 'Modell-Speicher';

  @override
  String get deviceIncompatible =>
      'On-Device-KI erfordert ein physisches Gerät mit GPU-Unterstützung. Simulatoren und Emulatoren sind nicht kompatibel.';

  @override
  String get enhanceDescription => 'Verbessern';

  @override
  String get bidInsights => 'Gebots-Einblicke';

  @override
  String get whyThisJob => 'Warum das?';

  @override
  String get suggestPrice => 'Preis vorschlagen';

  @override
  String get analyzing => 'Analysiere…';

  @override
  String get languagePicker => 'Sprache auswählen';

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
