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
  String get welcomeBack => 'Willkommen zurück';

  @override
  String get loginSubtitle => 'Bei AroundU-Konto anmelden';

  @override
  String get noAccountYet => 'Noch kein Konto?';

  @override
  String get createOne => 'Erstellen';

  @override
  String get emailRequired => 'E-Mail erforderlich';

  @override
  String get enterValidEmail => 'Gültige E-Mail eingeben';

  @override
  String get passwordRequired => 'Passwort erforderlich';

  @override
  String get minimumSixCharacters => 'Mindestens 6 Zeichen';

  @override
  String get unableToLogin => 'Anmeldung fehlgeschlagen';

  @override
  String fieldRequired(String field) {
    return '$field ist erforderlich';
  }

  @override
  String get enterValidPhone => 'Gültige Telefonnummer eingeben';

  @override
  String get unableToRegister => 'Registrierung fehlgeschlagen';

  @override
  String get registrationSuccess => 'Registrierung erfolgreich';

  @override
  String get registerSubtitle => 'Als Anbieter oder Arbeiter registrieren';

  @override
  String get roleLabel => 'Rolle';

  @override
  String get roleJobProvider => 'Auftraggeber';

  @override
  String get roleJobWorker => 'Arbeiter';

  @override
  String get countryLabel => 'Land';

  @override
  String get currencyLabel => 'Währung';

  @override
  String get cityLabel => 'Stadt';

  @override
  String get postalCodeLabel => 'Postleitzahl';

  @override
  String get areaOptionalLabel => 'Gebiet (optional)';

  @override
  String get fullAddressOptionalLabel => 'Vollständige Adresse (optional)';

  @override
  String get alreadyRegistered => 'Bereits registriert?';

  @override
  String get logInLink => 'Anmelden';

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
  String get newHereCreateAccount => 'Neu hier? Konto erstellen';

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
  String get roleSelectionSubtitle => 'Wie möchten Sie AroundU nutzen?';

  @override
  String signedInAs(String email) {
    return 'Angemeldet als $email';
  }

  @override
  String get roleProviderDesc =>
      'Aufgaben posten und qualifizierte Arbeiter finden';

  @override
  String get roleWorkerDescAlt =>
      'Aufträge finden und mit Ihren Fähigkeiten verdienen';

  @override
  String get homeTab => 'Start';

  @override
  String get jobsTab => 'Jobs';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Profil';

  @override
  String get providerTabMyTasks => 'Meine Aufgaben';

  @override
  String get providerTabPostTask => 'Aufgabe posten';

  @override
  String get tasksNavLabel => 'Aufgaben';

  @override
  String get postNavLabel => 'Posten';

  @override
  String get workerTabTaskFeed => 'Aufgaben-Feed';

  @override
  String get feedNavLabel => 'Feed';

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
  String get urgencyMedium => 'Mittel';

  @override
  String get urgencyUrgent => 'Dringend';

  @override
  String get urgencyAsap => 'So schnell wie möglich';

  @override
  String get paymentOffline => 'Offline';

  @override
  String get paymentEscrow => 'Treuhand';

  @override
  String get paymentMethod => 'Zahlungsmethode';

  @override
  String get payInCash => 'Bar bezahlen';

  @override
  String get secureEscrow => 'Sicheres Treuhandkonto';

  @override
  String get filterAll => 'Alle';

  @override
  String get filterOpen => 'Offen';

  @override
  String get filterActive => 'Aktiv';

  @override
  String get filterInProgress => 'In Bearbeitung';

  @override
  String get filterCompleted => 'Abgeschlossen';

  @override
  String get filterCancelled => 'Storniert';

  @override
  String get filterExpired => 'Abgelaufen';

  @override
  String get filterNearby => 'In der Nähe';

  @override
  String get filterAllMine => 'Alle meine';

  @override
  String get filterBidPlaced => 'Gebot abgegeben';

  @override
  String get filterAccepted => 'Angenommen';

  @override
  String get noTasksPostedYet => 'Noch keine Aufgaben gepostet';

  @override
  String get noOpenTasks => 'Keine offenen Aufgaben';

  @override
  String get noActiveTasks => 'Keine aktiven Aufgaben';

  @override
  String get noTasksInProgress => 'Keine Aufgaben in Bearbeitung';

  @override
  String get noCompletedTasks => 'Keine abgeschlossenen Aufgaben';

  @override
  String get noCancelledTasks => 'Keine stornierten Aufgaben';

  @override
  String get noExpiredTasks => 'Keine abgelaufenen Aufgaben';

  @override
  String get unableToLoadTasks => 'Aufgaben konnten nicht geladen werden';

  @override
  String get noNearbyJobs => 'Keine Aufträge in der Nähe';

  @override
  String get noJobsYetBid => 'Noch keine Aufträge — jetzt bieten';

  @override
  String get noPendingBids => 'Keine ausstehenden Gebote';

  @override
  String get noAcceptedJobs => 'Keine angenommenen Aufträge';

  @override
  String get noJobsInProgress => 'Keine Aufträge in Bearbeitung';

  @override
  String get noCompletedJobsYet => 'Noch keine abgeschlossenen Aufträge';

  @override
  String get noCancelledJobs => 'Keine stornierten Aufträge';

  @override
  String get noExpiredJobs => 'Keine abgelaufenen Aufträge';

  @override
  String get pullDownToRefreshCheck =>
      'Nach unten ziehen um neue Aufgaben zu prüfen';

  @override
  String get unableToLoadJobs => 'Aufträge konnten nicht geladen werden';

  @override
  String get postNewTask => 'Neue Aufgabe posten';

  @override
  String get postTaskSubtitle => 'Klare Details hinzufügen für genaue Angebote';

  @override
  String get taskTitleLabel => 'Aufgabentitel';

  @override
  String get savingLocation => 'Standort wird gespeichert';

  @override
  String get tapToSelectLocation => 'Tippen um Standort zu wählen';

  @override
  String get postTaskButton => 'Aufgabe posten';

  @override
  String get addSkillWarning =>
      'Fügen Sie mindestens eine erforderliche Fähigkeit hinzu';

  @override
  String get enterValidBudget => 'Gültiges Budget eingeben';

  @override
  String get setJobLocationWarning => 'Aufgabenstandort festlegen';

  @override
  String get jobPostedSuccess => 'Aufgabe erfolgreich gepostet';

  @override
  String get failedToPostJob => 'Aufgabe konnte nicht gepostet werden';

  @override
  String get failedToSaveLocation => 'Standort konnte nicht gespeichert werden';

  @override
  String get unableToLoadJobWorkflow =>
      'Arbeitsablauf konnte nicht geladen werden';

  @override
  String get unknownError => 'Unbekannter Fehler';

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
  String get offersSection => 'Angebote';

  @override
  String get noOffersReceivedYet => 'Noch keine Angebote erhalten';

  @override
  String get offerAccepted => 'Angebot angenommen';

  @override
  String get offerRejected => 'Angebot abgelehnt';

  @override
  String get offerPending => 'Angebot ausstehend';

  @override
  String workerNumber(int id) {
    return 'Arbeiter #$id';
  }

  @override
  String get acceptThisOffer => 'Dieses Angebot annehmen';

  @override
  String get messageWorker => 'Nachricht an Arbeiter';

  @override
  String get offerAcceptedSnack => 'Angebot angenommen!';

  @override
  String get yourOffer => 'Ihr Angebot';

  @override
  String get bidStatusSelected => 'Ausgewählt';

  @override
  String get bidStatusRejected => 'Abgelehnt';

  @override
  String get bidStatusPending => 'Ausstehend';

  @override
  String get placeYourOffer => 'Angebot abgeben';

  @override
  String get yourOfferAmount => 'Ihr Angebotsbetrag';

  @override
  String get messageToClientOptional => 'Nachricht an Kunden (optional)';

  @override
  String get addPartnerOptional => 'Partner hinzufügen (optional)';

  @override
  String get partnerNameLabel => 'Partnername';

  @override
  String get partnerFeeLabel => 'Partnergebühr';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'Partnergebühr: $amount';
  }

  @override
  String get submitOffer => 'Angebot einreichen';

  @override
  String get enterValidOfferAmount => 'Gültigen Angebotsbetrag eingeben';

  @override
  String get offerSubmittedSuccess => 'Angebot erfolgreich eingereicht';

  @override
  String get clientSelectedYourOffer => 'Der Kunde hat Ihr Angebot gewählt';

  @override
  String get handshakeHint =>
      'Beide Seiten müssen den Code teilen, um zu beginnen';

  @override
  String get handshakeAccepted => 'Handshake akzeptiert';

  @override
  String get handshakeDeclined => 'Handshake abgelehnt';

  @override
  String get acceptJob => 'Auftrag annehmen';

  @override
  String get decline => 'Ablehnen';

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
  String get generateStartCode => 'Startcode generieren';

  @override
  String get startCodeCopied => 'Startcode kopiert';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return '$amount auf Treuhandkonto reservieren';
  }

  @override
  String get releaseCodeCopied => 'Freigabecode kopiert';

  @override
  String get releaseCodeHint => 'Freigabecode eingeben';

  @override
  String get regenerateCode => 'Code neu generieren';

  @override
  String get generateReleaseCode => 'Freigabecode generieren';

  @override
  String get taskCodesGenerated => 'Aufgabencodes generiert';

  @override
  String get newReleaseCodeGenerated => 'Neuer Freigabecode generiert';

  @override
  String get readyToBegin => 'Bereit zum Start';

  @override
  String get startCodeHint => 'Startcode eingeben';

  @override
  String get verifyAndStartWork => 'Verifizieren & Arbeit starten';

  @override
  String get startCodeVerified => 'Startcode verifiziert';

  @override
  String get enterStartCodeFirst => 'Zuerst Startcode eingeben';

  @override
  String get workInProgress => 'Arbeit in Bearbeitung';

  @override
  String get releaseCodePrompt =>
      'Freigabecode eingeben um Zahlung freizugeben';

  @override
  String get releaseCodeHelper =>
      'Geben Sie diesen Code dem Arbeiter wenn die Arbeit abgeschlossen ist';

  @override
  String get confirmWorkCompleted => 'Arbeit als abgeschlossen bestätigen';

  @override
  String get workConfirmedPaymentReleased =>
      'Arbeit bestätigt — Zahlung freigegeben!';

  @override
  String get enterReleaseCodeWarning => 'Freigabecode eingeben';

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
  String get paymentSafelyReserved => 'Zahlung sicher reserviert';

  @override
  String get cancelTask => 'Aufgabe abbrechen';

  @override
  String get taskCancelled => 'Aufgabe storniert';

  @override
  String get deleteTask => 'Aufgabe löschen';

  @override
  String get deleteTaskTitle => 'Aufgabe löschen?';

  @override
  String get deleteTaskConfirm => 'Möchten Sie diese Aufgabe wirklich löschen?';

  @override
  String get taskDeleted => 'Aufgabe gelöscht';

  @override
  String get typeFirstMessage => 'Erste Nachricht eingeben';

  @override
  String get send => 'Senden';

  @override
  String get failedToSendMessage => 'Nachricht konnte nicht gesendet werden';

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
  String get chatToday => 'Heute';

  @override
  String get chatYesterday => 'Gestern';

  @override
  String chatYouPrefix(String message) {
    return 'Sie: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'Re: $jobTitle';
  }

  @override
  String get noConversationsYet => 'Noch keine Gespräche';

  @override
  String get loadingConversations => 'Lade Unterhaltungen...';

  @override
  String get loadingMessages => 'Lade Nachrichten...';

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
  String get myProfile => 'Mein Profil';

  @override
  String get unknown => 'Unbekannt';

  @override
  String get experienceLabel => 'Erfahrung';

  @override
  String get statusLabel => 'Status';

  @override
  String get notSet => 'Nicht festgelegt';

  @override
  String get onDuty => 'Im Dienst';

  @override
  String get offDuty => 'Nicht im Dienst';

  @override
  String yearsCount(int count) {
    return '$count Jahre';
  }

  @override
  String get themeAndColors => 'Design & Farben';

  @override
  String get aiModelLabel => 'KI-Modell';

  @override
  String get availableForWork => 'Für Arbeit verfügbar';

  @override
  String get visibleToClients => 'Für Kunden sichtbar';

  @override
  String get currentlyOffDuty => 'Derzeit nicht im Dienst';

  @override
  String get myReviews => 'Meine Bewertungen';

  @override
  String get deleteAccount => 'Konto löschen';

  @override
  String get deleteAccountConfirm =>
      'Sind Sie sicher? Dies kann nicht rückgängig gemacht werden.';

  @override
  String get couldNotDeleteAccount => 'Konto konnte nicht gelöscht werden';

  @override
  String get profilePhotoUpdated => 'Profilfoto aktualisiert';

  @override
  String get profileUpdated => 'Profil aktualisiert';

  @override
  String get nameLabel => 'Name';

  @override
  String get profileImageUrl => 'Profilbild-URL';

  @override
  String get yearsOfExperience => 'Jahre Erfahrung';

  @override
  String get certificationsLabel => 'Zertifikate';

  @override
  String get payoutAccountLabel => 'Auszahlungskonto';

  @override
  String get onDutySubtitle => 'Sie sind für neue Aufgaben sichtbar';

  @override
  String get loadingProfile => 'Profil wird geladen';

  @override
  String get availabilityLabel => 'Verfügbarkeit';

  @override
  String get memberLabel => 'Mitglied';

  @override
  String get available => 'Verfügbar';

  @override
  String get unavailable => 'Nicht verfügbar';

  @override
  String get viewAllReviews => 'Alle Bewertungen anzeigen';

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
  String get modeLabel => 'Modus';

  @override
  String get pickAColour => 'Farbe wählen';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get darkModeSubtitle => 'System-, Hell- oder Dunkelmodus wählen';

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
  String howWasWorker(String name) {
    return 'Wie war $name?';
  }

  @override
  String get feedbackHelps => 'Ihr Feedback hilft';

  @override
  String get thanksForReview => 'Danke für Ihre Bewertung';

  @override
  String get shareExperienceHint => 'Teilen Sie Ihre Erfahrung';

  @override
  String get ratingExcellent => 'Ausgezeichnet';

  @override
  String get ratingGreat => 'Sehr gut';

  @override
  String get ratingGood => 'Gut';

  @override
  String get ratingFair => 'Ausreichend';

  @override
  String get ratingPoor => 'Schlecht';

  @override
  String get tapToRate => 'Tippen zum Bewerten';

  @override
  String workerReviewsTitle(String name) {
    return 'Bewertungen von $name';
  }

  @override
  String get loadingReviews => 'Bewertungen werden geladen';

  @override
  String get noReviewsSubtitle => 'Noch keine Bewertungen';

  @override
  String get allReviews => 'Alle Bewertungen';

  @override
  String reviewCount(int count) {
    return '$count Bewertungen';
  }

  @override
  String get anonymous => 'Anonym';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Etwas ist schiefgelaufen';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get tryAgain => 'Erneut versuchen';

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
  String get pullDownToRefresh => 'Zum Aktualisieren nach unten ziehen';

  @override
  String get yes => 'Ja';

  @override
  String get required => 'Erforderlich';

  @override
  String get stop => 'Stopp';

  @override
  String get clear => 'Löschen';

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
  String get aiCapabilities => 'KI-Funktionen';

  @override
  String get onDeviceAi => 'On-Device-KI';

  @override
  String get aiTaglineSetup => 'Privat · Offline · Kostenlos';

  @override
  String get aiSetupDescription =>
      'Intelligente Vorschläge für Aufgaben und Angebote erhalten';

  @override
  String get physicalDevice => 'Physisches Gerät';

  @override
  String get emulatorDetected => 'Emulator erkannt';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => 'Ausreichend';

  @override
  String get freeStorage => 'Freier Speicher';

  @override
  String mbFree(int mb) {
    return '$mb MB frei';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'KI-Funktionen benötigen ein physisches Gerät.';

  @override
  String get multilingual => 'Mehrsprachig';

  @override
  String downloadingProgress(String percent) {
    return '$percent% heruntergeladen';
  }

  @override
  String get loadingModel => 'Modell wird geladen';

  @override
  String get retryDownload => 'Download wiederholen';

  @override
  String get activeAndReady => 'Aktiv & Bereit';

  @override
  String get remove => 'Entfernen';

  @override
  String get enableAi => 'KI aktivieren';

  @override
  String get downloadAiModel => 'KI-Modell herunterladen';

  @override
  String get deviceNotSupported => 'Gerät nicht unterstützt';

  @override
  String get downloadBackgroundNote =>
      'Download läuft im Hintergrund. App nicht schließen.';

  @override
  String get removeAiModelTitle => 'KI-Modell entfernen?';

  @override
  String get removeAiModelConfirm => 'KI-Modell entfernen? Gibt  MB frei.';

  @override
  String get analyzeWithAi => 'Mit KI analysieren';

  @override
  String get aiAssistantAvailable => 'KI-Assistent verfügbar';

  @override
  String get aiSetupPrompt =>
      'On-Device-KI-Modell für intelligente Vorschläge einrichten.';

  @override
  String get setup => 'Einrichten';

  @override
  String get adminDashboard => 'Admin-Dashboard';

  @override
  String get failedToLoadDashboard => 'Dashboard konnte nicht geladen werden';

  @override
  String get platformOverview => 'Plattformübersicht';

  @override
  String get liveStatistics => 'Live-Statistiken';

  @override
  String get usersSection => 'Benutzer';

  @override
  String get adminTabClients => 'Kunden';

  @override
  String get adminTabWorkers => 'Arbeiter';

  @override
  String get adminTabAccount => 'Konto';

  @override
  String get jobsSection => 'Aufträge';

  @override
  String get activeLabel => 'Aktiv';

  @override
  String get todaySection => 'Heute';

  @override
  String get createdLabel => 'Erstellt';

  @override
  String get completedLabel => 'Abgeschlossen';

  @override
  String deleteUserTitle(String role) {
    return '$role löschen?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return 'Möchten Sie $name wirklich löschen?';
  }

  @override
  String get userDeletedSuccess => 'Benutzer gelöscht';

  @override
  String get unableToLoadUsers => 'Benutzer konnten nicht geladen werden';

  @override
  String get noClientsFound => 'Keine Kunden gefunden';

  @override
  String get noWorkersFound => 'Keine Arbeiter gefunden';

  @override
  String get deleteUserTooltip => 'Benutzer löschen';

  @override
  String get adminSession => 'Admin-Sitzung';

  @override
  String get adminManageUsersHint =>
      'Benutzer über die Tabs Kunden und Arbeiter verwalten.';

  @override
  String distanceKm(int radius) {
    return '$radius km';
  }

  @override
  String get youreOffline => 'Sie sind offline';

  @override
  String get offlineHint => 'Sie sind offline';

  @override
  String get yourSkills => 'Ihre Fähigkeiten';

  @override
  String get skillsSubtitle => 'Fähigkeiten und Expertise hinzufügen';

  @override
  String get addSkillLabel => 'Fähigkeit hinzufügen';

  @override
  String get typeToSearchSkills => 'Fähigkeiten suchen';

  @override
  String savedSkillsCount(int count) {
    return '$count Fähigkeiten gespeichert';
  }

  @override
  String get noSkillsAdded => 'Keine Fähigkeiten hinzugefügt';

  @override
  String get unableToLoadTaskDetails =>
      'Aufgabendetails konnten nicht geladen werden';

  @override
  String get detailDistance => 'Entfernung';

  @override
  String get chooseLocation => 'Standort wählen';

  @override
  String get savedTab => 'Gespeichert';

  @override
  String get pinOnMapTab => 'Auf Karte markieren';

  @override
  String get locationDeniedPermanently =>
      'Standortberechtigung dauerhaft verweigert';

  @override
  String get couldNotGetLocation => 'Standort konnte nicht ermittelt werden';

  @override
  String get searchPlaces => 'Orte suchen';

  @override
  String get switchToSatellite => 'Zur Satellitenansicht';

  @override
  String get switchToRoadMap => 'Zur Straßenkarte';

  @override
  String get goToMyLocation => 'Zu meinem Standort';

  @override
  String get confirmLocation => 'Standort bestätigen';

  @override
  String get saveAddress => 'Adresse speichern';

  @override
  String get saveAddressSubtitle => 'Adresse für zukünftige Aufgaben speichern';

  @override
  String get labelField => 'Bezeichnung';

  @override
  String get labelHome => 'Zuhause';

  @override
  String get labelWork => 'Arbeit';

  @override
  String get labelOther => 'Sonstige';

  @override
  String get recipientName => 'Empfängername';

  @override
  String get recipientNameHint => 'Empfängernamen eingeben';

  @override
  String get recipientPhone => 'Empfängertelefon';

  @override
  String get recipientPhoneHint => 'Empfängertelefon eingeben';

  @override
  String get pickFromContacts => 'Aus Kontakten wählen';

  @override
  String get contactsAccessDenied => 'Kontaktzugriff verweigert';

  @override
  String get openSettings => 'Einstellungen öffnen';

  @override
  String get couldNotOpenContacts => 'Kontakte konnten nicht geöffnet werden';

  @override
  String get areaNeighbourhood => 'Gebiet / Viertel';

  @override
  String get areaHint => 'z.B. Kreuzberg, Schwabing';

  @override
  String get cityHint => 'z.B. Berlin';

  @override
  String get postalCodeRequired => 'PLZ erforderlich';

  @override
  String get postalCodeHint => 'z.B. 10115';

  @override
  String get countryCodeRequired => 'Landesvorwahl erforderlich';

  @override
  String get countryCodeHint => '+49';

  @override
  String get requiredSkillsLabel => 'Erforderliche Fähigkeiten';

  @override
  String get skillHintText => 'Fähigkeiten eingeben, mit Komma trennen';

  @override
  String get skillHelperEmpty => 'Noch keine Fähigkeiten hinzugefügt';

  @override
  String skillsAddedCount(int count) {
    return '$count Fähigkeiten hinzugefügt';
  }

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

  @override
  String get accentColorBlue => 'Blau';

  @override
  String get accentColorYellow => 'Gelb';

  @override
  String get accentColorGreen => 'Grün';

  @override
  String get accentColorPink => 'Rosa';

  @override
  String get accentColorRed => 'Rot';

  @override
  String get accentColorPurple => 'Lila';

  @override
  String get accentColorOrange => 'Orange';

  @override
  String get accentColorTeal => 'Blaugrün';

  @override
  String get accentColorCustom => 'Benutzerdefiniert';

  @override
  String get paymentStatusPending => 'Zahlung ausstehend';

  @override
  String get paymentStatusLocked => 'Betrag sicher reserviert';

  @override
  String get paymentStatusReleased => 'Zahlung erfolgreich freigegeben';

  @override
  String get paymentStatusOffline => 'Direkt nach Fertigstellung bezahlen';

  @override
  String paymentStatusGeneric(String status) {
    return 'Zahlungsstatus: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'Offen für Angebote';

  @override
  String get jobStatusOfferAccepted => 'Angebot angenommen';

  @override
  String get jobStatusReadyToStart => 'Bereit zum Start';

  @override
  String get jobStatusInProgress => 'In Bearbeitung';

  @override
  String get jobStatusPendingPayment => 'Zahlung ausstehend';

  @override
  String get jobStatusPaymentReleased => 'Zahlung freigegeben';

  @override
  String get jobStatusTaskCompleted => 'Aufgabe abgeschlossen';

  @override
  String get jobStatusCancelled => 'Storniert';

  @override
  String get detailBudgetLabel => 'Budget';

  @override
  String get detailLocationLabel => 'Standort';

  @override
  String get detailSkillsLabel => 'Fähigkeiten';

  @override
  String get detailJobIdLabel => 'Auftrags-ID';

  @override
  String get tooltipCopy => 'Kopieren';

  @override
  String get tooltipDeleteAddress => 'Adresse löschen';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return '\"$addressLabel\" aus gespeicherten Adressen entfernen?';
  }

  @override
  String get errorNotAuthenticated =>
      'Nicht authentifiziert. Bitte erneut anmelden.';

  @override
  String get errorCouldNotOpenImagePicker =>
      'Bildauswahl konnte nicht geöffnet werden.';

  @override
  String get errorCouldNotReadImage => 'Bild konnte nicht gelesen werden.';

  @override
  String get errorImageTooLarge => 'Bild muss unter 5 MB sein.';

  @override
  String get errorUploadFailed =>
      'Upload fehlgeschlagen. Bitte erneut versuchen.';

  @override
  String get errorNameRequired => 'Name ist erforderlich';

  @override
  String get errorRatingRequired => 'Bitte Bewertung auswählen';

  @override
  String get errorNotLoggedIn => 'Bitte zuerst anmelden';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'Admin-Profilaktualisierung wird nicht unterstützt';

  @override
  String get errorAdminDeletionDisabled =>
      'Admin-Kontolöschung in der App deaktiviert';

  @override
  String get errorConnectionTimeout =>
      'Verbindungszeitüberschreitung. Netzwerk prüfen.';

  @override
  String get errorConnectionError =>
      'Verbindung zum Server fehlgeschlagen. Netzwerk prüfen.';

  @override
  String get errorRequestCancelled => 'Anfrage wurde abgebrochen.';

  @override
  String get errorBadRequest => 'Ungültige Anfrage. Bitte Eingabe prüfen.';

  @override
  String get errorSessionExpired =>
      'Sitzung abgelaufen. Bitte erneut anmelden.';

  @override
  String get errorPermissionDenied => 'Keine Berechtigung für diese Aktion.';

  @override
  String get errorResourceNotFound => 'Ressource nicht gefunden.';

  @override
  String get errorConflict => 'Konflikt: Aktion kann nicht ausgeführt werden.';

  @override
  String get errorFileTooLarge => 'Datei zu groß. Maximal 5 MB.';

  @override
  String get errorValidationError => 'Validierungsfehler. Eingabe prüfen.';

  @override
  String get errorTooManyRequests => 'Zu viele Anfragen. Bitte warten.';

  @override
  String get errorServerError => 'Serverfehler. Bitte später erneut versuchen.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'Anfrage fehlgeschlagen mit Status $statusCode';
  }

  @override
  String get errorNetworkFailed => 'Netzwerkanfrage fehlgeschlagen.';

  @override
  String get errorNetworkRequestFailed => 'Netzwerkanfrage fehlgeschlagen';

  @override
  String get errorMalformedSkillResponse => 'Fehlerhafte Fähigkeiten-Antwort';

  @override
  String get errorMalformedResponse => 'Fehlerhafte Antwort';

  @override
  String get errorMalformedAdminResponse => 'Fehlerhafte Admin-Antwort';

  @override
  String get errorAdminAccessRequired => 'Admin-Zugang erforderlich';

  @override
  String get errorDescriptionUnavailable => 'Beschreibung nicht verfügbar';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'Nur $roleLabel können diese Aktion ausführen';
  }

  @override
  String get useWithoutSaving => 'Ohne Speichern verwenden';

  @override
  String get saveAndUse => 'Speichern & verwenden';

  @override
  String get useMyCurrentLocation => 'Meinen Standort verwenden';

  @override
  String get detectingLocation => 'Standort wird ermittelt…';
}
