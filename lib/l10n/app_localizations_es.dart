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
  String get homeTab => 'Inicio';

  @override
  String get jobsTab => 'Trabajos';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Perfil';

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
  String get urgencyUrgent => 'Urgente';

  @override
  String get paymentOffline => 'Sin Conexión';

  @override
  String get paymentEscrow => 'Fideicomiso';

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
  String get loading => 'Cargando...';

  @override
  String get loadingConversations => 'Cargando conversaciones...';

  @override
  String get loadingMessages => 'Cargando mensajes...';

  @override
  String get error => 'Algo salió mal';

  @override
  String get retry => 'Reintentar';

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
}
