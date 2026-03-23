// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'Iniciar Sesión';

  @override
  String get registerTitle => 'Crear Cuenta';

  @override
  String get emailLabel => 'Correo Electrónico';

  @override
  String get passwordLabel => 'Contraseña';

  @override
  String get confirmPasswordLabel => 'Confirmar Contraseña';

  @override
  String get forgotPassword => '¿Olvidaste tu contraseña?';

  @override
  String get loginButton => 'Iniciar Sesión';

  @override
  String get registerButton => 'Registrarse';

  @override
  String get orContinueWith => 'O continuar con';

  @override
  String get dontHaveAccount => '¿No tienes cuenta?';

  @override
  String get alreadyHaveAccount => '¿Ya tienes cuenta?';

  @override
  String get welcomeBack => 'Bienvenido';

  @override
  String get loginSubtitle => 'Inicie sesión en su cuenta AroundU';

  @override
  String get noAccountYet => '¿Sin cuenta?';

  @override
  String get createOne => 'Crear una';

  @override
  String get emailRequired => 'Correo requerido';

  @override
  String get enterValidEmail => 'Ingrese correo válido';

  @override
  String get passwordRequired => 'Contraseña requerida';

  @override
  String get minimumSixCharacters => 'Mínimo 6 caracteres';

  @override
  String get unableToLogin => 'Error al iniciar sesión';

  @override
  String fieldRequired(String field) {
    return '$field es obligatorio';
  }

  @override
  String get enterValidPhone => 'Ingrese teléfono válido';

  @override
  String get unableToRegister => 'Error al registrar';

  @override
  String get registrationSuccess => 'Registro exitoso';

  @override
  String get registerSubtitle => 'Regístrese como proveedor o trabajador';

  @override
  String get roleLabel => 'Rol';

  @override
  String get roleJobProvider => 'Proveedor de tareas';

  @override
  String get roleJobWorker => 'Trabajador';

  @override
  String get countryLabel => 'País';

  @override
  String get currencyLabel => 'Moneda';

  @override
  String get cityLabel => 'Ciudad';

  @override
  String get postalCodeLabel => 'Código postal';

  @override
  String get areaOptionalLabel => 'Área (opcional)';

  @override
  String get fullAddressOptionalLabel => 'Dirección completa (opcional)';

  @override
  String get alreadyRegistered => '¿Ya registrado?';

  @override
  String get logInLink => 'Iniciar sesión';

  @override
  String get onboardingTitle1 => 'Encuentra Tareas a Tu Alrededor';

  @override
  String get onboardingSubtitle1 =>
      'Descubre trabajos y servicios locales en tu vecindario.';

  @override
  String get onboardingTitle2 => 'Oferta y Consigue Trabajo';

  @override
  String get onboardingSubtitle2 =>
      'Haz ofertas competitivas y consigue tareas que coincidan con tus habilidades.';

  @override
  String get onboardingTitle3 => 'Pagos Seguros';

  @override
  String get onboardingSubtitle3 =>
      'Los pagos respaldados por fideicomiso garantizan transacciones justas y seguras.';

  @override
  String get getStarted => 'Comenzar';

  @override
  String get skip => 'Omitir';

  @override
  String get next => 'Siguiente';

  @override
  String get newHereCreateAccount => '¿Nuevo? Cree una cuenta';

  @override
  String get roleSelectionTitle => 'Elige Tu Rol';

  @override
  String get roleClient => 'Cliente';

  @override
  String get roleClientDesc => 'Necesito ayuda con tareas';

  @override
  String get roleWorker => 'Trabajador';

  @override
  String get roleWorkerDesc => 'Quiero ofrecer mis habilidades';

  @override
  String get continueButton => 'Continuar';

  @override
  String get roleSelectionSubtitle => '¿Cómo desea usar AroundU?';

  @override
  String signedInAs(String email) {
    return 'Conectado como $email';
  }

  @override
  String get roleProviderDesc => 'Publique tareas y encuentre trabajadores';

  @override
  String get roleWorkerDescAlt => 'Encuentre tareas y gane con sus habilidades';

  @override
  String get homeTab => 'Inicio';

  @override
  String get jobsTab => 'Trabajos';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Perfil';

  @override
  String get providerTabMyTasks => 'Mis tareas';

  @override
  String get providerTabPostTask => 'Publicar tarea';

  @override
  String get tasksNavLabel => 'Tareas';

  @override
  String get postNavLabel => 'Publicar';

  @override
  String get workerTabTaskFeed => 'Feed de tareas';

  @override
  String get feedNavLabel => 'Feed';

  @override
  String get myJobs => 'Mis Trabajos';

  @override
  String get workerFeed => 'Trabajos Disponibles';

  @override
  String get createJob => 'Crear Trabajo';

  @override
  String get postJob => 'Publicar Trabajo';

  @override
  String get editJob => 'Editar Trabajo';

  @override
  String get deleteJob => 'Eliminar Trabajo';

  @override
  String get deleteJobConfirm =>
      '¿Estás seguro de que quieres eliminar este trabajo?';

  @override
  String get jobTitle => 'Título';

  @override
  String get jobDescription => 'Descripción';

  @override
  String get jobCategory => 'Categoría';

  @override
  String get jobBudget => 'Presupuesto';

  @override
  String get jobLocation => 'Ubicación';

  @override
  String get jobDueDate => 'Fecha de Vencimiento';

  @override
  String get jobSkills => 'Habilidades Requeridas';

  @override
  String get jobUrgency => 'Urgencia';

  @override
  String get jobPaymentMode => 'Modo de Pago';

  @override
  String get urgencyNormal => 'Normal';

  @override
  String get urgencyMedium => 'Media';

  @override
  String get urgencyUrgent => 'Urgente';

  @override
  String get urgencyAsap => 'Lo antes posible';

  @override
  String get paymentOffline => 'Sin Conexión';

  @override
  String get paymentEscrow => 'Fideicomiso';

  @override
  String get paymentMethod => 'Método de pago';

  @override
  String get payInCash => 'Pagar en efectivo';

  @override
  String get secureEscrow => 'Fideicomiso seguro';

  @override
  String get filterAll => 'Todos';

  @override
  String get filterOpen => 'Abierto';

  @override
  String get filterActive => 'Activo';

  @override
  String get filterInProgress => 'En progreso';

  @override
  String get filterCompleted => 'Completado';

  @override
  String get filterCancelled => 'Cancelado';

  @override
  String get filterExpired => 'Expirado';

  @override
  String get filterNearby => 'Cercano';

  @override
  String get filterAllMine => 'Todos míos';

  @override
  String get filterBidPlaced => 'Oferta enviada';

  @override
  String get filterAccepted => 'Aceptado';

  @override
  String get noTasksPostedYet => 'Sin tareas publicadas';

  @override
  String get noOpenTasks => 'Sin tareas abiertas';

  @override
  String get noActiveTasks => 'Sin tareas activas';

  @override
  String get noTasksInProgress => 'Sin tareas en progreso';

  @override
  String get noCompletedTasks => 'Sin tareas completadas';

  @override
  String get noCancelledTasks => 'Sin tareas canceladas';

  @override
  String get noExpiredTasks => 'Sin tareas expiradas';

  @override
  String get unableToLoadTasks => 'Error al cargar tareas';

  @override
  String get noNearbyJobs => 'Sin trabajos cercanos';

  @override
  String get noJobsYetBid => 'Sin trabajos — envíe una oferta';

  @override
  String get noPendingBids => 'Sin ofertas pendientes';

  @override
  String get noAcceptedJobs => 'Sin trabajos aceptados';

  @override
  String get noJobsInProgress => 'Sin trabajos en progreso';

  @override
  String get noCompletedJobsYet => 'Sin trabajos completados';

  @override
  String get noCancelledJobs => 'Sin trabajos cancelados';

  @override
  String get noExpiredJobs => 'Sin trabajos expirados';

  @override
  String get pullDownToRefreshCheck => 'Deslice para buscar tareas';

  @override
  String get unableToLoadJobs => 'Error al cargar trabajos';

  @override
  String get postNewTask => 'Nueva tarea';

  @override
  String get postTaskSubtitle =>
      'Agregue detalles claros para ofertas precisas';

  @override
  String get taskTitleLabel => 'Título de tarea';

  @override
  String get savingLocation => 'Guardando ubicación';

  @override
  String get tapToSelectLocation => 'Toque para seleccionar ubicación';

  @override
  String get postTaskButton => 'Publicar tarea';

  @override
  String get addSkillWarning => 'Agregue al menos una habilidad requerida';

  @override
  String get enterValidBudget => 'Ingrese presupuesto válido';

  @override
  String get setJobLocationWarning => 'Configure la ubicación';

  @override
  String get jobPostedSuccess => 'Tarea publicada exitosamente';

  @override
  String get failedToPostJob => 'Error al publicar tarea';

  @override
  String get failedToSaveLocation => 'Error al guardar ubicación';

  @override
  String get unableToLoadJobWorkflow => 'Error al cargar flujo de trabajo';

  @override
  String get unknownError => 'Error desconocido';

  @override
  String get statusOpenForBids => 'Abierto para Ofertas';

  @override
  String get statusInProgress => 'En Progreso';

  @override
  String get statusCompleted => 'Completado';

  @override
  String get statusCancelled => 'Cancelado';

  @override
  String get statusPendingStart => 'Pendiente de Inicio';

  @override
  String get statusPendingRelease => 'Pendiente de Liberación';

  @override
  String get bids => 'Ofertas';

  @override
  String get noBids => 'Sin ofertas aún';

  @override
  String get placeBid => 'Hacer Oferta';

  @override
  String get bidAmount => 'Monto de la Oferta';

  @override
  String get bidNotes => 'Notas (opcional)';

  @override
  String get yourBid => 'Tu Oferta';

  @override
  String get acceptBid => 'Aceptar Oferta';

  @override
  String get rejectBid => 'Rechazar Oferta';

  @override
  String get bidAccepted => 'Oferta Aceptada';

  @override
  String get bidRejected => 'Oferta Rechazada';

  @override
  String get bidPending => 'Pendiente';

  @override
  String get offersSection => 'Ofertas';

  @override
  String get noOffersReceivedYet => 'Sin ofertas recibidas';

  @override
  String get offerAccepted => 'Oferta aceptada';

  @override
  String get offerRejected => 'Oferta rechazada';

  @override
  String get offerPending => 'Oferta pendiente';

  @override
  String workerNumber(int id) {
    return 'Trabajador #$id';
  }

  @override
  String get acceptThisOffer => 'Aceptar esta oferta';

  @override
  String get messageWorker => 'Mensaje al trabajador';

  @override
  String get offerAcceptedSnack => '¡Oferta aceptada!';

  @override
  String get yourOffer => 'Su oferta';

  @override
  String get bidStatusSelected => 'Seleccionado';

  @override
  String get bidStatusRejected => 'Rechazado';

  @override
  String get bidStatusPending => 'Pendiente';

  @override
  String get placeYourOffer => 'Haga su oferta';

  @override
  String get yourOfferAmount => 'Monto de su oferta';

  @override
  String get messageToClientOptional => 'Mensaje al cliente (opcional)';

  @override
  String get addPartnerOptional => 'Agregar socio (opcional)';

  @override
  String get partnerNameLabel => 'Nombre del socio';

  @override
  String get partnerFeeLabel => 'Tarifa de socio';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'Tarifa de socio: $amount';
  }

  @override
  String get submitOffer => 'Enviar oferta';

  @override
  String get enterValidOfferAmount => 'Ingrese monto de oferta válido';

  @override
  String get offerSubmittedSuccess => 'Oferta enviada';

  @override
  String get clientSelectedYourOffer => 'El cliente seleccionó tu oferta';

  @override
  String get handshakeHint =>
      'Ambas partes deben compartir el código para comenzar';

  @override
  String get handshakeAccepted => 'Apretón aceptado';

  @override
  String get handshakeDeclined => 'Apretón rechazado';

  @override
  String get acceptJob => 'Aceptar trabajo';

  @override
  String get decline => 'Rechazar';

  @override
  String get startCode => 'Código de Inicio';

  @override
  String get releaseCode => 'Código de Liberación';

  @override
  String get generateCodes => 'Generar Códigos';

  @override
  String get verifyCode => 'Verificar Código';

  @override
  String get enterCode => 'Ingresar Código';

  @override
  String get generateStartCode => 'Generar código de inicio';

  @override
  String get startCodeCopied => 'Código de inicio copiado';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return 'Reservar $amount en fideicomiso';
  }

  @override
  String get releaseCodeCopied => 'Código copiado';

  @override
  String get releaseCodeHint => 'Ingrese código de liberación';

  @override
  String get regenerateCode => 'Regenerar código';

  @override
  String get generateReleaseCode => 'Generar código de liberación';

  @override
  String get taskCodesGenerated => 'Códigos generados';

  @override
  String get newReleaseCodeGenerated => 'Nuevo código de liberación generado';

  @override
  String get readyToBegin => 'Listo para comenzar';

  @override
  String get startCodeHint => 'Ingrese código de inicio';

  @override
  String get verifyAndStartWork => 'Verificar e iniciar';

  @override
  String get startCodeVerified => 'Código de inicio verificado';

  @override
  String get enterStartCodeFirst => 'Ingrese código de inicio primero';

  @override
  String get workInProgress => 'Trabajo en progreso';

  @override
  String get releaseCodePrompt => 'Ingrese código para liberar pago';

  @override
  String get releaseCodeHelper => 'Dé este código al trabajador al completar';

  @override
  String get confirmWorkCompleted => 'Confirmar trabajo completado';

  @override
  String get workConfirmedPaymentReleased =>
      'Trabajo confirmado — pago liberado!';

  @override
  String get enterReleaseCodeWarning => 'Ingrese código de liberación';

  @override
  String get escrow => 'Fideicomiso';

  @override
  String get lockEscrow => 'Bloquear Fideicomiso';

  @override
  String get releaseEscrow => 'Liberar Pago';

  @override
  String get paymentLocked => 'Pago Bloqueado';

  @override
  String get paymentReleased => 'Pago Liberado';

  @override
  String get paymentSafelyReserved => 'Pago reservado de forma segura';

  @override
  String get cancelTask => 'Cancelar tarea';

  @override
  String get taskCancelled => 'Tarea cancelada';

  @override
  String get deleteTask => 'Eliminar tarea';

  @override
  String get deleteTaskTitle => '¿Eliminar tarea?';

  @override
  String get deleteTaskConfirm => '¿Eliminar esta tarea?';

  @override
  String get taskDeleted => 'Tarea eliminada';

  @override
  String get typeFirstMessage => 'Escriba el primer mensaje';

  @override
  String get send => 'Enviar';

  @override
  String get failedToSendMessage => 'Error al enviar mensaje';

  @override
  String get conversations => 'Mensajes';

  @override
  String get noMessagesYet => 'No hay mensajes aún';

  @override
  String get noMessagesSubtitle =>
      'Tus conversaciones aparecerán aquí cuando empieces a chatear sobre una tarea.';

  @override
  String get startConversation => '¡Inicia la conversación!';

  @override
  String get typeMessage => 'Escribe un mensaje...';

  @override
  String get typing => 'escribiendo...';

  @override
  String get newMessages => 'Nuevos Mensajes';

  @override
  String get now => 'ahora';

  @override
  String minutesAgo(int count) {
    return 'hace ${count}min';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trabajadores',
      one: '1 trabajador',
    );
    return '$_temp0';
  }

  @override
  String get chatToday => 'Hoy';

  @override
  String get chatYesterday => 'Ayer';

  @override
  String chatYouPrefix(String message) {
    return 'Tú: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'Re: $jobTitle';
  }

  @override
  String get noConversationsYet => 'Sin conversaciones';

  @override
  String get loadingConversations => 'Cargando conversaciones...';

  @override
  String get loadingMessages => 'Cargando mensajes...';

  @override
  String get profile => 'Perfil';

  @override
  String get editProfile => 'Editar Perfil';

  @override
  String get fullName => 'Nombre Completo';

  @override
  String get phone => 'Número de Teléfono';

  @override
  String get bio => 'Biografía';

  @override
  String get skills => 'Habilidades';

  @override
  String get saveChanges => 'Guardar Cambios';

  @override
  String get logout => 'Cerrar Sesión';

  @override
  String get logoutConfirm => '¿Estás seguro de que quieres cerrar sesión?';

  @override
  String get myProfile => 'Mi perfil';

  @override
  String get unknown => 'Desconocido';

  @override
  String get experienceLabel => 'Experiencia';

  @override
  String get statusLabel => 'Estado';

  @override
  String get notSet => 'No configurado';

  @override
  String get onDuty => 'En servicio';

  @override
  String get offDuty => 'Fuera de servicio';

  @override
  String yearsCount(int count) {
    return '$count años';
  }

  @override
  String get themeAndColors => 'Tema y colores';

  @override
  String get aiModelLabel => 'Modelo de IA';

  @override
  String get availableForWork => 'Disponible para trabajo';

  @override
  String get visibleToClients => 'Visible para clientes';

  @override
  String get currentlyOffDuty => 'Fuera de servicio';

  @override
  String get myReviews => 'Mis reseñas';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get deleteAccountConfirm => '¿Está seguro? No se puede deshacer.';

  @override
  String get couldNotDeleteAccount => 'No se pudo eliminar la cuenta';

  @override
  String get profilePhotoUpdated => 'Foto actualizada';

  @override
  String get profileUpdated => 'Perfil actualizado';

  @override
  String get nameLabel => 'Nombre';

  @override
  String get profileImageUrl => 'URL de imagen';

  @override
  String get yearsOfExperience => 'Años de experiencia';

  @override
  String get certificationsLabel => 'Certificaciones';

  @override
  String get payoutAccountLabel => 'Cuenta de pago';

  @override
  String get onDutySubtitle => 'Visible para nuevas tareas';

  @override
  String get loadingProfile => 'Cargando perfil';

  @override
  String get availabilityLabel => 'Disponibilidad';

  @override
  String get memberLabel => 'Miembro';

  @override
  String get available => 'Disponible';

  @override
  String get unavailable => 'No disponible';

  @override
  String get viewAllReviews => 'Ver todas las reseñas';

  @override
  String get settings => 'Configuración';

  @override
  String get appearance => 'Apariencia';

  @override
  String get language => 'Idioma';

  @override
  String get darkMode => 'Modo Oscuro';

  @override
  String get lightMode => 'Modo Claro';

  @override
  String get systemMode => 'Sistema';

  @override
  String get accentColour => 'Color de Acento';

  @override
  String get customColour => 'Personalizado';

  @override
  String get preview => 'Vista Previa';

  @override
  String get previewTitle => '¡Tus colores se ven geniales!';

  @override
  String get previewSubtitle => 'Así se verá tu app.';

  @override
  String get primary => 'Primario';

  @override
  String get secondary => 'Secundario';

  @override
  String get modeLabel => 'Modo';

  @override
  String get pickAColour => 'Elegir color';

  @override
  String get systemDefault => 'Predeterminado';

  @override
  String get darkModeSubtitle => 'Seleccione modo sistema, claro u oscuro';

  @override
  String get reviews => 'Reseñas';

  @override
  String get leaveReview => 'Dejar Reseña';

  @override
  String get noReviews => 'Sin reseñas aún';

  @override
  String get rating => 'Calificación';

  @override
  String get reviewComment => 'Comentario';

  @override
  String get submitReview => 'Enviar Reseña';

  @override
  String howWasWorker(String name) {
    return '¿Cómo fue $name?';
  }

  @override
  String get feedbackHelps => 'Tu opinión ayuda';

  @override
  String get thanksForReview => 'Gracias por su reseña';

  @override
  String get shareExperienceHint => 'Comparta su experiencia';

  @override
  String get ratingExcellent => 'Excelente';

  @override
  String get ratingGreat => 'Muy bueno';

  @override
  String get ratingGood => 'Bueno';

  @override
  String get ratingFair => 'Regular';

  @override
  String get ratingPoor => 'Malo';

  @override
  String get tapToRate => 'Toque para calificar';

  @override
  String workerReviewsTitle(String name) {
    return 'Reseñas de $name';
  }

  @override
  String get loadingReviews => 'Cargando reseñas';

  @override
  String get noReviewsSubtitle => 'Sin reseñas aún';

  @override
  String get allReviews => 'Todas las reseñas';

  @override
  String reviewCount(int count) {
    return '$count reseñas';
  }

  @override
  String get anonymous => 'Anónimo';

  @override
  String get loading => 'Cargando...';

  @override
  String get error => 'Algo salió mal';

  @override
  String get retry => 'Reintentar';

  @override
  String get tryAgain => 'Reintentar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get delete => 'Eliminar';

  @override
  String get save => 'Guardar';

  @override
  String get edit => 'Editar';

  @override
  String get close => 'Cerrar';

  @override
  String get search => 'Buscar';

  @override
  String get noResults => 'No se encontraron resultados';

  @override
  String get pullToRefresh => 'Desliza para actualizar';

  @override
  String get pullDownToRefresh => 'Deslice para actualizar';

  @override
  String get yes => 'Sí';

  @override
  String get required => 'Obligatorio';

  @override
  String get stop => 'Detener';

  @override
  String get clear => 'Borrar';

  @override
  String get aiSetup => 'Configuración de IA';

  @override
  String get aiAnalysis => 'Análisis de IA';

  @override
  String get unlockAi => 'Desbloquear Análisis de IA';

  @override
  String get aiTagline => 'En dispositivo  ·  Privado  ·  Gratis';

  @override
  String get deviceCheck => 'Verificación de Dispositivo';

  @override
  String get chooseModel => 'Elige Tu Modelo';

  @override
  String get chooseModelSubtitle =>
      'Descarga uno o más modelos. Puedes cambiar entre ellos después.';

  @override
  String get initializingAi => 'Inicializando tiempo de ejecución de IA…';

  @override
  String get modelStorage => 'Almacenamiento de Modelo';

  @override
  String get deviceIncompatible =>
      'La IA en dispositivo requiere un dispositivo físico con soporte GPU. Los simuladores y emuladores no son compatibles.';

  @override
  String get enhanceDescription => 'Mejorar';

  @override
  String get bidInsights => 'Análisis de Oferta';

  @override
  String get whyThisJob => '¿Por qué esto?';

  @override
  String get suggestPrice => 'Sugerir Precio';

  @override
  String get analyzing => 'Analizando…';

  @override
  String get aiCapabilities => 'Capacidades de IA';

  @override
  String get onDeviceAi => 'IA en dispositivo';

  @override
  String get aiTaglineSetup => 'Privado · Sin conexión · Gratis';

  @override
  String get aiSetupDescription =>
      'Obtenga sugerencias inteligentes para tareas y ofertas';

  @override
  String get physicalDevice => 'Dispositivo físico';

  @override
  String get emulatorDetected => 'Emulador detectado';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => 'Suficiente';

  @override
  String get freeStorage => 'Almacenamiento libre';

  @override
  String mbFree(int mb) {
    return '$mb MB libre';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'Las funciones de IA requieren un dispositivo físico.';

  @override
  String get multilingual => 'Multilingüe';

  @override
  String downloadingProgress(String percent) {
    return 'Descargando $percent%';
  }

  @override
  String get loadingModel => 'Cargando modelo';

  @override
  String get retryDownload => 'Reintentar descarga';

  @override
  String get activeAndReady => 'Activo y listo';

  @override
  String get remove => 'Eliminar';

  @override
  String get enableAi => 'Activar IA';

  @override
  String get downloadAiModel => 'Descargar modelo de IA';

  @override
  String get deviceNotSupported => 'Dispositivo no compatible';

  @override
  String get downloadBackgroundNote =>
      'Descarga en segundo plano. No cierre la app.';

  @override
  String get removeAiModelTitle => '¿Eliminar modelo de IA?';

  @override
  String get removeAiModelConfirm => '¿Eliminar modelo de IA? Libera  MB.';

  @override
  String get analyzeWithAi => 'Analizar con IA';

  @override
  String get aiAssistantAvailable => 'Asistente de IA disponible';

  @override
  String get aiSetupPrompt =>
      'Configure un modelo de IA en el dispositivo para sugerencias.';

  @override
  String get setup => 'Configurar';

  @override
  String get adminDashboard => 'Panel de administración';

  @override
  String get failedToLoadDashboard => 'Error al cargar panel';

  @override
  String get platformOverview => 'Vista general';

  @override
  String get liveStatistics => 'Estadísticas en vivo';

  @override
  String get usersSection => 'Usuarios';

  @override
  String get adminTabClients => 'Clientes';

  @override
  String get adminTabWorkers => 'Trabajadores';

  @override
  String get adminTabAccount => 'Cuenta';

  @override
  String get jobsSection => 'Trabajos';

  @override
  String get activeLabel => 'Activo';

  @override
  String get todaySection => 'Hoy';

  @override
  String get createdLabel => 'Creado';

  @override
  String get completedLabel => 'Completado';

  @override
  String deleteUserTitle(String role) {
    return '¿Eliminar a $role?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return '¿Eliminar a $name?';
  }

  @override
  String get userDeletedSuccess => 'Usuario eliminado';

  @override
  String get unableToLoadUsers => 'Error al cargar usuarios';

  @override
  String get noClientsFound => 'Sin clientes';

  @override
  String get noWorkersFound => 'Sin trabajadores';

  @override
  String get deleteUserTooltip => 'Eliminar usuario';

  @override
  String get adminSession => 'Sesión de admin';

  @override
  String get adminManageUsersHint =>
      'Gestione usuarios desde las pestañas Clientes y Trabajadores.';

  @override
  String distanceKm(int radius) {
    return '$radius km';
  }

  @override
  String get youreOffline => 'Sin conexión';

  @override
  String get offlineHint => 'Sin conexión';

  @override
  String get yourSkills => 'Sus habilidades';

  @override
  String get skillsSubtitle => 'Agregue sus habilidades y experiencia';

  @override
  String get addSkillLabel => 'Agregar habilidad';

  @override
  String get typeToSearchSkills => 'Buscar habilidades';

  @override
  String savedSkillsCount(int count) {
    return '$count habilidades guardadas';
  }

  @override
  String get noSkillsAdded => 'Sin habilidades';

  @override
  String get unableToLoadTaskDetails => 'Error al cargar detalles';

  @override
  String get detailDistance => 'Distancia';

  @override
  String get chooseLocation => 'Elegir ubicación';

  @override
  String get savedTab => 'Guardados';

  @override
  String get pinOnMapTab => 'Fijar en mapa';

  @override
  String get locationDeniedPermanently => 'Permiso de ubicación denegado';

  @override
  String get couldNotGetLocation => 'No se pudo obtener la ubicación';

  @override
  String get searchPlaces => 'Buscar lugares';

  @override
  String get switchToSatellite => 'Satélite';

  @override
  String get switchToRoadMap => 'Mapa vial';

  @override
  String get goToMyLocation => 'Ir a mi ubicación';

  @override
  String get confirmLocation => 'Confirmar ubicación';

  @override
  String get useWithoutSaving => 'Use without saving';

  @override
  String get saveAndUse => 'Save & use';

  @override
  String get useMyCurrentLocation => 'Use my current location';

  @override
  String get detectingLocation => 'Detecting location…';

  @override
  String get saveAddress => 'Guardar dirección';

  @override
  String get saveAddressSubtitle => 'Guardar para futuras tareas';

  @override
  String get labelField => 'Etiqueta';

  @override
  String get labelHome => 'Casa';

  @override
  String get labelWork => 'Trabajo';

  @override
  String get labelOther => 'Otro';

  @override
  String get recipientName => 'Nombre del destinatario';

  @override
  String get recipientNameHint => 'Ingrese nombre';

  @override
  String get recipientPhone => 'Teléfono del destinatario';

  @override
  String get recipientPhoneHint => 'Ingrese teléfono';

  @override
  String get pickFromContacts => 'Elegir de contactos';

  @override
  String get contactsAccessDenied => 'Acceso a contactos denegado';

  @override
  String get openSettings => 'Abrir configuración';

  @override
  String get couldNotOpenContacts => 'No se pudieron abrir los contactos';

  @override
  String get areaNeighbourhood => 'Área / Barrio';

  @override
  String get areaHint => 'Ej. Polanco, Chapinero';

  @override
  String get cityHint => 'Ej. Madrid';

  @override
  String get postalCodeRequired => 'Código postal requerido';

  @override
  String get postalCodeHint => 'Ej. 28001';

  @override
  String get countryCodeRequired => 'Código de país requerido';

  @override
  String get countryCodeHint => '+34';

  @override
  String get requiredSkillsLabel => 'Habilidades requeridas';

  @override
  String get skillHintText => 'Escriba habilidades, separe con comas';

  @override
  String get skillHelperEmpty => 'Sin habilidades aún';

  @override
  String skillsAddedCount(int count) {
    return '$count habilidades agregadas';
  }

  @override
  String get languagePicker => 'Seleccionar Idioma';

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
  String get accentColorBlue => 'Azul';

  @override
  String get accentColorYellow => 'Amarillo';

  @override
  String get accentColorGreen => 'Verde';

  @override
  String get accentColorPink => 'Rosa';

  @override
  String get accentColorRed => 'Rojo';

  @override
  String get accentColorPurple => 'Púrpura';

  @override
  String get accentColorOrange => 'Naranja';

  @override
  String get accentColorTeal => 'Verde azulado';

  @override
  String get accentColorCustom => 'Personalizado';

  @override
  String get paymentStatusPending => 'Pago pendiente';

  @override
  String get paymentStatusLocked => 'Monto reservado';

  @override
  String get paymentStatusReleased => 'Pago liberado';

  @override
  String get paymentStatusOffline => 'Pague al completar';

  @override
  String paymentStatusGeneric(String status) {
    return 'Estado de pago: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'Abierto para ofertas';

  @override
  String get jobStatusOfferAccepted => 'Oferta aceptada';

  @override
  String get jobStatusReadyToStart => 'Listo para comenzar';

  @override
  String get jobStatusInProgress => 'En progreso';

  @override
  String get jobStatusPendingPayment => 'Pago pendiente';

  @override
  String get jobStatusPaymentReleased => 'Pago liberado';

  @override
  String get jobStatusTaskCompleted => 'Tarea completada';

  @override
  String get jobStatusCancelled => 'Cancelado';

  @override
  String get detailBudgetLabel => 'Presupuesto';

  @override
  String get detailLocationLabel => 'Ubicación';

  @override
  String get detailSkillsLabel => 'Habilidades';

  @override
  String get detailJobIdLabel => 'ID del trabajo';

  @override
  String get tooltipCopy => 'Copiar';

  @override
  String get tooltipDeleteAddress => 'Eliminar dirección';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return '¿Eliminar \"$addressLabel\" de direcciones guardadas?';
  }

  @override
  String get errorNotAuthenticated => 'No autenticado. Inicie sesión.';

  @override
  String get errorCouldNotOpenImagePicker =>
      'No se pudo abrir el selector de imágenes.';

  @override
  String get errorCouldNotReadImage => 'No se pudo leer la imagen.';

  @override
  String get errorImageTooLarge => 'Imagen debe ser menor a 5 MB.';

  @override
  String get errorUploadFailed => 'Carga fallida. Reintente.';

  @override
  String get errorNameRequired => 'Nombre obligatorio';

  @override
  String get errorRatingRequired => 'Seleccione una calificación';

  @override
  String get errorNotLoggedIn => 'Inicie sesión primero';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'Actualización de perfil admin no soportada';

  @override
  String get errorAdminDeletionDisabled =>
      'Eliminación de admin deshabilitada en la app';

  @override
  String get errorConnectionTimeout => 'Tiempo de conexión agotado.';

  @override
  String get errorConnectionError => 'No se pudo conectar al servidor.';

  @override
  String get errorRequestCancelled => 'Solicitud cancelada.';

  @override
  String get errorBadRequest => 'Solicitud inválida. Revise su entrada.';

  @override
  String get errorSessionExpired => 'Sesión expirada. Inicie sesión.';

  @override
  String get errorPermissionDenied => 'Sin permiso para esta acción.';

  @override
  String get errorResourceNotFound => 'Recurso no encontrado.';

  @override
  String get errorConflict => 'Conflicto: acción no puede completarse.';

  @override
  String get errorFileTooLarge => 'Archivo demasiado grande. Máx 5 MB.';

  @override
  String get errorValidationError => 'Error de validación. Revise su entrada.';

  @override
  String get errorTooManyRequests => 'Demasiadas solicitudes. Espere.';

  @override
  String get errorServerError => 'Error del servidor. Intente más tarde.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'Solicitud fallida: estado $statusCode';
  }

  @override
  String get errorNetworkFailed => 'Error de red.';

  @override
  String get errorNetworkRequestFailed => 'Error de red';

  @override
  String get errorMalformedSkillResponse =>
      'Respuesta de habilidades mal formada';

  @override
  String get errorMalformedResponse => 'Respuesta mal formada';

  @override
  String get errorMalformedAdminResponse => 'Respuesta admin mal formada';

  @override
  String get errorAdminAccessRequired => 'Acceso de admin requerido';

  @override
  String get errorDescriptionUnavailable => 'Descripción no disponible';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'Solo $roleLabel pueden hacerlo';
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
