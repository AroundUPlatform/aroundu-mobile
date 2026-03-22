// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'Entrar';

  @override
  String get registerTitle => 'Criar Conta';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get passwordLabel => 'Senha';

  @override
  String get confirmPasswordLabel => 'Confirmar Senha';

  @override
  String get forgotPassword => 'Esqueceu a senha?';

  @override
  String get loginButton => 'Entrar';

  @override
  String get registerButton => 'Cadastrar';

  @override
  String get orContinueWith => 'Ou continuar com';

  @override
  String get dontHaveAccount => 'Não tem uma conta?';

  @override
  String get alreadyHaveAccount => 'Já tem uma conta?';

  @override
  String get onboardingTitle1 => 'Encontre Tarefas ao Seu Redor';

  @override
  String get onboardingSubtitle1 =>
      'Descubra empregos e serviços locais no seu bairro.';

  @override
  String get onboardingTitle2 => 'Dê Lances e Seja Contratado';

  @override
  String get onboardingSubtitle2 =>
      'Faça lances competitivos e seja selecionado para tarefas que combinam com suas habilidades.';

  @override
  String get onboardingTitle3 => 'Pagamentos Seguros';

  @override
  String get onboardingSubtitle3 =>
      'Pagamentos com garantia asseguram transações justas e seguras.';

  @override
  String get getStarted => 'Começar';

  @override
  String get skip => 'Pular';

  @override
  String get next => 'Próximo';

  @override
  String get roleSelectionTitle => 'Escolha Seu Papel';

  @override
  String get roleClient => 'Cliente';

  @override
  String get roleClientDesc => 'Preciso de ajuda com tarefas';

  @override
  String get roleWorker => 'Trabalhador';

  @override
  String get roleWorkerDesc => 'Quero oferecer minhas habilidades';

  @override
  String get continueButton => 'Continuar';

  @override
  String get homeTab => 'Início';

  @override
  String get jobsTab => 'Trabalhos';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Perfil';

  @override
  String get myJobs => 'Meus Trabalhos';

  @override
  String get workerFeed => 'Trabalhos Disponíveis';

  @override
  String get createJob => 'Criar Trabalho';

  @override
  String get postJob => 'Publicar Trabalho';

  @override
  String get editJob => 'Editar Trabalho';

  @override
  String get deleteJob => 'Excluir Trabalho';

  @override
  String get deleteJobConfirm =>
      'Tem certeza de que deseja excluir este trabalho?';

  @override
  String get jobTitle => 'Título';

  @override
  String get jobDescription => 'Descrição';

  @override
  String get jobCategory => 'Categoria';

  @override
  String get jobBudget => 'Orçamento';

  @override
  String get jobLocation => 'Localização';

  @override
  String get jobDueDate => 'Data de Vencimento';

  @override
  String get jobSkills => 'Habilidades Necessárias';

  @override
  String get jobUrgency => 'Urgência';

  @override
  String get jobPaymentMode => 'Modo de Pagamento';

  @override
  String get urgencyNormal => 'Normal';

  @override
  String get urgencyUrgent => 'Urgente';

  @override
  String get paymentOffline => 'Offline';

  @override
  String get paymentEscrow => 'Garantia';

  @override
  String get statusOpenForBids => 'Aberto para Lances';

  @override
  String get statusInProgress => 'Em Andamento';

  @override
  String get statusCompleted => 'Concluído';

  @override
  String get statusCancelled => 'Cancelado';

  @override
  String get statusPendingStart => 'Aguardando Início';

  @override
  String get statusPendingRelease => 'Aguardando Liberação';

  @override
  String get bids => 'Lances';

  @override
  String get noBids => 'Nenhum lance ainda';

  @override
  String get placeBid => 'Dar Lance';

  @override
  String get bidAmount => 'Valor do Lance';

  @override
  String get bidNotes => 'Notas (opcional)';

  @override
  String get yourBid => 'Seu Lance';

  @override
  String get acceptBid => 'Aceitar Lance';

  @override
  String get rejectBid => 'Rejeitar Lance';

  @override
  String get bidAccepted => 'Lance Aceito';

  @override
  String get bidRejected => 'Lance Rejeitado';

  @override
  String get bidPending => 'Pendente';

  @override
  String get startCode => 'Código de Início';

  @override
  String get releaseCode => 'Código de Liberação';

  @override
  String get generateCodes => 'Gerar Códigos';

  @override
  String get verifyCode => 'Verificar Código';

  @override
  String get enterCode => 'Inserir Código';

  @override
  String get escrow => 'Garantia';

  @override
  String get lockEscrow => 'Bloquear Garantia';

  @override
  String get releaseEscrow => 'Liberar Pagamento';

  @override
  String get paymentLocked => 'Pagamento Bloqueado';

  @override
  String get paymentReleased => 'Pagamento Liberado';

  @override
  String get conversations => 'Mensagens';

  @override
  String get noMessagesYet => 'Nenhuma mensagem ainda';

  @override
  String get noMessagesSubtitle =>
      'Suas conversas aparecerão aqui quando você começar a conversar sobre uma tarefa.';

  @override
  String get startConversation => 'Inicie a conversa!';

  @override
  String get typeMessage => 'Digite uma mensagem...';

  @override
  String get typing => 'digitando...';

  @override
  String get newMessages => 'Novas Mensagens';

  @override
  String get now => 'agora';

  @override
  String minutesAgo(int count) {
    return 'há ${count}min';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trabalhadores',
      one: '1 trabalhador',
    );
    return '$_temp0';
  }

  @override
  String get profile => 'Perfil';

  @override
  String get editProfile => 'Editar Perfil';

  @override
  String get fullName => 'Nome Completo';

  @override
  String get phone => 'Número de Telefone';

  @override
  String get bio => 'Bio';

  @override
  String get skills => 'Habilidades';

  @override
  String get saveChanges => 'Salvar Alterações';

  @override
  String get logout => 'Sair';

  @override
  String get logoutConfirm => 'Tem certeza de que deseja sair?';

  @override
  String get settings => 'Configurações';

  @override
  String get appearance => 'Aparência';

  @override
  String get language => 'Idioma';

  @override
  String get darkMode => 'Modo Escuro';

  @override
  String get lightMode => 'Modo Claro';

  @override
  String get systemMode => 'Sistema';

  @override
  String get accentColour => 'Cor de Destaque';

  @override
  String get customColour => 'Personalizado';

  @override
  String get preview => 'Pré-visualização';

  @override
  String get previewTitle => 'Suas cores estão ótimas!';

  @override
  String get previewSubtitle => 'Assim ficará seu app.';

  @override
  String get primary => 'Primário';

  @override
  String get secondary => 'Secundário';

  @override
  String get reviews => 'Avaliações';

  @override
  String get leaveReview => 'Deixar Avaliação';

  @override
  String get noReviews => 'Nenhuma avaliação ainda';

  @override
  String get rating => 'Classificação';

  @override
  String get reviewComment => 'Comentário';

  @override
  String get submitReview => 'Enviar Avaliação';

  @override
  String get loading => 'Carregando...';

  @override
  String get loadingConversations => 'Carregando conversas...';

  @override
  String get loadingMessages => 'Carregando mensagens...';

  @override
  String get error => 'Algo deu errado';

  @override
  String get retry => 'Tentar Novamente';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get delete => 'Excluir';

  @override
  String get save => 'Salvar';

  @override
  String get edit => 'Editar';

  @override
  String get close => 'Fechar';

  @override
  String get search => 'Pesquisar';

  @override
  String get noResults => 'Nenhum resultado encontrado';

  @override
  String get pullToRefresh => 'Puxe para atualizar';

  @override
  String get aiSetup => 'Configuração de IA';

  @override
  String get aiAnalysis => 'Análise de IA';

  @override
  String get unlockAi => 'Desbloquear Análise de IA';

  @override
  String get aiTagline => 'No dispositivo  ·  Privado  ·  Grátis';

  @override
  String get deviceCheck => 'Verificação do Dispositivo';

  @override
  String get chooseModel => 'Escolha Seu Modelo';

  @override
  String get chooseModelSubtitle =>
      'Baixe um ou mais modelos. Você pode trocar entre eles depois.';

  @override
  String get initializingAi => 'Inicializando runtime de IA…';

  @override
  String get modelStorage => 'Armazenamento de Modelo';

  @override
  String get deviceIncompatible =>
      'A IA no dispositivo requer um dispositivo físico com suporte a GPU. Simuladores e emuladores não são compatíveis.';

  @override
  String get enhanceDescription => 'Melhorar';

  @override
  String get bidInsights => 'Análise de Lance';

  @override
  String get whyThisJob => 'Por que isto?';

  @override
  String get suggestPrice => 'Sugerir Preço';

  @override
  String get analyzing => 'Analisando…';

  @override
  String get languagePicker => 'Selecionar Idioma';

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
