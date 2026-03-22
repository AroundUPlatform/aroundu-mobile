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
  String get welcomeBack => 'Welkom terug';

  @override
  String get loginSubtitle => 'Log in op je AroundU-account';

  @override
  String get noAccountYet => 'Nog geen account?';

  @override
  String get createOne => 'Aanmaken';

  @override
  String get emailRequired => 'E-mail vereist';

  @override
  String get enterValidEmail => 'Voer geldig e-mailadres in';

  @override
  String get passwordRequired => 'Wachtwoord vereist';

  @override
  String get minimumSixCharacters => 'Minimaal 6 tekens';

  @override
  String get unableToLogin => 'Inloggen mislukt';

  @override
  String fieldRequired(String field) {
    return '$field is vereist';
  }

  @override
  String get enterValidPhone => 'Voer geldig telefoonnummer in';

  @override
  String get unableToRegister => 'Registratie mislukt';

  @override
  String get registrationSuccess => 'Registratie geslaagd';

  @override
  String get registerSubtitle => 'Registreer als aanbieder of werker';

  @override
  String get roleLabel => 'Rol';

  @override
  String get roleJobProvider => 'Opdrachtgever';

  @override
  String get roleJobWorker => 'Werker';

  @override
  String get countryLabel => 'Land';

  @override
  String get currencyLabel => 'Valuta';

  @override
  String get cityLabel => 'Stad';

  @override
  String get postalCodeLabel => 'Postcode';

  @override
  String get areaOptionalLabel => 'Gebied (optioneel)';

  @override
  String get fullAddressOptionalLabel => 'Volledig adres (optioneel)';

  @override
  String get alreadyRegistered => 'Al geregistreerd?';

  @override
  String get logInLink => 'Inloggen';

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
  String get newHereCreateAccount => 'Nieuw? Maak een account';

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
  String get roleSelectionSubtitle => 'Hoe wil je AroundU gebruiken?';

  @override
  String signedInAs(String email) {
    return 'Ingelogd als $email';
  }

  @override
  String get roleProviderDesc => 'Plaats taken en vind gekwalificeerde werkers';

  @override
  String get roleWorkerDescAlt =>
      'Vind opdrachten en verdien met je vaardigheden';

  @override
  String get homeTab => 'Home';

  @override
  String get jobsTab => 'Banen';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Profiel';

  @override
  String get providerTabMyTasks => 'Mijn taken';

  @override
  String get providerTabPostTask => 'Taak plaatsen';

  @override
  String get tasksNavLabel => 'Taken';

  @override
  String get postNavLabel => 'Plaatsen';

  @override
  String get workerTabTaskFeed => 'Takenfeed';

  @override
  String get feedNavLabel => 'Feed';

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
  String get urgencyMedium => 'Gemiddeld';

  @override
  String get urgencyUrgent => 'Urgent';

  @override
  String get urgencyAsap => 'Zo snel mogelijk';

  @override
  String get paymentOffline => 'Offline';

  @override
  String get paymentEscrow => 'Escrow';

  @override
  String get paymentMethod => 'Betaalmethode';

  @override
  String get payInCash => 'Contant betalen';

  @override
  String get secureEscrow => 'Veilige bewaring';

  @override
  String get filterAll => 'Alle';

  @override
  String get filterOpen => 'Open';

  @override
  String get filterActive => 'Actief';

  @override
  String get filterInProgress => 'Bezig';

  @override
  String get filterCompleted => 'Voltooid';

  @override
  String get filterCancelled => 'Geannuleerd';

  @override
  String get filterExpired => 'Verlopen';

  @override
  String get filterNearby => 'Dichtbij';

  @override
  String get filterAllMine => 'Al mijn';

  @override
  String get filterBidPlaced => 'Bod geplaatst';

  @override
  String get filterAccepted => 'Geaccepteerd';

  @override
  String get noTasksPostedYet => 'Geen taken geplaatst';

  @override
  String get noOpenTasks => 'Geen open taken';

  @override
  String get noActiveTasks => 'Geen actieve taken';

  @override
  String get noTasksInProgress => 'Geen taken bezig';

  @override
  String get noCompletedTasks => 'Geen voltooide taken';

  @override
  String get noCancelledTasks => 'Geen geannuleerde taken';

  @override
  String get noExpiredTasks => 'Geen verlopen taken';

  @override
  String get unableToLoadTasks => 'Taken laden mislukt';

  @override
  String get noNearbyJobs => 'Geen opdrachten in de buurt';

  @override
  String get noJobsYetBid => 'Geen opdrachten — doe een bod';

  @override
  String get noPendingBids => 'Geen biedingen in afwachting';

  @override
  String get noAcceptedJobs => 'Geen geaccepteerde opdrachten';

  @override
  String get noJobsInProgress => 'Geen opdrachten bezig';

  @override
  String get noCompletedJobsYet => 'Geen voltooide opdrachten';

  @override
  String get noCancelledJobs => 'Geen geannuleerde opdrachten';

  @override
  String get noExpiredJobs => 'Geen verlopen opdrachten';

  @override
  String get pullDownToRefreshCheck => 'Trek omlaag om taken te zoeken';

  @override
  String get unableToLoadJobs => 'Opdrachten laden mislukt';

  @override
  String get postNewTask => 'Nieuwe taak';

  @override
  String get postTaskSubtitle =>
      'Voeg duidelijke details toe voor nauwkeurige aanbiedingen';

  @override
  String get taskTitleLabel => 'Taaktitel';

  @override
  String get savingLocation => 'Locatie opslaan';

  @override
  String get tapToSelectLocation => 'Tik om locatie te kiezen';

  @override
  String get postTaskButton => 'Taak plaatsen';

  @override
  String get addSkillWarning => 'Voeg minimaal één vereiste vaardigheid toe';

  @override
  String get enterValidBudget => 'Voer geldig budget in';

  @override
  String get setJobLocationWarning => 'Stel de taaklocatie in';

  @override
  String get jobPostedSuccess => 'Taak geplaatst';

  @override
  String get failedToPostJob => 'Plaatsen mislukt';

  @override
  String get failedToSaveLocation => 'Opslaan mislukt';

  @override
  String get unableToLoadJobWorkflow => 'Workflow laden mislukt';

  @override
  String get unknownError => 'Onbekende fout';

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
  String get offersSection => 'Aanbiedingen';

  @override
  String get noOffersReceivedYet => 'Geen aanbiedingen ontvangen';

  @override
  String get offerAccepted => 'Aanbod geaccepteerd';

  @override
  String get offerRejected => 'Aanbod afgewezen';

  @override
  String get offerPending => 'Aanbod in afwachting';

  @override
  String workerNumber(int id) {
    return 'Werker #$id';
  }

  @override
  String get acceptThisOffer => 'Dit aanbod accepteren';

  @override
  String get messageWorker => 'Bericht aan werker';

  @override
  String get offerAcceptedSnack => 'Aanbod geaccepteerd!';

  @override
  String get yourOffer => 'Je aanbod';

  @override
  String get bidStatusSelected => 'Geselecteerd';

  @override
  String get bidStatusRejected => 'Afgewezen';

  @override
  String get bidStatusPending => 'In afwachting';

  @override
  String get placeYourOffer => 'Doe je aanbod';

  @override
  String get yourOfferAmount => 'Je aanbodbedrag';

  @override
  String get messageToClientOptional => 'Bericht aan klant (optioneel)';

  @override
  String get addPartnerOptional => 'Partner toevoegen (optioneel)';

  @override
  String get partnerNameLabel => 'Partnernaam';

  @override
  String get partnerFeeLabel => 'Partnervergoeding';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'Partnervergoeding: $amount';
  }

  @override
  String get submitOffer => 'Aanbod indienen';

  @override
  String get enterValidOfferAmount => 'Voer geldig bedrag in';

  @override
  String get offerSubmittedSuccess => 'Aanbod ingediend';

  @override
  String get clientSelectedYourOffer => 'De klant heeft je aanbod gekozen';

  @override
  String get handshakeHint =>
      'Beide partijen moeten de code delen om te beginnen';

  @override
  String get handshakeAccepted => 'Handdruk geaccepteerd';

  @override
  String get handshakeDeclined => 'Handdruk geweigerd';

  @override
  String get acceptJob => 'Opdracht accepteren';

  @override
  String get decline => 'Weigeren';

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
  String get generateStartCode => 'Startcode genereren';

  @override
  String get startCodeCopied => 'Startcode gekopieerd';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return '$amount in bewaring reserveren';
  }

  @override
  String get releaseCodeCopied => 'Code gekopieerd';

  @override
  String get releaseCodeHint => 'Voer vrijgavecode in';

  @override
  String get regenerateCode => 'Code opnieuw genereren';

  @override
  String get generateReleaseCode => 'Vrijgavecode genereren';

  @override
  String get taskCodesGenerated => 'Taakcodes gegenereerd';

  @override
  String get newReleaseCodeGenerated => 'Nieuwe code gegenereerd';

  @override
  String get readyToBegin => 'Klaar om te beginnen';

  @override
  String get startCodeHint => 'Voer startcode in';

  @override
  String get verifyAndStartWork => 'Verifiëren en starten';

  @override
  String get startCodeVerified => 'Startcode geverifieerd';

  @override
  String get enterStartCodeFirst => 'Voer eerst de startcode in';

  @override
  String get workInProgress => 'Werk bezig';

  @override
  String get releaseCodePrompt => 'Voer code in om betaling vrij te geven';

  @override
  String get releaseCodeHelper =>
      'Geef deze code aan de werker wanneer het werk klaar is';

  @override
  String get confirmWorkCompleted => 'Werk als voltooid bevestigen';

  @override
  String get workConfirmedPaymentReleased =>
      'Werk bevestigd — betaling vrijgegeven!';

  @override
  String get enterReleaseCodeWarning => 'Voer vrijgavecode in';

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
  String get paymentSafelyReserved => 'Betaling veilig gereserveerd';

  @override
  String get cancelTask => 'Taak annuleren';

  @override
  String get taskCancelled => 'Taak geannuleerd';

  @override
  String get deleteTask => 'Taak verwijderen';

  @override
  String get deleteTaskTitle => 'Taak verwijderen?';

  @override
  String get deleteTaskConfirm => 'Deze taak verwijderen?';

  @override
  String get taskDeleted => 'Taak verwijderd';

  @override
  String get typeFirstMessage => 'Typ het eerste bericht';

  @override
  String get send => 'Verzenden';

  @override
  String get failedToSendMessage => 'Verzenden mislukt';

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
  String get chatToday => 'Vandaag';

  @override
  String get chatYesterday => 'Gisteren';

  @override
  String chatYouPrefix(String message) {
    return 'Jij: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'Re: $jobTitle';
  }

  @override
  String get noConversationsYet => 'Geen gesprekken';

  @override
  String get loadingConversations => 'Gesprekken laden...';

  @override
  String get loadingMessages => 'Berichten laden...';

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
  String get myProfile => 'Mijn profiel';

  @override
  String get unknown => 'Onbekend';

  @override
  String get experienceLabel => 'Ervaring';

  @override
  String get statusLabel => 'Status';

  @override
  String get notSet => 'Niet ingesteld';

  @override
  String get onDuty => 'Beschikbaar';

  @override
  String get offDuty => 'Niet beschikbaar';

  @override
  String yearsCount(int count) {
    return '$count jaar';
  }

  @override
  String get themeAndColors => 'Thema en kleuren';

  @override
  String get aiModelLabel => 'AI-model';

  @override
  String get availableForWork => 'Beschikbaar voor werk';

  @override
  String get visibleToClients => 'Zichtbaar voor klanten';

  @override
  String get currentlyOffDuty => 'Momenteel niet beschikbaar';

  @override
  String get myReviews => 'Mijn beoordelingen';

  @override
  String get deleteAccount => 'Account verwijderen';

  @override
  String get deleteAccountConfirm => 'Weet je het zeker? Dit is onomkeerbaar.';

  @override
  String get couldNotDeleteAccount => 'Kon account niet verwijderen';

  @override
  String get profilePhotoUpdated => 'Profielfoto bijgewerkt';

  @override
  String get profileUpdated => 'Profiel bijgewerkt';

  @override
  String get nameLabel => 'Naam';

  @override
  String get profileImageUrl => 'Profielfoto-URL';

  @override
  String get yearsOfExperience => 'Jaren ervaring';

  @override
  String get certificationsLabel => 'Certificeringen';

  @override
  String get payoutAccountLabel => 'Uitbetalingsrekening';

  @override
  String get onDutySubtitle => 'Je bent zichtbaar voor nieuwe taken';

  @override
  String get loadingProfile => 'Profiel laden';

  @override
  String get availabilityLabel => 'Beschikbaarheid';

  @override
  String get memberLabel => 'Lid';

  @override
  String get available => 'Beschikbaar';

  @override
  String get unavailable => 'Niet beschikbaar';

  @override
  String get viewAllReviews => 'Alle beoordelingen bekijken';

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
  String get modeLabel => 'Modus';

  @override
  String get pickAColour => 'Kies een kleur';

  @override
  String get systemDefault => 'Systeemstandaard';

  @override
  String get darkModeSubtitle => 'Kies systeem-, licht- of donkermodus';

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
  String howWasWorker(String name) {
    return 'Hoe was $name?';
  }

  @override
  String get feedbackHelps => 'Je feedback helpt';

  @override
  String get thanksForReview => 'Bedankt voor je beoordeling';

  @override
  String get shareExperienceHint => 'Deel je ervaring';

  @override
  String get ratingExcellent => 'Uitstekend';

  @override
  String get ratingGreat => 'Heel goed';

  @override
  String get ratingGood => 'Goed';

  @override
  String get ratingFair => 'Redelijk';

  @override
  String get ratingPoor => 'Slecht';

  @override
  String get tapToRate => 'Tik om te beoordelen';

  @override
  String workerReviewsTitle(String name) {
    return 'Beoordelingen van $name';
  }

  @override
  String get loadingReviews => 'Beoordelingen laden';

  @override
  String get noReviewsSubtitle => 'Geen beoordelingen';

  @override
  String get allReviews => 'Alle beoordelingen';

  @override
  String reviewCount(int count) {
    return '$count beoordelingen';
  }

  @override
  String get anonymous => 'Anoniem';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Er ging iets mis';

  @override
  String get retry => 'Opnieuw Proberen';

  @override
  String get tryAgain => 'Opnieuw proberen';

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
  String get pullDownToRefresh => 'Naar beneden trekken om te vernieuwen';

  @override
  String get yes => 'Ja';

  @override
  String get required => 'Vereist';

  @override
  String get stop => 'Stop';

  @override
  String get clear => 'Wissen';

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
  String get aiCapabilities => 'AI-mogelijkheden';

  @override
  String get onDeviceAi => 'AI op apparaat';

  @override
  String get aiTaglineSetup => 'Privé · Offline · Gratis';

  @override
  String get aiSetupDescription =>
      'Ontvang slimme suggesties voor taken en aanbiedingen';

  @override
  String get physicalDevice => 'Fysiek apparaat';

  @override
  String get emulatorDetected => 'Emulator gedetecteerd';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => 'Voldoende';

  @override
  String get freeStorage => 'Vrije opslag';

  @override
  String mbFree(int mb) {
    return '$mb MB vrij';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'AI-functies vereisen een fysiek apparaat.';

  @override
  String get multilingual => 'Meertalig';

  @override
  String downloadingProgress(String percent) {
    return '$percent% gedownload';
  }

  @override
  String get loadingModel => 'Model laden';

  @override
  String get retryDownload => 'Download opnieuw';

  @override
  String get activeAndReady => 'Actief & gereed';

  @override
  String get remove => 'Verwijderen';

  @override
  String get enableAi => 'AI inschakelen';

  @override
  String get downloadAiModel => 'AI-model downloaden';

  @override
  String get deviceNotSupported => 'Apparaat niet ondersteund';

  @override
  String get downloadBackgroundNote =>
      'Download op achtergrond. Sluit de app niet.';

  @override
  String get removeAiModelTitle => 'AI-model verwijderen?';

  @override
  String get removeAiModelConfirm => 'AI-model verwijderen? Maakt  MB vrij.';

  @override
  String get analyzeWithAi => 'Analyseren met AI';

  @override
  String get aiAssistantAvailable => 'AI-assistent beschikbaar';

  @override
  String get aiSetupPrompt =>
      'Stel een AI-model op het apparaat in voor slimme suggesties.';

  @override
  String get setup => 'Instellen';

  @override
  String get adminDashboard => 'Beheerderspaneel';

  @override
  String get failedToLoadDashboard => 'Laden paneel mislukt';

  @override
  String get platformOverview => 'Platformoverzicht';

  @override
  String get liveStatistics => 'Live statistieken';

  @override
  String get usersSection => 'Gebruikers';

  @override
  String get adminTabClients => 'Klanten';

  @override
  String get adminTabWorkers => 'Werkers';

  @override
  String get adminTabAccount => 'Account';

  @override
  String get jobsSection => 'Opdrachten';

  @override
  String get activeLabel => 'Actief';

  @override
  String get todaySection => 'Vandaag';

  @override
  String get createdLabel => 'Aangemaakt';

  @override
  String get completedLabel => 'Voltooid';

  @override
  String deleteUserTitle(String role) {
    return '$role verwijderen?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return '$name verwijderen?';
  }

  @override
  String get userDeletedSuccess => 'Gebruiker verwijderd';

  @override
  String get unableToLoadUsers => 'Gebruikers laden mislukt';

  @override
  String get noClientsFound => 'Geen klanten gevonden';

  @override
  String get noWorkersFound => 'Geen werkers gevonden';

  @override
  String get deleteUserTooltip => 'Gebruiker verwijderen';

  @override
  String get adminSession => 'Beheersessie';

  @override
  String get adminManageUsersHint => 'Beheer gebruikers via de tabbladen.';

  @override
  String distanceKm(int radius) {
    return '$radius km';
  }

  @override
  String get youreOffline => 'Je bent offline';

  @override
  String get offlineHint => 'Je bent offline';

  @override
  String get yourSkills => 'Je vaardigheden';

  @override
  String get skillsSubtitle => 'Voeg je vaardigheden en expertise toe';

  @override
  String get addSkillLabel => 'Vaardigheid toevoegen';

  @override
  String get typeToSearchSkills => 'Vaardigheden zoeken';

  @override
  String savedSkillsCount(int count) {
    return '$count vaardigheden opgeslagen';
  }

  @override
  String get noSkillsAdded => 'Geen vaardigheden';

  @override
  String get unableToLoadTaskDetails => 'Details laden mislukt';

  @override
  String get detailDistance => 'Afstand';

  @override
  String get chooseLocation => 'Locatie kiezen';

  @override
  String get savedTab => 'Opgeslagen';

  @override
  String get pinOnMapTab => 'Markeer op kaart';

  @override
  String get locationDeniedPermanently => 'Locatietoestemming geweigerd';

  @override
  String get couldNotGetLocation => 'Kon locatie niet ophalen';

  @override
  String get searchPlaces => 'Plaatsen zoeken';

  @override
  String get switchToSatellite => 'Satelliet';

  @override
  String get switchToRoadMap => 'Wegenkaart';

  @override
  String get goToMyLocation => 'Naar mijn locatie';

  @override
  String get confirmLocation => 'Locatie bevestigen';

  @override
  String get saveAddress => 'Adres opslaan';

  @override
  String get saveAddressSubtitle => 'Opslaan voor toekomstige taken';

  @override
  String get labelField => 'Label';

  @override
  String get labelHome => 'Thuis';

  @override
  String get labelWork => 'Werk';

  @override
  String get labelOther => 'Anders';

  @override
  String get recipientName => 'Naam ontvanger';

  @override
  String get recipientNameHint => 'Voer naam in';

  @override
  String get recipientPhone => 'Telefoon ontvanger';

  @override
  String get recipientPhoneHint => 'Voer telefoon in';

  @override
  String get pickFromContacts => 'Kies uit contacten';

  @override
  String get contactsAccessDenied => 'Contacttoegang geweigerd';

  @override
  String get openSettings => 'Instellingen openen';

  @override
  String get couldNotOpenContacts => 'Kon contacten niet openen';

  @override
  String get areaNeighbourhood => 'Gebied / Wijk';

  @override
  String get areaHint => 'Bijv. Jordaan, De Pijp';

  @override
  String get cityHint => 'Bijv. Amsterdam';

  @override
  String get postalCodeRequired => 'Postcode vereist';

  @override
  String get postalCodeHint => 'Bijv. 1012';

  @override
  String get countryCodeRequired => 'Landcode vereist';

  @override
  String get countryCodeHint => '+31';

  @override
  String get requiredSkillsLabel => 'Vereiste vaardigheden';

  @override
  String get skillHintText => 'Typ vaardigheden, scheid met komma\'s';

  @override
  String get skillHelperEmpty => 'Nog geen vaardigheden';

  @override
  String skillsAddedCount(int count) {
    return '$count vaardigheden toegevoegd';
  }

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

  @override
  String get accentColorBlue => 'Blauw';

  @override
  String get accentColorYellow => 'Geel';

  @override
  String get accentColorGreen => 'Groen';

  @override
  String get accentColorPink => 'Roze';

  @override
  String get accentColorRed => 'Rood';

  @override
  String get accentColorPurple => 'Paars';

  @override
  String get accentColorOrange => 'Oranje';

  @override
  String get accentColorTeal => 'Blauwgroen';

  @override
  String get accentColorCustom => 'Aangepast';

  @override
  String get paymentStatusPending => 'Betaling in afwachting';

  @override
  String get paymentStatusLocked => 'Bedrag veilig gereserveerd';

  @override
  String get paymentStatusReleased => 'Betaling vrijgegeven';

  @override
  String get paymentStatusOffline => 'Betaal bij voltooiing';

  @override
  String paymentStatusGeneric(String status) {
    return 'Betalingsstatus: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'Open voor aanbiedingen';

  @override
  String get jobStatusOfferAccepted => 'Aanbod geaccepteerd';

  @override
  String get jobStatusReadyToStart => 'Klaar om te beginnen';

  @override
  String get jobStatusInProgress => 'Bezig';

  @override
  String get jobStatusPendingPayment => 'Betaling in afwachting';

  @override
  String get jobStatusPaymentReleased => 'Betaling vrijgegeven';

  @override
  String get jobStatusTaskCompleted => 'Taak voltooid';

  @override
  String get jobStatusCancelled => 'Geannuleerd';

  @override
  String get detailBudgetLabel => 'Budget';

  @override
  String get detailLocationLabel => 'Locatie';

  @override
  String get detailSkillsLabel => 'Vaardigheden';

  @override
  String get detailJobIdLabel => 'Opdracht-ID';

  @override
  String get tooltipCopy => 'Kopiëren';

  @override
  String get tooltipDeleteAddress => 'Adres verwijderen';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return '\"$addressLabel\" verwijderen uit opgeslagen adressen?';
  }

  @override
  String get errorNotAuthenticated => 'Niet geverifieerd. Log opnieuw in.';

  @override
  String get errorCouldNotOpenImagePicker => 'Kon beeldselectie niet openen.';

  @override
  String get errorCouldNotReadImage => 'Kon afbeelding niet lezen.';

  @override
  String get errorImageTooLarge => 'Afbeelding moet kleiner zijn dan 5 MB.';

  @override
  String get errorUploadFailed => 'Upload mislukt. Probeer opnieuw.';

  @override
  String get errorNameRequired => 'Naam is vereist';

  @override
  String get errorRatingRequired => 'Selecteer een beoordeling';

  @override
  String get errorNotLoggedIn => 'Log eerst in';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'Admin-profielupdate niet ondersteund';

  @override
  String get errorAdminDeletionDisabled =>
      'Admin-verwijdering uitgeschakeld in app';

  @override
  String get errorConnectionTimeout => 'Verbindingstime-out. Probeer opnieuw.';

  @override
  String get errorConnectionError => 'Verbinding met server mislukt.';

  @override
  String get errorRequestCancelled => 'Aanvraag geannuleerd.';

  @override
  String get errorBadRequest => 'Ongeldige aanvraag. Controleer invoer.';

  @override
  String get errorSessionExpired => 'Sessie verlopen. Log opnieuw in.';

  @override
  String get errorPermissionDenied => 'Geen toestemming.';

  @override
  String get errorResourceNotFound => 'Bron niet gevonden.';

  @override
  String get errorConflict => 'Conflict: actie kan niet worden uitgevoerd.';

  @override
  String get errorFileTooLarge => 'Bestand te groot. Max 5 MB.';

  @override
  String get errorValidationError => 'Validatiefout. Controleer invoer.';

  @override
  String get errorTooManyRequests => 'Te veel aanvragen. Wacht even.';

  @override
  String get errorServerError => 'Serverfout. Probeer later opnieuw.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'Aanvraag mislukt: status $statusCode';
  }

  @override
  String get errorNetworkFailed => 'Netwerkfout.';

  @override
  String get errorNetworkRequestFailed => 'Netwerkfout';

  @override
  String get errorMalformedSkillResponse => 'Onjuiste vaardigheden-respons';

  @override
  String get errorMalformedResponse => 'Onjuiste respons';

  @override
  String get errorMalformedAdminResponse => 'Onjuiste admin-respons';

  @override
  String get errorAdminAccessRequired => 'Beheertoegang vereist';

  @override
  String get errorDescriptionUnavailable => 'Beschrijving niet beschikbaar';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'Alleen $roleLabel kunnen dit doen';
  }

  @override
  String get useWithoutSaving => 'Gebruiken zonder opslaan';

  @override
  String get saveAndUse => 'Opslaan en gebruiken';

  @override
  String get useMyCurrentLocation => 'Mijn huidige locatie gebruiken';

  @override
  String get detectingLocation => 'Locatie detecteren…';
}
