// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'Accedi';

  @override
  String get registerTitle => 'Crea Account';

  @override
  String get emailLabel => 'Email';

  @override
  String get passwordLabel => 'Password';

  @override
  String get confirmPasswordLabel => 'Conferma Password';

  @override
  String get forgotPassword => 'Password dimenticata?';

  @override
  String get loginButton => 'Accedi';

  @override
  String get registerButton => 'Registrati';

  @override
  String get orContinueWith => 'Oppure continua con';

  @override
  String get dontHaveAccount => 'Non hai un account?';

  @override
  String get alreadyHaveAccount => 'Hai già un account?';

  @override
  String get welcomeBack => 'Bentornato';

  @override
  String get loginSubtitle => 'Accedi al tuo account AroundU';

  @override
  String get noAccountYet => 'Non hai un account?';

  @override
  String get createOne => 'Creane uno';

  @override
  String get emailRequired => 'E-mail richiesta';

  @override
  String get enterValidEmail => 'Inserisci un\'e-mail valida';

  @override
  String get passwordRequired => 'Password richiesta';

  @override
  String get minimumSixCharacters => 'Minimo 6 caratteri';

  @override
  String get unableToLogin => 'Accesso non riuscito';

  @override
  String fieldRequired(String field) {
    return '$field è obbligatorio';
  }

  @override
  String get enterValidPhone => 'Inserisci un telefono valido';

  @override
  String get unableToRegister => 'Registrazione non riuscita';

  @override
  String get registrationSuccess => 'Registrazione riuscita';

  @override
  String get registerSubtitle => 'Registrati come fornitore o lavoratore';

  @override
  String get roleLabel => 'Ruolo';

  @override
  String get roleJobProvider => 'Fornitore di attività';

  @override
  String get roleJobWorker => 'Lavoratore';

  @override
  String get countryLabel => 'Paese';

  @override
  String get currencyLabel => 'Valuta';

  @override
  String get cityLabel => 'Città';

  @override
  String get postalCodeLabel => 'CAP';

  @override
  String get areaOptionalLabel => 'Zona (opzionale)';

  @override
  String get fullAddressOptionalLabel => 'Indirizzo completo (opzionale)';

  @override
  String get alreadyRegistered => 'Già registrato?';

  @override
  String get logInLink => 'Accedi';

  @override
  String get onboardingTitle1 => 'Trova Lavori Intorno a Te';

  @override
  String get onboardingSubtitle1 =>
      'Scopri lavori e servizi locali nel tuo quartiere.';

  @override
  String get onboardingTitle2 => 'Offri e Vieni Assunto';

  @override
  String get onboardingSubtitle2 =>
      'Fai offerte competitive e vieni selezionato per compiti adatti alle tue competenze.';

  @override
  String get onboardingTitle3 => 'Pagamenti Sicuri';

  @override
  String get onboardingSubtitle3 =>
      'I pagamenti in garanzia assicurano transazioni eque e sicure.';

  @override
  String get getStarted => 'Inizia';

  @override
  String get skip => 'Salta';

  @override
  String get next => 'Avanti';

  @override
  String get newHereCreateAccount => 'Nuovo? Crea un account';

  @override
  String get roleSelectionTitle => 'Scegli il Tuo Ruolo';

  @override
  String get roleClient => 'Cliente';

  @override
  String get roleClientDesc => 'Ho bisogno di aiuto con i compiti';

  @override
  String get roleWorker => 'Lavoratore';

  @override
  String get roleWorkerDesc => 'Voglio offrire le mie competenze';

  @override
  String get continueButton => 'Continua';

  @override
  String get roleSelectionSubtitle => 'Come vuoi usare AroundU?';

  @override
  String signedInAs(String email) {
    return 'Connesso come $email';
  }

  @override
  String get roleProviderDesc =>
      'Pubblica attività e trova lavoratori qualificati';

  @override
  String get roleWorkerDescAlt =>
      'Trova attività e guadagna con le tue competenze';

  @override
  String get homeTab => 'Home';

  @override
  String get jobsTab => 'Lavori';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Profilo';

  @override
  String get providerTabMyTasks => 'Le mie attività';

  @override
  String get providerTabPostTask => 'Pubblica attività';

  @override
  String get tasksNavLabel => 'Attività';

  @override
  String get postNavLabel => 'Pubblica';

  @override
  String get workerTabTaskFeed => 'Feed attività';

  @override
  String get feedNavLabel => 'Feed';

  @override
  String get myJobs => 'I Miei Lavori';

  @override
  String get workerFeed => 'Lavori Disponibili';

  @override
  String get createJob => 'Crea Lavoro';

  @override
  String get postJob => 'Pubblica Lavoro';

  @override
  String get editJob => 'Modifica Lavoro';

  @override
  String get deleteJob => 'Elimina Lavoro';

  @override
  String get deleteJobConfirm => 'Sei sicuro di voler eliminare questo lavoro?';

  @override
  String get jobTitle => 'Titolo';

  @override
  String get jobDescription => 'Descrizione';

  @override
  String get jobCategory => 'Categoria';

  @override
  String get jobBudget => 'Budget';

  @override
  String get jobLocation => 'Posizione';

  @override
  String get jobDueDate => 'Data di Scadenza';

  @override
  String get jobSkills => 'Competenze Richieste';

  @override
  String get jobUrgency => 'Urgenza';

  @override
  String get jobPaymentMode => 'Modalità di Pagamento';

  @override
  String get urgencyNormal => 'Normale';

  @override
  String get urgencyMedium => 'Media';

  @override
  String get urgencyUrgent => 'Urgente';

  @override
  String get urgencyAsap => 'Il prima possibile';

  @override
  String get paymentOffline => 'Offline';

  @override
  String get paymentEscrow => 'Garanzia';

  @override
  String get paymentMethod => 'Metodo di pagamento';

  @override
  String get payInCash => 'Paga in contanti';

  @override
  String get secureEscrow => 'Garanzia sicura';

  @override
  String get filterAll => 'Tutti';

  @override
  String get filterOpen => 'Aperto';

  @override
  String get filterActive => 'Attivo';

  @override
  String get filterInProgress => 'In corso';

  @override
  String get filterCompleted => 'Completato';

  @override
  String get filterCancelled => 'Annullato';

  @override
  String get filterExpired => 'Scaduto';

  @override
  String get filterNearby => 'Vicino';

  @override
  String get filterAllMine => 'Tutti i miei';

  @override
  String get filterBidPlaced => 'Offerta inviata';

  @override
  String get filterAccepted => 'Accettato';

  @override
  String get noTasksPostedYet => 'Nessuna attività pubblicata';

  @override
  String get noOpenTasks => 'Nessuna attività aperta';

  @override
  String get noActiveTasks => 'Nessuna attività attiva';

  @override
  String get noTasksInProgress => 'Nessuna attività in corso';

  @override
  String get noCompletedTasks => 'Nessuna attività completata';

  @override
  String get noCancelledTasks => 'Nessuna attività annullata';

  @override
  String get noExpiredTasks => 'Nessuna attività scaduta';

  @override
  String get unableToLoadTasks => 'Errore nel caricamento attività';

  @override
  String get noNearbyJobs => 'Nessun lavoro vicino';

  @override
  String get noJobsYetBid => 'Nessun lavoro — fai un\'offerta';

  @override
  String get noPendingBids => 'Nessuna offerta in attesa';

  @override
  String get noAcceptedJobs => 'Nessun lavoro accettato';

  @override
  String get noJobsInProgress => 'Nessun lavoro in corso';

  @override
  String get noCompletedJobsYet => 'Nessun lavoro completato';

  @override
  String get noCancelledJobs => 'Nessun lavoro annullato';

  @override
  String get noExpiredJobs => 'Nessun lavoro scaduto';

  @override
  String get pullDownToRefreshCheck => 'Scorri per nuove attività';

  @override
  String get unableToLoadJobs => 'Errore nel caricamento lavori';

  @override
  String get postNewTask => 'Nuova attività';

  @override
  String get postTaskSubtitle => 'Aggiungi dettagli chiari per offerte precise';

  @override
  String get taskTitleLabel => 'Titolo attività';

  @override
  String get savingLocation => 'Salvataggio posizione';

  @override
  String get tapToSelectLocation => 'Tocca per selezionare';

  @override
  String get postTaskButton => 'Pubblica attività';

  @override
  String get addSkillWarning => 'Aggiungi almeno una competenza richiesta';

  @override
  String get enterValidBudget => 'Inserisci un budget valido';

  @override
  String get setJobLocationWarning => 'Imposta la posizione dell\'attività';

  @override
  String get jobPostedSuccess => 'Attività pubblicata';

  @override
  String get failedToPostJob => 'Errore nella pubblicazione';

  @override
  String get failedToSaveLocation => 'Errore nel salvataggio';

  @override
  String get unableToLoadJobWorkflow => 'Errore nel caricamento flusso';

  @override
  String get unknownError => 'Errore sconosciuto';

  @override
  String get statusOpenForBids => 'Aperto alle Offerte';

  @override
  String get statusInProgress => 'In Corso';

  @override
  String get statusCompleted => 'Completato';

  @override
  String get statusCancelled => 'Annullato';

  @override
  String get statusPendingStart => 'In Attesa di Inizio';

  @override
  String get statusPendingRelease => 'In Attesa di Rilascio';

  @override
  String get bids => 'Offerte';

  @override
  String get noBids => 'Nessuna offerta ancora';

  @override
  String get placeBid => 'Fai un\'Offerta';

  @override
  String get bidAmount => 'Importo Offerta';

  @override
  String get bidNotes => 'Note (opzionale)';

  @override
  String get yourBid => 'La Tua Offerta';

  @override
  String get acceptBid => 'Accetta Offerta';

  @override
  String get rejectBid => 'Rifiuta Offerta';

  @override
  String get bidAccepted => 'Offerta Accettata';

  @override
  String get bidRejected => 'Offerta Rifiutata';

  @override
  String get bidPending => 'In Sospeso';

  @override
  String get offersSection => 'Offerte';

  @override
  String get noOffersReceivedYet => 'Nessuna offerta ricevuta';

  @override
  String get offerAccepted => 'Offerta accettata';

  @override
  String get offerRejected => 'Offerta rifiutata';

  @override
  String get offerPending => 'Offerta in attesa';

  @override
  String workerNumber(int id) {
    return 'Lavoratore #$id';
  }

  @override
  String get acceptThisOffer => 'Accetta questa offerta';

  @override
  String get messageWorker => 'Messaggio al lavoratore';

  @override
  String get offerAcceptedSnack => 'Offerta accettata!';

  @override
  String get yourOffer => 'La tua offerta';

  @override
  String get bidStatusSelected => 'Selezionato';

  @override
  String get bidStatusRejected => 'Rifiutato';

  @override
  String get bidStatusPending => 'In attesa';

  @override
  String get placeYourOffer => 'Fai la tua offerta';

  @override
  String get yourOfferAmount => 'Importo della tua offerta';

  @override
  String get messageToClientOptional => 'Messaggio al cliente (opzionale)';

  @override
  String get addPartnerOptional => 'Aggiungi partner (opzionale)';

  @override
  String get partnerNameLabel => 'Nome partner';

  @override
  String get partnerFeeLabel => 'Commissione partner';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'Commissione partner: $amount';
  }

  @override
  String get submitOffer => 'Invia offerta';

  @override
  String get enterValidOfferAmount => 'Inserisci un importo valido';

  @override
  String get offerSubmittedSuccess => 'Offerta inviata';

  @override
  String get clientSelectedYourOffer => 'Il cliente ha scelto la tua offerta';

  @override
  String get handshakeHint =>
      'Entrambi devono condividere il codice per iniziare';

  @override
  String get handshakeAccepted => 'Stretta accettata';

  @override
  String get handshakeDeclined => 'Stretta rifiutata';

  @override
  String get acceptJob => 'Accetta lavoro';

  @override
  String get decline => 'Rifiuta';

  @override
  String get startCode => 'Codice di Avvio';

  @override
  String get releaseCode => 'Codice di Rilascio';

  @override
  String get generateCodes => 'Genera Codici';

  @override
  String get verifyCode => 'Verifica Codice';

  @override
  String get enterCode => 'Inserisci Codice';

  @override
  String get generateStartCode => 'Genera codice di avvio';

  @override
  String get startCodeCopied => 'Codice di avvio copiato';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return 'Riserva $amount in garanzia';
  }

  @override
  String get releaseCodeCopied => 'Codice copiato';

  @override
  String get releaseCodeHint => 'Inserisci codice di rilascio';

  @override
  String get regenerateCode => 'Rigenera codice';

  @override
  String get generateReleaseCode => 'Genera codice di rilascio';

  @override
  String get taskCodesGenerated => 'Codici attività generati';

  @override
  String get newReleaseCodeGenerated => 'Nuovo codice di rilascio generato';

  @override
  String get readyToBegin => 'Pronto per iniziare';

  @override
  String get startCodeHint => 'Inserisci codice di avvio';

  @override
  String get verifyAndStartWork => 'Verifica e inizia';

  @override
  String get startCodeVerified => 'Codice di avvio verificato';

  @override
  String get enterStartCodeFirst => 'Inserisci prima il codice di avvio';

  @override
  String get workInProgress => 'Lavoro in corso';

  @override
  String get releaseCodePrompt =>
      'Inserisci il codice per rilasciare il pagamento';

  @override
  String get releaseCodeHelper =>
      'Dai questo codice al lavoratore quando il lavoro è completato';

  @override
  String get confirmWorkCompleted => 'Conferma lavoro completato';

  @override
  String get workConfirmedPaymentReleased =>
      'Lavoro confermato — pagamento rilasciato!';

  @override
  String get enterReleaseCodeWarning => 'Inserisci codice di rilascio';

  @override
  String get escrow => 'Garanzia';

  @override
  String get lockEscrow => 'Blocca Garanzia';

  @override
  String get releaseEscrow => 'Rilascia Pagamento';

  @override
  String get paymentLocked => 'Pagamento Bloccato';

  @override
  String get paymentReleased => 'Pagamento Rilasciato';

  @override
  String get paymentSafelyReserved => 'Pagamento riservato in sicurezza';

  @override
  String get cancelTask => 'Annulla attività';

  @override
  String get taskCancelled => 'Attività annullata';

  @override
  String get deleteTask => 'Elimina attività';

  @override
  String get deleteTaskTitle => 'Eliminare attività?';

  @override
  String get deleteTaskConfirm => 'Eliminare questa attività?';

  @override
  String get taskDeleted => 'Attività eliminata';

  @override
  String get typeFirstMessage => 'Scrivi il primo messaggio';

  @override
  String get send => 'Invia';

  @override
  String get failedToSendMessage => 'Errore nell\'invio del messaggio';

  @override
  String get conversations => 'Messaggi';

  @override
  String get noMessagesYet => 'Nessun messaggio ancora';

  @override
  String get noMessagesSubtitle =>
      'Le tue conversazioni appariranno qui quando inizierai a chattare su un compito.';

  @override
  String get startConversation => 'Inizia la conversazione!';

  @override
  String get typeMessage => 'Scrivi un messaggio...';

  @override
  String get typing => 'sta scrivendo...';

  @override
  String get newMessages => 'Nuovi Messaggi';

  @override
  String get now => 'ora';

  @override
  String minutesAgo(int count) {
    return '${count}min fa';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lavoratori',
      one: '1 lavoratore',
    );
    return '$_temp0';
  }

  @override
  String get chatToday => 'Oggi';

  @override
  String get chatYesterday => 'Ieri';

  @override
  String chatYouPrefix(String message) {
    return 'Tu: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'Re: $jobTitle';
  }

  @override
  String get noConversationsYet => 'Nessuna conversazione';

  @override
  String get loadingConversations => 'Caricamento conversazioni...';

  @override
  String get loadingMessages => 'Caricamento messaggi...';

  @override
  String get profile => 'Profilo';

  @override
  String get editProfile => 'Modifica Profilo';

  @override
  String get fullName => 'Nome Completo';

  @override
  String get phone => 'Numero di Telefono';

  @override
  String get bio => 'Bio';

  @override
  String get skills => 'Competenze';

  @override
  String get saveChanges => 'Salva Modifiche';

  @override
  String get logout => 'Esci';

  @override
  String get logoutConfirm => 'Sei sicuro di voler uscire?';

  @override
  String get myProfile => 'Il mio profilo';

  @override
  String get unknown => 'Sconosciuto';

  @override
  String get experienceLabel => 'Esperienza';

  @override
  String get statusLabel => 'Stato';

  @override
  String get notSet => 'Non impostato';

  @override
  String get onDuty => 'In servizio';

  @override
  String get offDuty => 'Fuori servizio';

  @override
  String yearsCount(int count) {
    return '$count anni';
  }

  @override
  String get themeAndColors => 'Tema e colori';

  @override
  String get aiModelLabel => 'Modello IA';

  @override
  String get availableForWork => 'Disponibile per lavoro';

  @override
  String get visibleToClients => 'Visibile ai clienti';

  @override
  String get currentlyOffDuty => 'Attualmente fuori servizio';

  @override
  String get myReviews => 'Le mie recensioni';

  @override
  String get deleteAccount => 'Elimina account';

  @override
  String get deleteAccountConfirm => 'Sei sicuro? Non è reversibile.';

  @override
  String get couldNotDeleteAccount => 'Impossibile eliminare l\'account';

  @override
  String get profilePhotoUpdated => 'Foto profilo aggiornata';

  @override
  String get profileUpdated => 'Profilo aggiornato';

  @override
  String get nameLabel => 'Nome';

  @override
  String get profileImageUrl => 'URL immagine';

  @override
  String get yearsOfExperience => 'Anni di esperienza';

  @override
  String get certificationsLabel => 'Certificazioni';

  @override
  String get payoutAccountLabel => 'Conto di pagamento';

  @override
  String get onDutySubtitle => 'Sei visibile per nuove attività';

  @override
  String get loadingProfile => 'Caricamento profilo';

  @override
  String get availabilityLabel => 'Disponibilità';

  @override
  String get memberLabel => 'Membro';

  @override
  String get available => 'Disponibile';

  @override
  String get unavailable => 'Non disponibile';

  @override
  String get viewAllReviews => 'Vedi tutte le recensioni';

  @override
  String get settings => 'Impostazioni';

  @override
  String get appearance => 'Aspetto';

  @override
  String get language => 'Lingua';

  @override
  String get darkMode => 'Modalità Scura';

  @override
  String get lightMode => 'Modalità Chiara';

  @override
  String get systemMode => 'Sistema';

  @override
  String get accentColour => 'Colore di Accento';

  @override
  String get customColour => 'Personalizzato';

  @override
  String get preview => 'Anteprima';

  @override
  String get previewTitle => 'I tuoi colori sono fantastici!';

  @override
  String get previewSubtitle => 'Ecco come apparirà la tua app.';

  @override
  String get primary => 'Primario';

  @override
  String get secondary => 'Secondario';

  @override
  String get modeLabel => 'Modalità';

  @override
  String get pickAColour => 'Scegli un colore';

  @override
  String get systemDefault => 'Predefinito di sistema';

  @override
  String get darkModeSubtitle => 'Seleziona modalità sistema, chiara o scura';

  @override
  String get reviews => 'Recensioni';

  @override
  String get leaveReview => 'Lascia una Recensione';

  @override
  String get noReviews => 'Nessuna recensione ancora';

  @override
  String get rating => 'Valutazione';

  @override
  String get reviewComment => 'Commento';

  @override
  String get submitReview => 'Invia Recensione';

  @override
  String howWasWorker(String name) {
    return 'Com\'è stato $name?';
  }

  @override
  String get feedbackHelps => 'Il tuo feedback aiuta';

  @override
  String get thanksForReview => 'Grazie per la recensione';

  @override
  String get shareExperienceHint => 'Condividi la tua esperienza';

  @override
  String get ratingExcellent => 'Eccellente';

  @override
  String get ratingGreat => 'Ottimo';

  @override
  String get ratingGood => 'Buono';

  @override
  String get ratingFair => 'Sufficiente';

  @override
  String get ratingPoor => 'Scarso';

  @override
  String get tapToRate => 'Tocca per valutare';

  @override
  String workerReviewsTitle(String name) {
    return 'Recensioni di $name';
  }

  @override
  String get loadingReviews => 'Caricamento recensioni';

  @override
  String get noReviewsSubtitle => 'Nessuna recensione';

  @override
  String get allReviews => 'Tutte le recensioni';

  @override
  String reviewCount(int count) {
    return '$count recensioni';
  }

  @override
  String get anonymous => 'Anonimo';

  @override
  String get loading => 'Caricamento...';

  @override
  String get error => 'Qualcosa è andato storto';

  @override
  String get retry => 'Riprova';

  @override
  String get tryAgain => 'Riprova';

  @override
  String get cancel => 'Annulla';

  @override
  String get confirm => 'Conferma';

  @override
  String get delete => 'Elimina';

  @override
  String get save => 'Salva';

  @override
  String get edit => 'Modifica';

  @override
  String get close => 'Chiudi';

  @override
  String get search => 'Cerca';

  @override
  String get noResults => 'Nessun risultato trovato';

  @override
  String get pullToRefresh => 'Scorri per aggiornare';

  @override
  String get pullDownToRefresh => 'Scorri verso il basso per aggiornare';

  @override
  String get yes => 'Sì';

  @override
  String get required => 'Obbligatorio';

  @override
  String get stop => 'Stop';

  @override
  String get clear => 'Cancella';

  @override
  String get aiSetup => 'Configurazione IA';

  @override
  String get aiAnalysis => 'Analisi IA';

  @override
  String get unlockAi => 'Sblocca Analisi IA';

  @override
  String get aiTagline => 'Sul dispositivo  ·  Privato  ·  Gratuito';

  @override
  String get deviceCheck => 'Controllo Dispositivo';

  @override
  String get chooseModel => 'Scegli il Tuo Modello';

  @override
  String get chooseModelSubtitle =>
      'Scarica uno o più modelli. Puoi cambiare tra loro in seguito.';

  @override
  String get initializingAi => 'Inizializzazione runtime IA…';

  @override
  String get modelStorage => 'Archivio Modello';

  @override
  String get deviceIncompatible =>
      'L\'IA sul dispositivo richiede un dispositivo fisico con supporto GPU. Simulatori ed emulatori non sono compatibili.';

  @override
  String get enhanceDescription => 'Migliora';

  @override
  String get bidInsights => 'Analisi Offerta';

  @override
  String get whyThisJob => 'Perché questo?';

  @override
  String get suggestPrice => 'Suggerisci Prezzo';

  @override
  String get analyzing => 'Analisi in corso…';

  @override
  String get aiCapabilities => 'Funzionalità IA';

  @override
  String get onDeviceAi => 'IA sul dispositivo';

  @override
  String get aiTaglineSetup => 'Privato · Offline · Gratuito';

  @override
  String get aiSetupDescription =>
      'Ricevi suggerimenti intelligenti per attività e offerte';

  @override
  String get physicalDevice => 'Dispositivo fisico';

  @override
  String get emulatorDetected => 'Emulatore rilevato';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => 'Sufficiente';

  @override
  String get freeStorage => 'Spazio libero';

  @override
  String mbFree(int mb) {
    return '$mb MB liberi';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'Le funzioni IA richiedono un dispositivo fisico.';

  @override
  String get multilingual => 'Multilingue';

  @override
  String downloadingProgress(String percent) {
    return 'Download $percent%';
  }

  @override
  String get loadingModel => 'Caricamento modello';

  @override
  String get retryDownload => 'Riprova download';

  @override
  String get activeAndReady => 'Attivo e pronto';

  @override
  String get remove => 'Rimuovi';

  @override
  String get enableAi => 'Attiva IA';

  @override
  String get downloadAiModel => 'Scarica modello IA';

  @override
  String get deviceNotSupported => 'Dispositivo non supportato';

  @override
  String get downloadBackgroundNote =>
      'Download in background. Non chiudere l\'app.';

  @override
  String get removeAiModelTitle => 'Rimuovere modello IA?';

  @override
  String get removeAiModelConfirm => 'Rimuovere modello IA? Libera  MB.';

  @override
  String get analyzeWithAi => 'Analizza con l\'IA';

  @override
  String get aiAssistantAvailable => 'Assistente IA disponibile';

  @override
  String get aiSetupPrompt =>
      'Configura un modello IA sul dispositivo per suggerimenti intelligenti.';

  @override
  String get setup => 'Configura';

  @override
  String get adminDashboard => 'Pannello admin';

  @override
  String get failedToLoadDashboard => 'Errore nel caricamento dashboard';

  @override
  String get platformOverview => 'Panoramica piattaforma';

  @override
  String get liveStatistics => 'Statistiche in tempo reale';

  @override
  String get usersSection => 'Utenti';

  @override
  String get adminTabClients => 'Clienti';

  @override
  String get adminTabWorkers => 'Lavoratori';

  @override
  String get adminTabAccount => 'Account';

  @override
  String get jobsSection => 'Lavori';

  @override
  String get activeLabel => 'Attivo';

  @override
  String get todaySection => 'Oggi';

  @override
  String get createdLabel => 'Creato';

  @override
  String get completedLabel => 'Completato';

  @override
  String deleteUserTitle(String role) {
    return 'Eliminare $role?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return 'Eliminare $name?';
  }

  @override
  String get userDeletedSuccess => 'Utente eliminato';

  @override
  String get unableToLoadUsers => 'Errore nel caricamento utenti';

  @override
  String get noClientsFound => 'Nessun cliente trovato';

  @override
  String get noWorkersFound => 'Nessun lavoratore trovato';

  @override
  String get deleteUserTooltip => 'Elimina utente';

  @override
  String get adminSession => 'Sessione admin';

  @override
  String get adminManageUsersHint =>
      'Gestisci utenti dalle schede Clienti e Lavoratori.';

  @override
  String distanceKm(int radius) {
    return '$radius km';
  }

  @override
  String get youreOffline => 'Sei offline';

  @override
  String get offlineHint => 'Sei offline';

  @override
  String get yourSkills => 'Le tue competenze';

  @override
  String get skillsSubtitle => 'Aggiungi le tue competenze';

  @override
  String get addSkillLabel => 'Aggiungi competenza';

  @override
  String get typeToSearchSkills => 'Cerca competenze';

  @override
  String savedSkillsCount(int count) {
    return '$count competenze salvate';
  }

  @override
  String get noSkillsAdded => 'Nessuna competenza';

  @override
  String get unableToLoadTaskDetails => 'Errore nel caricamento dettagli';

  @override
  String get detailDistance => 'Distanza';

  @override
  String get chooseLocation => 'Scegli posizione';

  @override
  String get savedTab => 'Salvati';

  @override
  String get pinOnMapTab => 'Segna sulla mappa';

  @override
  String get locationDeniedPermanently => 'Permesso posizione negato';

  @override
  String get couldNotGetLocation => 'Impossibile ottenere la posizione';

  @override
  String get searchPlaces => 'Cerca luoghi';

  @override
  String get switchToSatellite => 'Satellite';

  @override
  String get switchToRoadMap => 'Mappa stradale';

  @override
  String get goToMyLocation => 'Vai alla mia posizione';

  @override
  String get confirmLocation => 'Conferma posizione';

  @override
  String get useWithoutSaving => 'Use without saving';

  @override
  String get saveAndUse => 'Save & use';

  @override
  String get useMyCurrentLocation => 'Use my current location';

  @override
  String get detectingLocation => 'Detecting location…';

  @override
  String get saveAddress => 'Salva indirizzo';

  @override
  String get saveAddressSubtitle => 'Salva per le attività future';

  @override
  String get labelField => 'Etichetta';

  @override
  String get labelHome => 'Casa';

  @override
  String get labelWork => 'Lavoro';

  @override
  String get labelOther => 'Altro';

  @override
  String get recipientName => 'Nome destinatario';

  @override
  String get recipientNameHint => 'Inserisci nome';

  @override
  String get recipientPhone => 'Telefono destinatario';

  @override
  String get recipientPhoneHint => 'Inserisci telefono';

  @override
  String get pickFromContacts => 'Scegli dai contatti';

  @override
  String get contactsAccessDenied => 'Accesso contatti negato';

  @override
  String get openSettings => 'Apri impostazioni';

  @override
  String get couldNotOpenContacts => 'Impossibile aprire i contatti';

  @override
  String get areaNeighbourhood => 'Zona / Quartiere';

  @override
  String get areaHint => 'Es. Trastevere, Brera';

  @override
  String get cityHint => 'Es. Roma';

  @override
  String get postalCodeRequired => 'CAP richiesto';

  @override
  String get postalCodeHint => 'Es. 00100';

  @override
  String get countryCodeRequired => 'Prefisso paese richiesto';

  @override
  String get countryCodeHint => '+39';

  @override
  String get requiredSkillsLabel => 'Competenze richieste';

  @override
  String get skillHintText => 'Scrivi competenze, separa con virgole';

  @override
  String get skillHelperEmpty => 'Nessuna competenza aggiunta';

  @override
  String skillsAddedCount(int count) {
    return '$count competenze aggiunte';
  }

  @override
  String get languagePicker => 'Seleziona Lingua';

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
  String get languageMarathi => 'मराठી';

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
  String get accentColorBlue => 'Blu';

  @override
  String get accentColorYellow => 'Giallo';

  @override
  String get accentColorGreen => 'Verde';

  @override
  String get accentColorPink => 'Rosa';

  @override
  String get accentColorRed => 'Rosso';

  @override
  String get accentColorPurple => 'Viola';

  @override
  String get accentColorOrange => 'Arancione';

  @override
  String get accentColorTeal => 'Turchese';

  @override
  String get accentColorCustom => 'Personalizzato';

  @override
  String get paymentStatusPending => 'Pagamento in attesa';

  @override
  String get paymentStatusLocked => 'Importo riservato';

  @override
  String get paymentStatusReleased => 'Pagamento rilasciato';

  @override
  String get paymentStatusOffline => 'Paga al completamento';

  @override
  String paymentStatusGeneric(String status) {
    return 'Stato pagamento: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'Aperto alle offerte';

  @override
  String get jobStatusOfferAccepted => 'Offerta accettata';

  @override
  String get jobStatusReadyToStart => 'Pronto per iniziare';

  @override
  String get jobStatusInProgress => 'In corso';

  @override
  String get jobStatusPendingPayment => 'Pagamento in attesa';

  @override
  String get jobStatusPaymentReleased => 'Pagamento rilasciato';

  @override
  String get jobStatusTaskCompleted => 'Attività completata';

  @override
  String get jobStatusCancelled => 'Annullato';

  @override
  String get detailBudgetLabel => 'Budget';

  @override
  String get detailLocationLabel => 'Posizione';

  @override
  String get detailSkillsLabel => 'Competenze';

  @override
  String get detailJobIdLabel => 'ID lavoro';

  @override
  String get tooltipCopy => 'Copia';

  @override
  String get tooltipDeleteAddress => 'Elimina indirizzo';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return 'Rimuovere \"$addressLabel\" dagli indirizzi salvati?';
  }

  @override
  String get errorNotAuthenticated => 'Non autenticato. Accedi di nuovo.';

  @override
  String get errorCouldNotOpenImagePicker =>
      'Impossibile aprire il selettore immagini.';

  @override
  String get errorCouldNotReadImage => 'Impossibile leggere l\'immagine.';

  @override
  String get errorImageTooLarge => 'L\'immagine deve essere inferiore a 5 MB.';

  @override
  String get errorUploadFailed => 'Caricamento fallito. Riprova.';

  @override
  String get errorNameRequired => 'Il nome è obbligatorio';

  @override
  String get errorRatingRequired => 'Seleziona una valutazione';

  @override
  String get errorNotLoggedIn => 'Accedi prima';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'Aggiornamento profilo admin non supportato';

  @override
  String get errorAdminDeletionDisabled =>
      'Eliminazione admin disabilitata nell\'app';

  @override
  String get errorConnectionTimeout => 'Timeout connessione. Riprova.';

  @override
  String get errorConnectionError => 'Connessione al server fallita.';

  @override
  String get errorRequestCancelled => 'Richiesta annullata.';

  @override
  String get errorBadRequest => 'Richiesta non valida. Controlla i dati.';

  @override
  String get errorSessionExpired => 'Sessione scaduta. Accedi di nuovo.';

  @override
  String get errorPermissionDenied => 'Permesso negato.';

  @override
  String get errorResourceNotFound => 'Risorsa non trovata.';

  @override
  String get errorConflict => 'Conflitto: azione non completabile.';

  @override
  String get errorFileTooLarge => 'File troppo grande. Max 5 MB.';

  @override
  String get errorValidationError => 'Errore di validazione. Controlla i dati.';

  @override
  String get errorTooManyRequests => 'Troppe richieste. Attendi.';

  @override
  String get errorServerError => 'Errore del server. Riprova più tardi.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'Richiesta fallita: stato $statusCode';
  }

  @override
  String get errorNetworkFailed => 'Errore di rete.';

  @override
  String get errorNetworkRequestFailed => 'Errore di rete';

  @override
  String get errorMalformedSkillResponse => 'Risposta competenze non valida';

  @override
  String get errorMalformedResponse => 'Risposta non valida';

  @override
  String get errorMalformedAdminResponse => 'Risposta admin non valida';

  @override
  String get errorAdminAccessRequired => 'Accesso admin richiesto';

  @override
  String get errorDescriptionUnavailable => 'Descrizione non disponibile';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'Solo $roleLabel possono farlo';
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
