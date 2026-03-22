// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'Connexion';

  @override
  String get registerTitle => 'Créer un Compte';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get passwordLabel => 'Mot de passe';

  @override
  String get confirmPasswordLabel => 'Confirmer le mot de passe';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get loginButton => 'Se Connecter';

  @override
  String get registerButton => 'S\'inscrire';

  @override
  String get orContinueWith => 'Ou continuer avec';

  @override
  String get dontHaveAccount => 'Pas de compte ?';

  @override
  String get alreadyHaveAccount => 'Déjà un compte ?';

  @override
  String get onboardingTitle1 => 'Trouvez des Tâches Autour de Vous';

  @override
  String get onboardingSubtitle1 =>
      'Découvrez des emplois et services locaux dans votre quartier.';

  @override
  String get onboardingTitle2 => 'Enchérissez et Soyez Embauché';

  @override
  String get onboardingSubtitle2 =>
      'Faites des offres compétitives et soyez sélectionné pour des tâches correspondant à vos compétences.';

  @override
  String get onboardingTitle3 => 'Paiements Sécurisés';

  @override
  String get onboardingSubtitle3 =>
      'Les paiements séquestrés garantissent des transactions justes et sûres.';

  @override
  String get getStarted => 'Commencer';

  @override
  String get skip => 'Passer';

  @override
  String get next => 'Suivant';

  @override
  String get roleSelectionTitle => 'Choisissez Votre Rôle';

  @override
  String get roleClient => 'Client';

  @override
  String get roleClientDesc => 'J\'ai besoin d\'aide pour des tâches';

  @override
  String get roleWorker => 'Travailleur';

  @override
  String get roleWorkerDesc => 'Je veux offrir mes compétences';

  @override
  String get continueButton => 'Continuer';

  @override
  String get homeTab => 'Accueil';

  @override
  String get jobsTab => 'Emplois';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Profil';

  @override
  String get myJobs => 'Mes Emplois';

  @override
  String get workerFeed => 'Emplois Disponibles';

  @override
  String get createJob => 'Créer un Emploi';

  @override
  String get postJob => 'Publier un Emploi';

  @override
  String get editJob => 'Modifier l\'Emploi';

  @override
  String get deleteJob => 'Supprimer l\'Emploi';

  @override
  String get deleteJobConfirm =>
      'Êtes-vous sûr de vouloir supprimer cet emploi ?';

  @override
  String get jobTitle => 'Titre';

  @override
  String get jobDescription => 'Description';

  @override
  String get jobCategory => 'Catégorie';

  @override
  String get jobBudget => 'Budget';

  @override
  String get jobLocation => 'Emplacement';

  @override
  String get jobDueDate => 'Date d\'Échéance';

  @override
  String get jobSkills => 'Compétences Requises';

  @override
  String get jobUrgency => 'Urgence';

  @override
  String get jobPaymentMode => 'Mode de Paiement';

  @override
  String get urgencyNormal => 'Normal';

  @override
  String get urgencyUrgent => 'Urgent';

  @override
  String get paymentOffline => 'Hors Ligne';

  @override
  String get paymentEscrow => 'Séquestre';

  @override
  String get statusOpenForBids => 'Ouvert aux Offres';

  @override
  String get statusInProgress => 'En Cours';

  @override
  String get statusCompleted => 'Terminé';

  @override
  String get statusCancelled => 'Annulé';

  @override
  String get statusPendingStart => 'En Attente de Début';

  @override
  String get statusPendingRelease => 'En Attente de Libération';

  @override
  String get bids => 'Offres';

  @override
  String get noBids => 'Pas encore d\'offres';

  @override
  String get placeBid => 'Faire une Offre';

  @override
  String get bidAmount => 'Montant de l\'Offre';

  @override
  String get bidNotes => 'Notes (optionnel)';

  @override
  String get yourBid => 'Votre Offre';

  @override
  String get acceptBid => 'Accepter l\'Offre';

  @override
  String get rejectBid => 'Rejeter l\'Offre';

  @override
  String get bidAccepted => 'Offre Acceptée';

  @override
  String get bidRejected => 'Offre Rejetée';

  @override
  String get bidPending => 'En Attente';

  @override
  String get startCode => 'Code de Démarrage';

  @override
  String get releaseCode => 'Code de Libération';

  @override
  String get generateCodes => 'Générer des Codes';

  @override
  String get verifyCode => 'Vérifier le Code';

  @override
  String get enterCode => 'Entrer le Code';

  @override
  String get escrow => 'Séquestre';

  @override
  String get lockEscrow => 'Verrouiller le Séquestre';

  @override
  String get releaseEscrow => 'Libérer le Paiement';

  @override
  String get paymentLocked => 'Paiement Verrouillé';

  @override
  String get paymentReleased => 'Paiement Libéré';

  @override
  String get conversations => 'Messages';

  @override
  String get noMessagesYet => 'Pas encore de messages';

  @override
  String get noMessagesSubtitle =>
      'Vos conversations apparaîtront ici lorsque vous commencerez à discuter d\'une tâche.';

  @override
  String get startConversation => 'Démarrez la conversation !';

  @override
  String get typeMessage => 'Écrire un message...';

  @override
  String get typing => 'écrit...';

  @override
  String get newMessages => 'Nouveaux Messages';

  @override
  String get now => 'maintenant';

  @override
  String minutesAgo(int count) {
    return 'il y a ${count}min';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count travailleurs',
      one: '1 travailleur',
    );
    return '$_temp0';
  }

  @override
  String get profile => 'Profil';

  @override
  String get editProfile => 'Modifier le Profil';

  @override
  String get fullName => 'Nom Complet';

  @override
  String get phone => 'Numéro de Téléphone';

  @override
  String get bio => 'Bio';

  @override
  String get skills => 'Compétences';

  @override
  String get saveChanges => 'Enregistrer';

  @override
  String get logout => 'Déconnexion';

  @override
  String get logoutConfirm => 'Êtes-vous sûr de vouloir vous déconnecter ?';

  @override
  String get settings => 'Paramètres';

  @override
  String get appearance => 'Apparence';

  @override
  String get language => 'Langue';

  @override
  String get darkMode => 'Mode Sombre';

  @override
  String get lightMode => 'Mode Clair';

  @override
  String get systemMode => 'Système';

  @override
  String get accentColour => 'Couleur d\'Accent';

  @override
  String get customColour => 'Personnalisé';

  @override
  String get preview => 'Aperçu';

  @override
  String get previewTitle => 'Vos couleurs sont superbes !';

  @override
  String get previewSubtitle => 'Voici à quoi ressemblera votre app.';

  @override
  String get primary => 'Primaire';

  @override
  String get secondary => 'Secondaire';

  @override
  String get reviews => 'Avis';

  @override
  String get leaveReview => 'Laisser un Avis';

  @override
  String get noReviews => 'Pas encore d\'avis';

  @override
  String get rating => 'Note';

  @override
  String get reviewComment => 'Commentaire';

  @override
  String get submitReview => 'Soumettre l\'Avis';

  @override
  String get loading => 'Chargement...';

  @override
  String get loadingConversations => 'Chargement des conversations...';

  @override
  String get loadingMessages => 'Chargement des messages...';

  @override
  String get error => 'Une erreur s\'est produite';

  @override
  String get retry => 'Réessayer';

  @override
  String get cancel => 'Annuler';

  @override
  String get confirm => 'Confirmer';

  @override
  String get delete => 'Supprimer';

  @override
  String get save => 'Enregistrer';

  @override
  String get edit => 'Modifier';

  @override
  String get close => 'Fermer';

  @override
  String get search => 'Rechercher';

  @override
  String get noResults => 'Aucun résultat trouvé';

  @override
  String get pullToRefresh => 'Tirer pour actualiser';

  @override
  String get aiSetup => 'Configuration IA';

  @override
  String get aiAnalysis => 'Analyse IA';

  @override
  String get unlockAi => 'Débloquer l\'Analyse IA';

  @override
  String get aiTagline => 'Sur l\'appareil  ·  Privé  ·  Gratuit';

  @override
  String get deviceCheck => 'Vérification de l\'Appareil';

  @override
  String get chooseModel => 'Choisissez Votre Modèle';

  @override
  String get chooseModelSubtitle =>
      'Téléchargez un ou plusieurs modèles. Vous pourrez changer entre eux plus tard.';

  @override
  String get initializingAi => 'Initialisation du runtime IA…';

  @override
  String get modelStorage => 'Stockage du Modèle';

  @override
  String get deviceIncompatible =>
      'L\'IA sur l\'appareil nécessite un appareil physique avec support GPU. Les simulateurs et émulateurs ne sont pas compatibles.';

  @override
  String get enhanceDescription => 'Améliorer';

  @override
  String get bidInsights => 'Analyse d\'Offre';

  @override
  String get whyThisJob => 'Pourquoi ceci ?';

  @override
  String get suggestPrice => 'Suggérer un Prix';

  @override
  String get analyzing => 'Analyse en cours…';

  @override
  String get languagePicker => 'Sélectionner la Langue';

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
