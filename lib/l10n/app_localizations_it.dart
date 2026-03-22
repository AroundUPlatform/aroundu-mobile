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
  String get homeTab => 'Home';

  @override
  String get jobsTab => 'Lavori';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Profilo';

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
  String get urgencyUrgent => 'Urgente';

  @override
  String get paymentOffline => 'Offline';

  @override
  String get paymentEscrow => 'Garanzia';

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
  String get loading => 'Caricamento...';

  @override
  String get loadingConversations => 'Caricamento conversazioni...';

  @override
  String get loadingMessages => 'Caricamento messaggi...';

  @override
  String get error => 'Qualcosa è andato storto';

  @override
  String get retry => 'Riprova';

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
