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
  String get welcomeBack => 'Bon retour';

  @override
  String get loginSubtitle => 'Connectez-vous à votre compte AroundU';

  @override
  String get noAccountYet => 'Pas encore de compte ?';

  @override
  String get createOne => 'Créer un';

  @override
  String get emailRequired => 'E-mail requis';

  @override
  String get enterValidEmail => 'Entrez un e-mail valide';

  @override
  String get passwordRequired => 'Mot de passe requis';

  @override
  String get minimumSixCharacters => 'Minimum 6 caractères';

  @override
  String get unableToLogin => 'Connexion impossible';

  @override
  String fieldRequired(String field) {
    return '$field est requis';
  }

  @override
  String get enterValidPhone => 'Entrez un téléphone valide';

  @override
  String get unableToRegister => 'Inscription impossible';

  @override
  String get registrationSuccess => 'Inscription réussie';

  @override
  String get registerSubtitle =>
      'Inscrivez-vous en tant que fournisseur ou travailleur';

  @override
  String get roleLabel => 'Rôle';

  @override
  String get roleJobProvider => 'Fournisseur de tâches';

  @override
  String get roleJobWorker => 'Travailleur';

  @override
  String get countryLabel => 'Pays';

  @override
  String get currencyLabel => 'Devise';

  @override
  String get cityLabel => 'Ville';

  @override
  String get postalCodeLabel => 'Code postal';

  @override
  String get areaOptionalLabel => 'Zone (optionnel)';

  @override
  String get fullAddressOptionalLabel => 'Adresse complète (optionnel)';

  @override
  String get alreadyRegistered => 'Déjà inscrit ?';

  @override
  String get logInLink => 'Se connecter';

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
  String get newHereCreateAccount => 'Nouveau ? Créez un compte';

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
  String get roleSelectionSubtitle =>
      'Comment souhaitez-vous utiliser AroundU ?';

  @override
  String signedInAs(String email) {
    return 'Connecté en tant que $email';
  }

  @override
  String get roleProviderDesc =>
      'Publiez des tâches et trouvez des travailleurs qualifiés';

  @override
  String get roleWorkerDescAlt =>
      'Trouvez des tâches et gagnez avec vos compétences';

  @override
  String get homeTab => 'Accueil';

  @override
  String get jobsTab => 'Emplois';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Profil';

  @override
  String get providerTabMyTasks => 'Mes tâches';

  @override
  String get providerTabPostTask => 'Publier une tâche';

  @override
  String get tasksNavLabel => 'Tâches';

  @override
  String get postNavLabel => 'Publier';

  @override
  String get workerTabTaskFeed => 'Fil des tâches';

  @override
  String get feedNavLabel => 'Fil';

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
  String get urgencyMedium => 'Moyen';

  @override
  String get urgencyUrgent => 'Urgent';

  @override
  String get urgencyAsap => 'Dès que possible';

  @override
  String get paymentOffline => 'Hors Ligne';

  @override
  String get paymentEscrow => 'Séquestre';

  @override
  String get paymentMethod => 'Mode de paiement';

  @override
  String get payInCash => 'Payer en espèces';

  @override
  String get secureEscrow => 'Séquestre sécurisé';

  @override
  String get filterAll => 'Tout';

  @override
  String get filterOpen => 'Ouvert';

  @override
  String get filterActive => 'Actif';

  @override
  String get filterInProgress => 'En cours';

  @override
  String get filterCompleted => 'Terminé';

  @override
  String get filterCancelled => 'Annulé';

  @override
  String get filterExpired => 'Expiré';

  @override
  String get filterNearby => 'À proximité';

  @override
  String get filterAllMine => 'Tous les miens';

  @override
  String get filterBidPlaced => 'Offre soumise';

  @override
  String get filterAccepted => 'Accepté';

  @override
  String get noTasksPostedYet => 'Aucune tâche publiée';

  @override
  String get noOpenTasks => 'Aucune tâche ouverte';

  @override
  String get noActiveTasks => 'Aucune tâche active';

  @override
  String get noTasksInProgress => 'Aucune tâche en cours';

  @override
  String get noCompletedTasks => 'Aucune tâche terminée';

  @override
  String get noCancelledTasks => 'Aucune tâche annulée';

  @override
  String get noExpiredTasks => 'Aucune tâche expirée';

  @override
  String get unableToLoadTasks => 'Échec du chargement des tâches';

  @override
  String get noNearbyJobs => 'Aucun travail à proximité';

  @override
  String get noJobsYetBid => 'Aucun travail — faites une offre';

  @override
  String get noPendingBids => 'Aucune offre en attente';

  @override
  String get noAcceptedJobs => 'Aucun travail accepté';

  @override
  String get noJobsInProgress => 'Aucun travail en cours';

  @override
  String get noCompletedJobsYet => 'Aucun travail terminé';

  @override
  String get noCancelledJobs => 'Aucun travail annulé';

  @override
  String get noExpiredJobs => 'Aucun travail expiré';

  @override
  String get pullDownToRefreshCheck => 'Tirez pour voir les nouvelles tâches';

  @override
  String get unableToLoadJobs => 'Échec du chargement des travaux';

  @override
  String get postNewTask => 'Nouvelle tâche';

  @override
  String get postTaskSubtitle =>
      'Ajoutez des détails clairs pour des offres précises';

  @override
  String get taskTitleLabel => 'Titre de la tâche';

  @override
  String get savingLocation => 'Enregistrement de la position';

  @override
  String get tapToSelectLocation => 'Appuyez pour sélectionner';

  @override
  String get postTaskButton => 'Publier la tâche';

  @override
  String get addSkillWarning => 'Ajoutez au moins une compétence requise';

  @override
  String get enterValidBudget => 'Entrez un budget valide';

  @override
  String get setJobLocationWarning => 'Définissez l\'emplacement de la tâche';

  @override
  String get jobPostedSuccess => 'Tâche publiée avec succès';

  @override
  String get failedToPostJob => 'Échec de la publication';

  @override
  String get failedToSaveLocation => 'Échec de l\'enregistrement';

  @override
  String get unableToLoadJobWorkflow => 'Échec du chargement du flux';

  @override
  String get unknownError => 'Erreur inconnue';

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
  String get offersSection => 'Offres';

  @override
  String get noOffersReceivedYet => 'Aucune offre reçue';

  @override
  String get offerAccepted => 'Offre acceptée';

  @override
  String get offerRejected => 'Offre refusée';

  @override
  String get offerPending => 'Offre en attente';

  @override
  String workerNumber(int id) {
    return 'Travailleur #$id';
  }

  @override
  String get acceptThisOffer => 'Accepter cette offre';

  @override
  String get messageWorker => 'Message au travailleur';

  @override
  String get offerAcceptedSnack => 'Offre acceptée !';

  @override
  String get yourOffer => 'Votre offre';

  @override
  String get bidStatusSelected => 'Sélectionné';

  @override
  String get bidStatusRejected => 'Rejeté';

  @override
  String get bidStatusPending => 'En attente';

  @override
  String get placeYourOffer => 'Faites votre offre';

  @override
  String get yourOfferAmount => 'Montant de votre offre';

  @override
  String get messageToClientOptional => 'Message au client (optionnel)';

  @override
  String get addPartnerOptional => 'Ajouter un partenaire (optionnel)';

  @override
  String get partnerNameLabel => 'Nom du partenaire';

  @override
  String get partnerFeeLabel => 'Frais partenaire';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'Frais partenaire : $amount';
  }

  @override
  String get submitOffer => 'Soumettre l\'offre';

  @override
  String get enterValidOfferAmount => 'Entrez un montant d\'offre valide';

  @override
  String get offerSubmittedSuccess => 'Offre soumise avec succès';

  @override
  String get clientSelectedYourOffer => 'Le client a sélectionné votre offre';

  @override
  String get handshakeHint =>
      'Les deux parties doivent partager le code pour commencer';

  @override
  String get handshakeAccepted => 'Poignée de main acceptée';

  @override
  String get handshakeDeclined => 'Poignée de main refusée';

  @override
  String get acceptJob => 'Accepter le travail';

  @override
  String get decline => 'Refuser';

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
  String get generateStartCode => 'Générer le code de démarrage';

  @override
  String get startCodeCopied => 'Code de démarrage copié';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return 'Réserver $amount en séquestre';
  }

  @override
  String get releaseCodeCopied => 'Code de libération copié';

  @override
  String get releaseCodeHint => 'Entrez le code de libération';

  @override
  String get regenerateCode => 'Régénérer le code';

  @override
  String get generateReleaseCode => 'Générer le code de libération';

  @override
  String get taskCodesGenerated => 'Codes de tâche générés';

  @override
  String get newReleaseCodeGenerated => 'Nouveau code de libération généré';

  @override
  String get readyToBegin => 'Prêt à commencer';

  @override
  String get startCodeHint => 'Entrez le code de démarrage';

  @override
  String get verifyAndStartWork => 'Vérifier et commencer';

  @override
  String get startCodeVerified => 'Code de démarrage vérifié';

  @override
  String get enterStartCodeFirst => 'Entrez d\'abord le code de démarrage';

  @override
  String get workInProgress => 'Travail en cours';

  @override
  String get releaseCodePrompt => 'Entrez le code pour libérer le paiement';

  @override
  String get releaseCodeHelper =>
      'Donnez ce code au travailleur quand le travail est terminé';

  @override
  String get confirmWorkCompleted => 'Confirmer le travail terminé';

  @override
  String get workConfirmedPaymentReleased =>
      'Travail confirmé — paiement libéré !';

  @override
  String get enterReleaseCodeWarning => 'Entrez le code de libération';

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
  String get paymentSafelyReserved => 'Paiement réservé en sécurité';

  @override
  String get cancelTask => 'Annuler la tâche';

  @override
  String get taskCancelled => 'Tâche annulée';

  @override
  String get deleteTask => 'Supprimer la tâche';

  @override
  String get deleteTaskTitle => 'Supprimer la tâche ?';

  @override
  String get deleteTaskConfirm => 'Supprimer cette tâche ?';

  @override
  String get taskDeleted => 'Tâche supprimée';

  @override
  String get typeFirstMessage => 'Tapez le premier message';

  @override
  String get send => 'Envoyer';

  @override
  String get failedToSendMessage => 'Échec de l\'envoi du message';

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
  String get chatToday => 'Aujourd\'hui';

  @override
  String get chatYesterday => 'Hier';

  @override
  String chatYouPrefix(String message) {
    return 'Vous: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'Re: $jobTitle';
  }

  @override
  String get noConversationsYet => 'Aucune conversation';

  @override
  String get loadingConversations => 'Chargement des conversations...';

  @override
  String get loadingMessages => 'Chargement des messages...';

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
  String get myProfile => 'Mon profil';

  @override
  String get unknown => 'Inconnu';

  @override
  String get experienceLabel => 'Expérience';

  @override
  String get statusLabel => 'Statut';

  @override
  String get notSet => 'Non défini';

  @override
  String get onDuty => 'En service';

  @override
  String get offDuty => 'Hors service';

  @override
  String yearsCount(int count) {
    return '$count ans';
  }

  @override
  String get themeAndColors => 'Thème et couleurs';

  @override
  String get aiModelLabel => 'Modèle IA';

  @override
  String get availableForWork => 'Disponible pour travailler';

  @override
  String get visibleToClients => 'Visible par les clients';

  @override
  String get currentlyOffDuty => 'Actuellement hors service';

  @override
  String get myReviews => 'Mes avis';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get deleteAccountConfirm =>
      'Êtes-vous sûr ? Cette action est irréversible.';

  @override
  String get couldNotDeleteAccount => 'Impossible de supprimer le compte';

  @override
  String get profilePhotoUpdated => 'Photo de profil mise à jour';

  @override
  String get profileUpdated => 'Profil mis à jour';

  @override
  String get nameLabel => 'Nom';

  @override
  String get profileImageUrl => 'URL de l\'image';

  @override
  String get yearsOfExperience => 'Années d\'expérience';

  @override
  String get certificationsLabel => 'Certifications';

  @override
  String get payoutAccountLabel => 'Compte de versement';

  @override
  String get onDutySubtitle => 'Vous êtes visible pour de nouvelles tâches';

  @override
  String get loadingProfile => 'Chargement du profil';

  @override
  String get availabilityLabel => 'Disponibilité';

  @override
  String get memberLabel => 'Membre';

  @override
  String get available => 'Disponible';

  @override
  String get unavailable => 'Indisponible';

  @override
  String get viewAllReviews => 'Voir tous les avis';

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
  String get modeLabel => 'Mode';

  @override
  String get pickAColour => 'Choisir une couleur';

  @override
  String get systemDefault => 'Par défaut du système';

  @override
  String get darkModeSubtitle =>
      'Sélectionnez le mode système, clair ou sombre';

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
  String howWasWorker(String name) {
    return 'Comment était $name ?';
  }

  @override
  String get feedbackHelps => 'Votre avis compte';

  @override
  String get thanksForReview => 'Merci pour votre avis';

  @override
  String get shareExperienceHint => 'Partagez votre expérience';

  @override
  String get ratingExcellent => 'Excellent';

  @override
  String get ratingGreat => 'Très bien';

  @override
  String get ratingGood => 'Bon';

  @override
  String get ratingFair => 'Passable';

  @override
  String get ratingPoor => 'Mauvais';

  @override
  String get tapToRate => 'Appuyez pour noter';

  @override
  String workerReviewsTitle(String name) {
    return 'Avis de $name';
  }

  @override
  String get loadingReviews => 'Chargement des avis';

  @override
  String get noReviewsSubtitle => 'Aucun avis';

  @override
  String get allReviews => 'Tous les avis';

  @override
  String reviewCount(int count) {
    return '$count avis';
  }

  @override
  String get anonymous => 'Anonyme';

  @override
  String get loading => 'Chargement...';

  @override
  String get error => 'Une erreur s\'est produite';

  @override
  String get retry => 'Réessayer';

  @override
  String get tryAgain => 'Réessayer';

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
  String get pullDownToRefresh => 'Tirez vers le bas pour actualiser';

  @override
  String get yes => 'Oui';

  @override
  String get required => 'Requis';

  @override
  String get stop => 'Arrêter';

  @override
  String get clear => 'Effacer';

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
  String get aiCapabilities => 'Capacités IA';

  @override
  String get onDeviceAi => 'IA sur l\'appareil';

  @override
  String get aiTaglineSetup => 'Privé · Hors-ligne · Gratuit';

  @override
  String get aiSetupDescription =>
      'Obtenez des suggestions intelligentes pour les tâches et offres';

  @override
  String get physicalDevice => 'Appareil physique';

  @override
  String get emulatorDetected => 'Émulateur détecté';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => 'Suffisant';

  @override
  String get freeStorage => 'Stockage libre';

  @override
  String mbFree(int mb) {
    return '$mb Mo libre';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'Les fonctions IA nécessitent un appareil physique.';

  @override
  String get multilingual => 'Multilingue';

  @override
  String downloadingProgress(String percent) {
    return 'Téléchargement $percent%';
  }

  @override
  String get loadingModel => 'Chargement du modèle';

  @override
  String get retryDownload => 'Réessayer le téléchargement';

  @override
  String get activeAndReady => 'Actif et prêt';

  @override
  String get remove => 'Supprimer';

  @override
  String get enableAi => 'Activer l\'IA';

  @override
  String get downloadAiModel => 'Télécharger le modèle IA';

  @override
  String get deviceNotSupported => 'Appareil non pris en charge';

  @override
  String get downloadBackgroundNote =>
      'Téléchargement en arrière-plan. Ne fermez pas l\'app.';

  @override
  String get removeAiModelTitle => 'Supprimer le modèle IA ?';

  @override
  String get removeAiModelConfirm => 'Supprimer le modèle IA ? Libère  Mo.';

  @override
  String get analyzeWithAi => 'Analyser avec l\'IA';

  @override
  String get aiAssistantAvailable => 'Assistant IA disponible';

  @override
  String get aiSetupPrompt =>
      'Configurez un modèle IA sur l\'appareil pour des suggestions intelligentes.';

  @override
  String get setup => 'Configurer';

  @override
  String get adminDashboard => 'Tableau de bord admin';

  @override
  String get failedToLoadDashboard => 'Échec du chargement du tableau de bord';

  @override
  String get platformOverview => 'Vue d\'ensemble';

  @override
  String get liveStatistics => 'Statistiques en direct';

  @override
  String get usersSection => 'Utilisateurs';

  @override
  String get adminTabClients => 'Clients';

  @override
  String get adminTabWorkers => 'Travailleurs';

  @override
  String get adminTabAccount => 'Compte';

  @override
  String get jobsSection => 'Travaux';

  @override
  String get activeLabel => 'Actif';

  @override
  String get todaySection => 'Aujourd\'hui';

  @override
  String get createdLabel => 'Créé';

  @override
  String get completedLabel => 'Terminé';

  @override
  String deleteUserTitle(String role) {
    return 'Supprimer $role ?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return 'Supprimer $name ?';
  }

  @override
  String get userDeletedSuccess => 'Utilisateur supprimé';

  @override
  String get unableToLoadUsers => 'Échec du chargement des utilisateurs';

  @override
  String get noClientsFound => 'Aucun client trouvé';

  @override
  String get noWorkersFound => 'Aucun travailleur trouvé';

  @override
  String get deleteUserTooltip => 'Supprimer l\'utilisateur';

  @override
  String get adminSession => 'Session admin';

  @override
  String get adminManageUsersHint =>
      'Gérez les utilisateurs depuis les onglets Clients et Travailleurs.';

  @override
  String distanceKm(int radius) {
    return '$radius km';
  }

  @override
  String get youreOffline => 'Vous êtes hors ligne';

  @override
  String get offlineHint => 'Vous êtes hors ligne';

  @override
  String get yourSkills => 'Vos compétences';

  @override
  String get skillsSubtitle => 'Ajoutez vos compétences et expertise';

  @override
  String get addSkillLabel => 'Ajouter une compétence';

  @override
  String get typeToSearchSkills => 'Rechercher des compétences';

  @override
  String savedSkillsCount(int count) {
    return '$count compétences enregistrées';
  }

  @override
  String get noSkillsAdded => 'Aucune compétence ajoutée';

  @override
  String get unableToLoadTaskDetails => 'Échec du chargement des détails';

  @override
  String get detailDistance => 'Distance';

  @override
  String get chooseLocation => 'Choisir un emplacement';

  @override
  String get savedTab => 'Enregistrés';

  @override
  String get pinOnMapTab => 'Épingler sur la carte';

  @override
  String get locationDeniedPermanently => 'Permission de localisation refusée';

  @override
  String get couldNotGetLocation => 'Impossible d\'obtenir la position';

  @override
  String get searchPlaces => 'Rechercher des lieux';

  @override
  String get switchToSatellite => 'Vue satellite';

  @override
  String get switchToRoadMap => 'Vue routière';

  @override
  String get goToMyLocation => 'Aller à ma position';

  @override
  String get confirmLocation => 'Confirmer l\'emplacement';

  @override
  String get saveAddress => 'Enregistrer l\'adresse';

  @override
  String get saveAddressSubtitle => 'Enregistrer pour les futures tâches';

  @override
  String get labelField => 'Libellé';

  @override
  String get labelHome => 'Domicile';

  @override
  String get labelWork => 'Travail';

  @override
  String get labelOther => 'Autre';

  @override
  String get recipientName => 'Nom du destinataire';

  @override
  String get recipientNameHint => 'Entrez le nom';

  @override
  String get recipientPhone => 'Téléphone du destinataire';

  @override
  String get recipientPhoneHint => 'Entrez le téléphone';

  @override
  String get pickFromContacts => 'Choisir dans les contacts';

  @override
  String get contactsAccessDenied => 'Accès aux contacts refusé';

  @override
  String get openSettings => 'Ouvrir les paramètres';

  @override
  String get couldNotOpenContacts => 'Impossible d\'ouvrir les contacts';

  @override
  String get areaNeighbourhood => 'Zone / Quartier';

  @override
  String get areaHint => 'Ex. Marais, Belleville';

  @override
  String get cityHint => 'Ex. Paris';

  @override
  String get postalCodeRequired => 'Code postal requis';

  @override
  String get postalCodeHint => 'Ex. 75001';

  @override
  String get countryCodeRequired => 'Indicatif pays requis';

  @override
  String get countryCodeHint => '+33';

  @override
  String get requiredSkillsLabel => 'Compétences requises';

  @override
  String get skillHintText => 'Tapez des compétences, séparez par des virgules';

  @override
  String get skillHelperEmpty => 'Aucune compétence ajoutée';

  @override
  String skillsAddedCount(int count) {
    return '$count compétences ajoutées';
  }

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

  @override
  String get accentColorBlue => 'Bleu';

  @override
  String get accentColorYellow => 'Jaune';

  @override
  String get accentColorGreen => 'Vert';

  @override
  String get accentColorPink => 'Rose';

  @override
  String get accentColorRed => 'Rouge';

  @override
  String get accentColorPurple => 'Violet';

  @override
  String get accentColorOrange => 'Orange';

  @override
  String get accentColorTeal => 'Sarcelle';

  @override
  String get accentColorCustom => 'Personnalisé';

  @override
  String get paymentStatusPending => 'Paiement en attente';

  @override
  String get paymentStatusLocked => 'Montant réservé en sécurité';

  @override
  String get paymentStatusReleased => 'Paiement libéré';

  @override
  String get paymentStatusOffline => 'Payez directement à l\'achèvement';

  @override
  String paymentStatusGeneric(String status) {
    return 'Statut du paiement : $status';
  }

  @override
  String get jobStatusOpenForOffers => 'Ouvert aux offres';

  @override
  String get jobStatusOfferAccepted => 'Offre acceptée';

  @override
  String get jobStatusReadyToStart => 'Prêt à commencer';

  @override
  String get jobStatusInProgress => 'En cours';

  @override
  String get jobStatusPendingPayment => 'Paiement en attente';

  @override
  String get jobStatusPaymentReleased => 'Paiement libéré';

  @override
  String get jobStatusTaskCompleted => 'Tâche terminée';

  @override
  String get jobStatusCancelled => 'Annulé';

  @override
  String get detailBudgetLabel => 'Budget';

  @override
  String get detailLocationLabel => 'Emplacement';

  @override
  String get detailSkillsLabel => 'Compétences';

  @override
  String get detailJobIdLabel => 'ID du travail';

  @override
  String get tooltipCopy => 'Copier';

  @override
  String get tooltipDeleteAddress => 'Supprimer l\'adresse';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return 'Supprimer \"$addressLabel\" des adresses enregistrées ?';
  }

  @override
  String get errorNotAuthenticated => 'Non authentifié. Reconnectez-vous.';

  @override
  String get errorCouldNotOpenImagePicker =>
      'Impossible d\'ouvrir le sélecteur d\'images.';

  @override
  String get errorCouldNotReadImage =>
      'Impossible de lire l\'image sélectionnée.';

  @override
  String get errorImageTooLarge => 'L\'image doit faire moins de 5 Mo.';

  @override
  String get errorUploadFailed => 'Échec du téléversement. Réessayez.';

  @override
  String get errorNameRequired => 'Le nom est requis';

  @override
  String get errorRatingRequired => 'Sélectionnez une note';

  @override
  String get errorNotLoggedIn => 'Connectez-vous d\'abord';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'Mise à jour du profil admin non prise en charge';

  @override
  String get errorAdminDeletionDisabled =>
      'Suppression admin désactivée dans l\'app';

  @override
  String get errorConnectionTimeout => 'Délai de connexion dépassé. Réessayez.';

  @override
  String get errorConnectionError =>
      'Connexion au serveur impossible. Vérifiez votre réseau.';

  @override
  String get errorRequestCancelled => 'Requête annulée.';

  @override
  String get errorBadRequest => 'Requête invalide. Vérifiez votre saisie.';

  @override
  String get errorSessionExpired => 'Session expirée. Reconnectez-vous.';

  @override
  String get errorPermissionDenied => 'Permission refusée.';

  @override
  String get errorResourceNotFound => 'Ressource introuvable.';

  @override
  String get errorConflict => 'Conflit : l\'action ne peut pas être effectuée.';

  @override
  String get errorFileTooLarge => 'Fichier trop volumineux. Max 5 Mo.';

  @override
  String get errorValidationError =>
      'Erreur de validation. Vérifiez votre saisie.';

  @override
  String get errorTooManyRequests => 'Trop de requêtes. Patientez.';

  @override
  String get errorServerError => 'Erreur serveur. Réessayez plus tard.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'Requête échouée : statut $statusCode';
  }

  @override
  String get errorNetworkFailed => 'Erreur réseau.';

  @override
  String get errorNetworkRequestFailed => 'Erreur réseau';

  @override
  String get errorMalformedSkillResponse => 'Réponse compétences mal formée';

  @override
  String get errorMalformedResponse => 'Réponse mal formée';

  @override
  String get errorMalformedAdminResponse => 'Réponse admin mal formée';

  @override
  String get errorAdminAccessRequired => 'Accès admin requis';

  @override
  String get errorDescriptionUnavailable => 'Description indisponible';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'Seuls les $roleLabel peuvent effectuer cette action';
  }

  @override
  String get useWithoutSaving => 'Utiliser sans enregistrer';

  @override
  String get saveAndUse => 'Enregistrer et utiliser';

  @override
  String get useMyCurrentLocation => 'Utiliser ma position actuelle';

  @override
  String get detectingLocation => 'Détection de la position…';
}
