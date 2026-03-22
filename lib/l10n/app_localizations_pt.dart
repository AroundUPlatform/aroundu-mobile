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
  String get welcomeBack => 'Bem-vindo de volta';

  @override
  String get loginSubtitle => 'Entre na sua conta AroundU';

  @override
  String get noAccountYet => 'Sem conta?';

  @override
  String get createOne => 'Criar uma';

  @override
  String get emailRequired => 'E-mail obrigatório';

  @override
  String get enterValidEmail => 'Insira um e-mail válido';

  @override
  String get passwordRequired => 'Senha obrigatória';

  @override
  String get minimumSixCharacters => 'Mínimo 6 caracteres';

  @override
  String get unableToLogin => 'Falha no login';

  @override
  String fieldRequired(String field) {
    return '$field é obrigatório';
  }

  @override
  String get enterValidPhone => 'Insira um telefone válido';

  @override
  String get unableToRegister => 'Falha no registro';

  @override
  String get registrationSuccess => 'Registro bem-sucedido';

  @override
  String get registerSubtitle => 'Registre-se como fornecedor ou trabalhador';

  @override
  String get roleLabel => 'Função';

  @override
  String get roleJobProvider => 'Fornecedor de tarefas';

  @override
  String get roleJobWorker => 'Trabalhador';

  @override
  String get countryLabel => 'País';

  @override
  String get currencyLabel => 'Moeda';

  @override
  String get cityLabel => 'Cidade';

  @override
  String get postalCodeLabel => 'CEP';

  @override
  String get areaOptionalLabel => 'Área (opcional)';

  @override
  String get fullAddressOptionalLabel => 'Endereço completo (opcional)';

  @override
  String get alreadyRegistered => 'Já registrado?';

  @override
  String get logInLink => 'Entrar';

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
  String get newHereCreateAccount => 'Novo? Crie uma conta';

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
  String get roleSelectionSubtitle => 'Como deseja usar o AroundU?';

  @override
  String signedInAs(String email) {
    return 'Conectado como $email';
  }

  @override
  String get roleProviderDesc => 'Publique tarefas e encontre trabalhadores';

  @override
  String get roleWorkerDescAlt =>
      'Encontre tarefas e ganhe com suas habilidades';

  @override
  String get homeTab => 'Início';

  @override
  String get jobsTab => 'Trabalhos';

  @override
  String get chatTab => 'Chat';

  @override
  String get profileTab => 'Perfil';

  @override
  String get providerTabMyTasks => 'Minhas tarefas';

  @override
  String get providerTabPostTask => 'Publicar tarefa';

  @override
  String get tasksNavLabel => 'Tarefas';

  @override
  String get postNavLabel => 'Publicar';

  @override
  String get workerTabTaskFeed => 'Feed de tarefas';

  @override
  String get feedNavLabel => 'Feed';

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
  String get urgencyMedium => 'Médio';

  @override
  String get urgencyUrgent => 'Urgente';

  @override
  String get urgencyAsap => 'O mais rápido possível';

  @override
  String get paymentOffline => 'Offline';

  @override
  String get paymentEscrow => 'Garantia';

  @override
  String get paymentMethod => 'Forma de pagamento';

  @override
  String get payInCash => 'Pagar em dinheiro';

  @override
  String get secureEscrow => 'Custódia segura';

  @override
  String get filterAll => 'Todos';

  @override
  String get filterOpen => 'Aberto';

  @override
  String get filterActive => 'Ativo';

  @override
  String get filterInProgress => 'Em andamento';

  @override
  String get filterCompleted => 'Concluído';

  @override
  String get filterCancelled => 'Cancelado';

  @override
  String get filterExpired => 'Expirado';

  @override
  String get filterNearby => 'Próximo';

  @override
  String get filterAllMine => 'Todos os meus';

  @override
  String get filterBidPlaced => 'Oferta enviada';

  @override
  String get filterAccepted => 'Aceito';

  @override
  String get noTasksPostedYet => 'Sem tarefas publicadas';

  @override
  String get noOpenTasks => 'Sem tarefas abertas';

  @override
  String get noActiveTasks => 'Sem tarefas ativas';

  @override
  String get noTasksInProgress => 'Sem tarefas em andamento';

  @override
  String get noCompletedTasks => 'Sem tarefas concluídas';

  @override
  String get noCancelledTasks => 'Sem tarefas canceladas';

  @override
  String get noExpiredTasks => 'Sem tarefas expiradas';

  @override
  String get unableToLoadTasks => 'Erro ao carregar tarefas';

  @override
  String get noNearbyJobs => 'Sem trabalhos próximos';

  @override
  String get noJobsYetBid => 'Sem trabalhos — faça uma oferta';

  @override
  String get noPendingBids => 'Sem ofertas pendentes';

  @override
  String get noAcceptedJobs => 'Sem trabalhos aceitos';

  @override
  String get noJobsInProgress => 'Sem trabalhos em andamento';

  @override
  String get noCompletedJobsYet => 'Sem trabalhos concluídos';

  @override
  String get noCancelledJobs => 'Sem trabalhos cancelados';

  @override
  String get noExpiredJobs => 'Sem trabalhos expirados';

  @override
  String get pullDownToRefreshCheck => 'Puxe para buscar tarefas';

  @override
  String get unableToLoadJobs => 'Erro ao carregar trabalhos';

  @override
  String get postNewTask => 'Nova tarefa';

  @override
  String get postTaskSubtitle =>
      'Adicione detalhes claros para ofertas precisas';

  @override
  String get taskTitleLabel => 'Título da tarefa';

  @override
  String get savingLocation => 'Salvando local';

  @override
  String get tapToSelectLocation => 'Toque para selecionar local';

  @override
  String get postTaskButton => 'Publicar tarefa';

  @override
  String get addSkillWarning => 'Adicione pelo menos uma habilidade necessária';

  @override
  String get enterValidBudget => 'Insira um orçamento válido';

  @override
  String get setJobLocationWarning => 'Defina o local da tarefa';

  @override
  String get jobPostedSuccess => 'Tarefa publicada com sucesso';

  @override
  String get failedToPostJob => 'Erro ao publicar tarefa';

  @override
  String get failedToSaveLocation => 'Erro ao salvar local';

  @override
  String get unableToLoadJobWorkflow => 'Erro ao carregar fluxo';

  @override
  String get unknownError => 'Erro desconhecido';

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
  String get offersSection => 'Ofertas';

  @override
  String get noOffersReceivedYet => 'Sem ofertas recebidas';

  @override
  String get offerAccepted => 'Oferta aceita';

  @override
  String get offerRejected => 'Oferta rejeitada';

  @override
  String get offerPending => 'Oferta pendente';

  @override
  String workerNumber(int id) {
    return 'Trabalhador #$id';
  }

  @override
  String get acceptThisOffer => 'Aceitar esta oferta';

  @override
  String get messageWorker => 'Mensagem ao trabalhador';

  @override
  String get offerAcceptedSnack => 'Oferta aceita!';

  @override
  String get yourOffer => 'Sua oferta';

  @override
  String get bidStatusSelected => 'Selecionado';

  @override
  String get bidStatusRejected => 'Rejeitado';

  @override
  String get bidStatusPending => 'Pendente';

  @override
  String get placeYourOffer => 'Faça sua oferta';

  @override
  String get yourOfferAmount => 'Valor da sua oferta';

  @override
  String get messageToClientOptional => 'Mensagem ao cliente (opcional)';

  @override
  String get addPartnerOptional => 'Adicionar parceiro (opcional)';

  @override
  String get partnerNameLabel => 'Nome do parceiro';

  @override
  String get partnerFeeLabel => 'Taxa de parceiro';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'Taxa de parceiro: $amount';
  }

  @override
  String get submitOffer => 'Enviar oferta';

  @override
  String get enterValidOfferAmount => 'Insira um valor válido';

  @override
  String get offerSubmittedSuccess => 'Oferta enviada';

  @override
  String get clientSelectedYourOffer => 'O cliente selecionou sua oferta';

  @override
  String get handshakeHint => 'Ambos devem compartilhar o código para começar';

  @override
  String get handshakeAccepted => 'Aperto aceito';

  @override
  String get handshakeDeclined => 'Aperto recusado';

  @override
  String get acceptJob => 'Aceitar trabalho';

  @override
  String get decline => 'Recusar';

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
  String get generateStartCode => 'Gerar código de início';

  @override
  String get startCodeCopied => 'Código de início copiado';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return 'Reservar $amount em custódia';
  }

  @override
  String get releaseCodeCopied => 'Código copiado';

  @override
  String get releaseCodeHint => 'Insira código de liberação';

  @override
  String get regenerateCode => 'Regenerar código';

  @override
  String get generateReleaseCode => 'Gerar código de liberação';

  @override
  String get taskCodesGenerated => 'Códigos gerados';

  @override
  String get newReleaseCodeGenerated => 'Novo código gerado';

  @override
  String get readyToBegin => 'Pronto para começar';

  @override
  String get startCodeHint => 'Insira código de início';

  @override
  String get verifyAndStartWork => 'Verificar e iniciar';

  @override
  String get startCodeVerified => 'Código de início verificado';

  @override
  String get enterStartCodeFirst => 'Insira o código de início primeiro';

  @override
  String get workInProgress => 'Trabalho em andamento';

  @override
  String get releaseCodePrompt => 'Insira o código para liberar o pagamento';

  @override
  String get releaseCodeHelper =>
      'Dê este código ao trabalhador quando terminar';

  @override
  String get confirmWorkCompleted => 'Confirmar trabalho concluído';

  @override
  String get workConfirmedPaymentReleased =>
      'Trabalho confirmado — pagamento liberado!';

  @override
  String get enterReleaseCodeWarning => 'Insira o código de liberação';

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
  String get paymentSafelyReserved => 'Pagamento reservado com segurança';

  @override
  String get cancelTask => 'Cancelar tarefa';

  @override
  String get taskCancelled => 'Tarefa cancelada';

  @override
  String get deleteTask => 'Excluir tarefa';

  @override
  String get deleteTaskTitle => 'Excluir tarefa?';

  @override
  String get deleteTaskConfirm => 'Excluir esta tarefa?';

  @override
  String get taskDeleted => 'Tarefa excluída';

  @override
  String get typeFirstMessage => 'Escreva a primeira mensagem';

  @override
  String get send => 'Enviar';

  @override
  String get failedToSendMessage => 'Erro ao enviar mensagem';

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
  String get chatToday => 'Hoje';

  @override
  String get chatYesterday => 'Ontem';

  @override
  String chatYouPrefix(String message) {
    return 'Você: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'Re: $jobTitle';
  }

  @override
  String get noConversationsYet => 'Sem conversas';

  @override
  String get loadingConversations => 'Carregando conversas...';

  @override
  String get loadingMessages => 'Carregando mensagens...';

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
  String get myProfile => 'Meu perfil';

  @override
  String get unknown => 'Desconhecido';

  @override
  String get experienceLabel => 'Experiência';

  @override
  String get statusLabel => 'Status';

  @override
  String get notSet => 'Não definido';

  @override
  String get onDuty => 'Em serviço';

  @override
  String get offDuty => 'Fora de serviço';

  @override
  String yearsCount(int count) {
    return '$count anos';
  }

  @override
  String get themeAndColors => 'Tema e cores';

  @override
  String get aiModelLabel => 'Modelo de IA';

  @override
  String get availableForWork => 'Disponível para trabalho';

  @override
  String get visibleToClients => 'Visível para clientes';

  @override
  String get currentlyOffDuty => 'Fora de serviço';

  @override
  String get myReviews => 'Minhas avaliações';

  @override
  String get deleteAccount => 'Excluir conta';

  @override
  String get deleteAccountConfirm => 'Tem certeza? Ação irreversível.';

  @override
  String get couldNotDeleteAccount => 'Não foi possível excluir a conta';

  @override
  String get profilePhotoUpdated => 'Foto atualizada';

  @override
  String get profileUpdated => 'Perfil atualizado';

  @override
  String get nameLabel => 'Nome';

  @override
  String get profileImageUrl => 'URL da imagem';

  @override
  String get yearsOfExperience => 'Anos de experiência';

  @override
  String get certificationsLabel => 'Certificações';

  @override
  String get payoutAccountLabel => 'Conta de pagamento';

  @override
  String get onDutySubtitle => 'Visível para novas tarefas';

  @override
  String get loadingProfile => 'Carregando perfil';

  @override
  String get availabilityLabel => 'Disponibilidade';

  @override
  String get memberLabel => 'Membro';

  @override
  String get available => 'Disponível';

  @override
  String get unavailable => 'Indisponível';

  @override
  String get viewAllReviews => 'Ver todas as avaliações';

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
  String get modeLabel => 'Modo';

  @override
  String get pickAColour => 'Escolher cor';

  @override
  String get systemDefault => 'Padrão do sistema';

  @override
  String get darkModeSubtitle => 'Selecione modo sistema, claro ou escuro';

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
  String howWasWorker(String name) {
    return 'Como foi $name?';
  }

  @override
  String get feedbackHelps => 'Sua opinião ajuda';

  @override
  String get thanksForReview => 'Obrigado pela avaliação';

  @override
  String get shareExperienceHint => 'Compartilhe sua experiência';

  @override
  String get ratingExcellent => 'Excelente';

  @override
  String get ratingGreat => 'Muito bom';

  @override
  String get ratingGood => 'Bom';

  @override
  String get ratingFair => 'Regular';

  @override
  String get ratingPoor => 'Ruim';

  @override
  String get tapToRate => 'Toque para avaliar';

  @override
  String workerReviewsTitle(String name) {
    return 'Avaliações de $name';
  }

  @override
  String get loadingReviews => 'Carregando avaliações';

  @override
  String get noReviewsSubtitle => 'Sem avaliações';

  @override
  String get allReviews => 'Todas as avaliações';

  @override
  String reviewCount(int count) {
    return '$count avaliações';
  }

  @override
  String get anonymous => 'Anônimo';

  @override
  String get loading => 'Carregando...';

  @override
  String get error => 'Algo deu errado';

  @override
  String get retry => 'Tentar Novamente';

  @override
  String get tryAgain => 'Tentar novamente';

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
  String get pullDownToRefresh => 'Puxe para atualizar';

  @override
  String get yes => 'Sim';

  @override
  String get required => 'Obrigatório';

  @override
  String get stop => 'Parar';

  @override
  String get clear => 'Limpar';

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
  String get aiCapabilities => 'Recursos de IA';

  @override
  String get onDeviceAi => 'IA no dispositivo';

  @override
  String get aiTaglineSetup => 'Privado · Offline · Gratuito';

  @override
  String get aiSetupDescription =>
      'Receba sugestões inteligentes para tarefas e ofertas';

  @override
  String get physicalDevice => 'Dispositivo físico';

  @override
  String get emulatorDetected => 'Emulador detectado';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => 'Suficiente';

  @override
  String get freeStorage => 'Armazenamento livre';

  @override
  String mbFree(int mb) {
    return '$mb MB livre';
  }

  @override
  String get aiRequiresPhysicalDevice =>
      'Recursos de IA requerem dispositivo físico.';

  @override
  String get multilingual => 'Multilíngue';

  @override
  String downloadingProgress(String percent) {
    return 'Baixando $percent%';
  }

  @override
  String get loadingModel => 'Carregando modelo';

  @override
  String get retryDownload => 'Tentar download novamente';

  @override
  String get activeAndReady => 'Ativo e pronto';

  @override
  String get remove => 'Remover';

  @override
  String get enableAi => 'Ativar IA';

  @override
  String get downloadAiModel => 'Baixar modelo de IA';

  @override
  String get deviceNotSupported => 'Dispositivo não suportado';

  @override
  String get downloadBackgroundNote =>
      'Download em segundo plano. Não feche o app.';

  @override
  String get removeAiModelTitle => 'Remover modelo de IA?';

  @override
  String get removeAiModelConfirm => 'Remover modelo de IA? Libera  MB.';

  @override
  String get analyzeWithAi => 'Analisar com IA';

  @override
  String get aiAssistantAvailable => 'Assistente IA disponível';

  @override
  String get aiSetupPrompt =>
      'Configure um modelo de IA no dispositivo para sugestões inteligentes.';

  @override
  String get setup => 'Configurar';

  @override
  String get adminDashboard => 'Painel de administração';

  @override
  String get failedToLoadDashboard => 'Erro ao carregar painel';

  @override
  String get platformOverview => 'Visão geral';

  @override
  String get liveStatistics => 'Estatísticas ao vivo';

  @override
  String get usersSection => 'Usuários';

  @override
  String get adminTabClients => 'Clientes';

  @override
  String get adminTabWorkers => 'Trabalhadores';

  @override
  String get adminTabAccount => 'Conta';

  @override
  String get jobsSection => 'Trabalhos';

  @override
  String get activeLabel => 'Ativo';

  @override
  String get todaySection => 'Hoje';

  @override
  String get createdLabel => 'Criado';

  @override
  String get completedLabel => 'Concluído';

  @override
  String deleteUserTitle(String role) {
    return 'Excluir $role?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return 'Excluir $name?';
  }

  @override
  String get userDeletedSuccess => 'Usuário excluído';

  @override
  String get unableToLoadUsers => 'Erro ao carregar usuários';

  @override
  String get noClientsFound => 'Sem clientes';

  @override
  String get noWorkersFound => 'Sem trabalhadores';

  @override
  String get deleteUserTooltip => 'Excluir usuário';

  @override
  String get adminSession => 'Sessão admin';

  @override
  String get adminManageUsersHint =>
      'Gerencie usuários pelas abas Clientes e Trabalhadores.';

  @override
  String distanceKm(int radius) {
    return '$radius km';
  }

  @override
  String get youreOffline => 'Você está offline';

  @override
  String get offlineHint => 'Você está offline';

  @override
  String get yourSkills => 'Suas habilidades';

  @override
  String get skillsSubtitle => 'Adicione suas habilidades e experiência';

  @override
  String get addSkillLabel => 'Adicionar habilidade';

  @override
  String get typeToSearchSkills => 'Buscar habilidades';

  @override
  String savedSkillsCount(int count) {
    return '$count habilidades salvas';
  }

  @override
  String get noSkillsAdded => 'Sem habilidades';

  @override
  String get unableToLoadTaskDetails => 'Erro ao carregar detalhes';

  @override
  String get detailDistance => 'Distância';

  @override
  String get chooseLocation => 'Escolher local';

  @override
  String get savedTab => 'Salvos';

  @override
  String get pinOnMapTab => 'Fixar no mapa';

  @override
  String get locationDeniedPermanently => 'Permissão de localização negada';

  @override
  String get couldNotGetLocation => 'Não foi possível obter a localização';

  @override
  String get searchPlaces => 'Buscar lugares';

  @override
  String get switchToSatellite => 'Satélite';

  @override
  String get switchToRoadMap => 'Mapa rodoviário';

  @override
  String get goToMyLocation => 'Ir à minha localização';

  @override
  String get confirmLocation => 'Confirmar local';

  @override
  String get saveAddress => 'Salvar endereço';

  @override
  String get saveAddressSubtitle => 'Salvar para tarefas futuras';

  @override
  String get labelField => 'Rótulo';

  @override
  String get labelHome => 'Casa';

  @override
  String get labelWork => 'Trabalho';

  @override
  String get labelOther => 'Outro';

  @override
  String get recipientName => 'Nome do destinatário';

  @override
  String get recipientNameHint => 'Insira o nome';

  @override
  String get recipientPhone => 'Telefone do destinatário';

  @override
  String get recipientPhoneHint => 'Insira o telefone';

  @override
  String get pickFromContacts => 'Escolher dos contatos';

  @override
  String get contactsAccessDenied => 'Acesso aos contatos negado';

  @override
  String get openSettings => 'Abrir configurações';

  @override
  String get couldNotOpenContacts => 'Não foi possível abrir os contatos';

  @override
  String get areaNeighbourhood => 'Área / Bairro';

  @override
  String get areaHint => 'Ex. Copacabana, Bairro Alto';

  @override
  String get cityHint => 'Ex. São Paulo';

  @override
  String get postalCodeRequired => 'CEP obrigatório';

  @override
  String get postalCodeHint => 'Ex. 01001-000';

  @override
  String get countryCodeRequired => 'Código do país obrigatório';

  @override
  String get countryCodeHint => '+55';

  @override
  String get requiredSkillsLabel => 'Habilidades necessárias';

  @override
  String get skillHintText => 'Digite habilidades, separe por vírgulas';

  @override
  String get skillHelperEmpty => 'Sem habilidades ainda';

  @override
  String skillsAddedCount(int count) {
    return '$count habilidades adicionadas';
  }

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

  @override
  String get accentColorBlue => 'Azul';

  @override
  String get accentColorYellow => 'Amarelo';

  @override
  String get accentColorGreen => 'Verde';

  @override
  String get accentColorPink => 'Rosa';

  @override
  String get accentColorRed => 'Vermelho';

  @override
  String get accentColorPurple => 'Roxo';

  @override
  String get accentColorOrange => 'Laranja';

  @override
  String get accentColorTeal => 'Azul-petróleo';

  @override
  String get accentColorCustom => 'Personalizado';

  @override
  String get paymentStatusPending => 'Pagamento pendente';

  @override
  String get paymentStatusLocked => 'Valor reservado com segurança';

  @override
  String get paymentStatusReleased => 'Pagamento liberado';

  @override
  String get paymentStatusOffline => 'Pague ao concluir';

  @override
  String paymentStatusGeneric(String status) {
    return 'Status do pagamento: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'Aberto para ofertas';

  @override
  String get jobStatusOfferAccepted => 'Oferta aceita';

  @override
  String get jobStatusReadyToStart => 'Pronto para começar';

  @override
  String get jobStatusInProgress => 'Em andamento';

  @override
  String get jobStatusPendingPayment => 'Pagamento pendente';

  @override
  String get jobStatusPaymentReleased => 'Pagamento liberado';

  @override
  String get jobStatusTaskCompleted => 'Tarefa concluída';

  @override
  String get jobStatusCancelled => 'Cancelado';

  @override
  String get detailBudgetLabel => 'Orçamento';

  @override
  String get detailLocationLabel => 'Local';

  @override
  String get detailSkillsLabel => 'Habilidades';

  @override
  String get detailJobIdLabel => 'ID do trabalho';

  @override
  String get tooltipCopy => 'Copiar';

  @override
  String get tooltipDeleteAddress => 'Excluir endereço';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return 'Remover \"$addressLabel\" dos endereços salvos?';
  }

  @override
  String get errorNotAuthenticated => 'Não autenticado. Faça login novamente.';

  @override
  String get errorCouldNotOpenImagePicker =>
      'Não foi possível abrir o seletor de imagens.';

  @override
  String get errorCouldNotReadImage => 'Não foi possível ler a imagem.';

  @override
  String get errorImageTooLarge => 'Imagem deve ter menos de 5 MB.';

  @override
  String get errorUploadFailed => 'Upload falhou. Tente novamente.';

  @override
  String get errorNameRequired => 'Nome obrigatório';

  @override
  String get errorRatingRequired => 'Selecione uma avaliação';

  @override
  String get errorNotLoggedIn => 'Faça login primeiro';

  @override
  String get errorAdminProfileUpdateNotSupported =>
      'Atualização de perfil admin não suportada';

  @override
  String get errorAdminDeletionDisabled => 'Exclusão admin desabilitada no app';

  @override
  String get errorConnectionTimeout => 'Tempo de conexão esgotado.';

  @override
  String get errorConnectionError => 'Falha na conexão com o servidor.';

  @override
  String get errorRequestCancelled => 'Requisição cancelada.';

  @override
  String get errorBadRequest => 'Requisição inválida. Verifique os dados.';

  @override
  String get errorSessionExpired => 'Sessão expirada. Faça login novamente.';

  @override
  String get errorPermissionDenied => 'Sem permissão.';

  @override
  String get errorResourceNotFound => 'Recurso não encontrado.';

  @override
  String get errorConflict => 'Conflito: ação não pode ser concluída.';

  @override
  String get errorFileTooLarge => 'Arquivo muito grande. Máx 5 MB.';

  @override
  String get errorValidationError => 'Erro de validação. Verifique os dados.';

  @override
  String get errorTooManyRequests => 'Muitas requisições. Aguarde.';

  @override
  String get errorServerError => 'Erro do servidor. Tente mais tarde.';

  @override
  String errorRequestFailed(String statusCode) {
    return 'Requisição falhou: status $statusCode';
  }

  @override
  String get errorNetworkFailed => 'Erro de rede.';

  @override
  String get errorNetworkRequestFailed => 'Erro de rede';

  @override
  String get errorMalformedSkillResponse =>
      'Resposta de habilidades malformada';

  @override
  String get errorMalformedResponse => 'Resposta malformada';

  @override
  String get errorMalformedAdminResponse => 'Resposta admin malformada';

  @override
  String get errorAdminAccessRequired => 'Acesso admin necessário';

  @override
  String get errorDescriptionUnavailable => 'Descrição indisponível';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return 'Apenas $roleLabel podem realizar esta ação';
  }

  @override
  String get useWithoutSaving => 'Usar sem salvar';

  @override
  String get saveAndUse => 'Salvar e usar';

  @override
  String get useMyCurrentLocation => 'Usar minha localização atual';

  @override
  String get detectingLocation => 'Detectando localização…';
}
