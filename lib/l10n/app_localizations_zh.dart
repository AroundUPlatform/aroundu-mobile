// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => '登录';

  @override
  String get registerTitle => '创建账户';

  @override
  String get emailLabel => '邮箱';

  @override
  String get passwordLabel => '密码';

  @override
  String get confirmPasswordLabel => '确认密码';

  @override
  String get forgotPassword => '忘记密码？';

  @override
  String get loginButton => '登录';

  @override
  String get registerButton => '注册';

  @override
  String get orContinueWith => '或使用以下方式继续';

  @override
  String get dontHaveAccount => '没有账户？';

  @override
  String get alreadyHaveAccount => '已有账户？';

  @override
  String get welcomeBack => '欢迎回来';

  @override
  String get loginSubtitle => '登录您的AroundU账户';

  @override
  String get noAccountYet => '还没有账户？';

  @override
  String get createOne => '创建';

  @override
  String get emailRequired => '邮箱必填';

  @override
  String get enterValidEmail => '输入有效邮箱';

  @override
  String get passwordRequired => '密码必填';

  @override
  String get minimumSixCharacters => '最少6个字符';

  @override
  String get unableToLogin => '登录失败';

  @override
  String fieldRequired(String field) {
    return '$field必填';
  }

  @override
  String get enterValidPhone => '输入有效电话';

  @override
  String get unableToRegister => '注册失败';

  @override
  String get registrationSuccess => '注册成功';

  @override
  String get registerSubtitle => '注册为提供者或工人';

  @override
  String get roleLabel => '角色';

  @override
  String get roleJobProvider => '任务提供者';

  @override
  String get roleJobWorker => '工人';

  @override
  String get countryLabel => '国家';

  @override
  String get currencyLabel => '货币';

  @override
  String get cityLabel => '城市';

  @override
  String get postalCodeLabel => '邮编';

  @override
  String get areaOptionalLabel => '区域（可选）';

  @override
  String get fullAddressOptionalLabel => '详细地址（可选）';

  @override
  String get alreadyRegistered => '已注册？';

  @override
  String get logInLink => '登录';

  @override
  String get onboardingTitle1 => '发现身边的任务';

  @override
  String get onboardingSubtitle1 => '在您的社区发现本地工作和服务。';

  @override
  String get onboardingTitle2 => '竞标并获得工作';

  @override
  String get onboardingSubtitle2 => '提交有竞争力的报价，获得匹配您技能的任务。';

  @override
  String get onboardingTitle3 => '安全支付';

  @override
  String get onboardingSubtitle3 => '担保支付确保公平安全的交易。';

  @override
  String get getStarted => '开始';

  @override
  String get skip => '跳过';

  @override
  String get next => '下一步';

  @override
  String get newHereCreateAccount => '新用户？创建账户';

  @override
  String get roleSelectionTitle => '选择您的角色';

  @override
  String get roleClient => '雇主';

  @override
  String get roleClientDesc => '我需要任务帮助';

  @override
  String get roleWorker => '工人';

  @override
  String get roleWorkerDesc => '我想提供我的技能';

  @override
  String get continueButton => '继续';

  @override
  String get roleSelectionSubtitle => '您想如何使用AroundU？';

  @override
  String signedInAs(String email) {
    return '登录为$email';
  }

  @override
  String get roleProviderDesc => '发布任务并寻找合格工人';

  @override
  String get roleWorkerDescAlt => '寻找任务，用技能赚钱';

  @override
  String get homeTab => '首页';

  @override
  String get jobsTab => '工作';

  @override
  String get chatTab => '聊天';

  @override
  String get profileTab => '个人资料';

  @override
  String get providerTabMyTasks => '我的任务';

  @override
  String get providerTabPostTask => '发布任务';

  @override
  String get tasksNavLabel => '任务';

  @override
  String get postNavLabel => '发布';

  @override
  String get workerTabTaskFeed => '任务动态';

  @override
  String get feedNavLabel => '动态';

  @override
  String get myJobs => '我的工作';

  @override
  String get workerFeed => '可用工作';

  @override
  String get createJob => '创建工作';

  @override
  String get postJob => '发布工作';

  @override
  String get editJob => '编辑工作';

  @override
  String get deleteJob => '删除工作';

  @override
  String get deleteJobConfirm => '确定要删除这份工作吗？';

  @override
  String get jobTitle => '标题';

  @override
  String get jobDescription => '描述';

  @override
  String get jobCategory => '类别';

  @override
  String get jobBudget => '预算';

  @override
  String get jobLocation => '位置';

  @override
  String get jobDueDate => '截止日期';

  @override
  String get jobSkills => '所需技能';

  @override
  String get jobUrgency => '紧急程度';

  @override
  String get jobPaymentMode => '支付方式';

  @override
  String get urgencyNormal => '普通';

  @override
  String get urgencyMedium => '中等';

  @override
  String get urgencyUrgent => '紧急';

  @override
  String get urgencyAsap => '尽快';

  @override
  String get paymentOffline => '线下';

  @override
  String get paymentEscrow => '担保';

  @override
  String get paymentMethod => '支付方式';

  @override
  String get payInCash => '现金支付';

  @override
  String get secureEscrow => '安全托管';

  @override
  String get filterAll => '全部';

  @override
  String get filterOpen => '开放';

  @override
  String get filterActive => '活跃';

  @override
  String get filterInProgress => '进行中';

  @override
  String get filterCompleted => '已完成';

  @override
  String get filterCancelled => '已取消';

  @override
  String get filterExpired => '已过期';

  @override
  String get filterNearby => '附近';

  @override
  String get filterAllMine => '我的全部';

  @override
  String get filterBidPlaced => '已投标';

  @override
  String get filterAccepted => '已接受';

  @override
  String get noTasksPostedYet => '未发布任务';

  @override
  String get noOpenTasks => '无开放任务';

  @override
  String get noActiveTasks => '无活跃任务';

  @override
  String get noTasksInProgress => '无进行中的任务';

  @override
  String get noCompletedTasks => '无已完成的任务';

  @override
  String get noCancelledTasks => '无已取消的任务';

  @override
  String get noExpiredTasks => '无已过期的任务';

  @override
  String get unableToLoadTasks => '加载任务失败';

  @override
  String get noNearbyJobs => '附近无工作';

  @override
  String get noJobsYetBid => '暂无工作 — 去投标';

  @override
  String get noPendingBids => '无待定投标';

  @override
  String get noAcceptedJobs => '无已接受的工作';

  @override
  String get noJobsInProgress => '无进行中的工作';

  @override
  String get noCompletedJobsYet => '无已完成的工作';

  @override
  String get noCancelledJobs => '无已取消的工作';

  @override
  String get noExpiredJobs => '无已过期的工作';

  @override
  String get pullDownToRefreshCheck => '下拉查看新任务';

  @override
  String get unableToLoadJobs => '加载工作失败';

  @override
  String get postNewTask => '新任务';

  @override
  String get postTaskSubtitle => '添加清晰细节以获得准确报价';

  @override
  String get taskTitleLabel => '任务标题';

  @override
  String get savingLocation => '保存位置';

  @override
  String get tapToSelectLocation => '点击选择位置';

  @override
  String get postTaskButton => '发布任务';

  @override
  String get addSkillWarning => '请至少添加一项必需技能';

  @override
  String get enterValidBudget => '输入有效预算';

  @override
  String get setJobLocationWarning => '请设置任务位置';

  @override
  String get jobPostedSuccess => '任务发布成功';

  @override
  String get failedToPostJob => '发布失败';

  @override
  String get failedToSaveLocation => '保存位置失败';

  @override
  String get unableToLoadJobWorkflow => '加载工作流失败';

  @override
  String get unknownError => '未知错误';

  @override
  String get statusOpenForBids => '接受竞标';

  @override
  String get statusInProgress => '进行中';

  @override
  String get statusCompleted => '已完成';

  @override
  String get statusCancelled => '已取消';

  @override
  String get statusPendingStart => '等待开始';

  @override
  String get statusPendingRelease => '等待释放';

  @override
  String get bids => '竞标';

  @override
  String get noBids => '暂无竞标';

  @override
  String get placeBid => '提交竞标';

  @override
  String get bidAmount => '竞标金额';

  @override
  String get bidNotes => '备注（可选）';

  @override
  String get yourBid => '您的竞标';

  @override
  String get acceptBid => '接受竞标';

  @override
  String get rejectBid => '拒绝竞标';

  @override
  String get bidAccepted => '竞标已接受';

  @override
  String get bidRejected => '竞标已拒绝';

  @override
  String get bidPending => '待定';

  @override
  String get offersSection => '报价';

  @override
  String get noOffersReceivedYet => '未收到报价';

  @override
  String get offerAccepted => '报价已接受';

  @override
  String get offerRejected => '报价已拒绝';

  @override
  String get offerPending => '报价待定';

  @override
  String workerNumber(int id) {
    return '工人 #$id';
  }

  @override
  String get acceptThisOffer => '接受此报价';

  @override
  String get messageWorker => '给工人发消息';

  @override
  String get offerAcceptedSnack => '报价已接受！';

  @override
  String get yourOffer => '您的报价';

  @override
  String get bidStatusSelected => '已选择';

  @override
  String get bidStatusRejected => '已拒绝';

  @override
  String get bidStatusPending => '待定';

  @override
  String get placeYourOffer => '提交报价';

  @override
  String get yourOfferAmount => '报价金额';

  @override
  String get messageToClientOptional => '给客户的消息（可选）';

  @override
  String get addPartnerOptional => '添加伙伴（可选）';

  @override
  String get partnerNameLabel => '伙伴姓名';

  @override
  String get partnerFeeLabel => '伙伴费用';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return '伙伴费用：$amount';
  }

  @override
  String get submitOffer => '提交报价';

  @override
  String get enterValidOfferAmount => '输入有效金额';

  @override
  String get offerSubmittedSuccess => '报价已提交';

  @override
  String get clientSelectedYourOffer => '客户选择了你的报价';

  @override
  String get handshakeHint => '双方须共享验证码才能开始';

  @override
  String get handshakeAccepted => '握手已接受';

  @override
  String get handshakeDeclined => '握手已拒绝';

  @override
  String get acceptJob => '接受工作';

  @override
  String get decline => '拒绝';

  @override
  String get startCode => '开始代码';

  @override
  String get releaseCode => '释放代码';

  @override
  String get generateCodes => '生成代码';

  @override
  String get verifyCode => '验证代码';

  @override
  String get enterCode => '输入代码';

  @override
  String get generateStartCode => '生成启动码';

  @override
  String get startCodeCopied => '启动码已复制';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return '将$amount存入托管';
  }

  @override
  String get releaseCodeCopied => '释放码已复制';

  @override
  String get releaseCodeHint => '输入释放码';

  @override
  String get regenerateCode => '重新生成';

  @override
  String get generateReleaseCode => '生成释放码';

  @override
  String get taskCodesGenerated => '任务码已生成';

  @override
  String get newReleaseCodeGenerated => '新释放码已生成';

  @override
  String get readyToBegin => '准备开始';

  @override
  String get startCodeHint => '输入启动码';

  @override
  String get verifyAndStartWork => '验证并开始';

  @override
  String get startCodeVerified => '启动码已验证';

  @override
  String get enterStartCodeFirst => '请先输入启动码';

  @override
  String get workInProgress => '工作进行中';

  @override
  String get releaseCodePrompt => '输入释放码以释放付款';

  @override
  String get releaseCodeHelper => '工作完成后将此码给工人';

  @override
  String get confirmWorkCompleted => '确认工作完成';

  @override
  String get workConfirmedPaymentReleased => '工作已确认 — 付款已释放！';

  @override
  String get enterReleaseCodeWarning => '输入释放码';

  @override
  String get escrow => '担保';

  @override
  String get lockEscrow => '锁定担保';

  @override
  String get releaseEscrow => '释放付款';

  @override
  String get paymentLocked => '付款已锁定';

  @override
  String get paymentReleased => '付款已释放';

  @override
  String get paymentSafelyReserved => '付款已安全保留';

  @override
  String get cancelTask => '取消任务';

  @override
  String get taskCancelled => '任务已取消';

  @override
  String get deleteTask => '删除任务';

  @override
  String get deleteTaskTitle => '删除任务？';

  @override
  String get deleteTaskConfirm => '删除此任务？';

  @override
  String get taskDeleted => '任务已删除';

  @override
  String get typeFirstMessage => '输入第一条消息';

  @override
  String get send => '发送';

  @override
  String get failedToSendMessage => '发送消息失败';

  @override
  String get conversations => '消息';

  @override
  String get noMessagesYet => '暂无消息';

  @override
  String get noMessagesSubtitle => '当您开始就任务进行聊天时，对话将显示在这里。';

  @override
  String get startConversation => '开始对话！';

  @override
  String get typeMessage => '输入消息...';

  @override
  String get typing => '正在输入...';

  @override
  String get newMessages => '新消息';

  @override
  String get now => '刚刚';

  @override
  String minutesAgo(int count) {
    return '$count分钟前';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count位工人',
      one: '1位工人',
    );
    return '$_temp0';
  }

  @override
  String get chatToday => '今天';

  @override
  String get chatYesterday => '昨天';

  @override
  String chatYouPrefix(String message) {
    return '你：$message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return '回复：$jobTitle';
  }

  @override
  String get noConversationsYet => '无对话';

  @override
  String get loadingConversations => '加载对话中...';

  @override
  String get loadingMessages => '加载消息中...';

  @override
  String get profile => '个人资料';

  @override
  String get editProfile => '编辑资料';

  @override
  String get fullName => '全名';

  @override
  String get phone => '电话号码';

  @override
  String get bio => '简介';

  @override
  String get skills => '技能';

  @override
  String get saveChanges => '保存更改';

  @override
  String get logout => '退出登录';

  @override
  String get logoutConfirm => '确定要退出登录吗？';

  @override
  String get myProfile => '我的资料';

  @override
  String get unknown => '未知';

  @override
  String get experienceLabel => '经验';

  @override
  String get statusLabel => '状态';

  @override
  String get notSet => '未设置';

  @override
  String get onDuty => '在线';

  @override
  String get offDuty => '离线';

  @override
  String yearsCount(int count) {
    return '$count年';
  }

  @override
  String get themeAndColors => '主题与颜色';

  @override
  String get aiModelLabel => 'AI模型';

  @override
  String get availableForWork => '可接受工作';

  @override
  String get visibleToClients => '对客户可见';

  @override
  String get currentlyOffDuty => '当前离线';

  @override
  String get myReviews => '我的评价';

  @override
  String get deleteAccount => '删除账户';

  @override
  String get deleteAccountConfirm => '确定吗？此操作不可撤销。';

  @override
  String get couldNotDeleteAccount => '无法删除账户';

  @override
  String get profilePhotoUpdated => '头像已更新';

  @override
  String get profileUpdated => '资料已更新';

  @override
  String get nameLabel => '姓名';

  @override
  String get profileImageUrl => '头像URL';

  @override
  String get yearsOfExperience => '工作年限';

  @override
  String get certificationsLabel => '证书';

  @override
  String get payoutAccountLabel => '收款账户';

  @override
  String get onDutySubtitle => '您对新任务可见';

  @override
  String get loadingProfile => '加载资料';

  @override
  String get availabilityLabel => '可用性';

  @override
  String get memberLabel => '会员';

  @override
  String get available => '可用';

  @override
  String get unavailable => '不可用';

  @override
  String get viewAllReviews => '查看所有评价';

  @override
  String get settings => '设置';

  @override
  String get appearance => '外观';

  @override
  String get language => '语言';

  @override
  String get darkMode => '深色模式';

  @override
  String get lightMode => '浅色模式';

  @override
  String get systemMode => '系统';

  @override
  String get accentColour => '强调色';

  @override
  String get customColour => '自定义';

  @override
  String get preview => '预览';

  @override
  String get previewTitle => '您的配色看起来很棒！';

  @override
  String get previewSubtitle => '这是您的应用的样子。';

  @override
  String get primary => '主要';

  @override
  String get secondary => '次要';

  @override
  String get modeLabel => '模式';

  @override
  String get pickAColour => '选择颜色';

  @override
  String get systemDefault => '系统默认';

  @override
  String get darkModeSubtitle => '选择系统、浅色或深色模式';

  @override
  String get reviews => '评价';

  @override
  String get leaveReview => '写评价';

  @override
  String get noReviews => '暂无评价';

  @override
  String get rating => '评分';

  @override
  String get reviewComment => '评论';

  @override
  String get submitReview => '提交评价';

  @override
  String howWasWorker(String name) {
    return '$name表现如何？';
  }

  @override
  String get feedbackHelps => '你的反馈很有帮助';

  @override
  String get thanksForReview => '感谢您的评价';

  @override
  String get shareExperienceHint => '分享您的体验';

  @override
  String get ratingExcellent => '优秀';

  @override
  String get ratingGreat => '很好';

  @override
  String get ratingGood => '好';

  @override
  String get ratingFair => '一般';

  @override
  String get ratingPoor => '差';

  @override
  String get tapToRate => '点击评分';

  @override
  String workerReviewsTitle(String name) {
    return '$name的评价';
  }

  @override
  String get loadingReviews => '加载评价';

  @override
  String get noReviewsSubtitle => '暂无评价';

  @override
  String get allReviews => '所有评价';

  @override
  String reviewCount(int count) {
    return '$count条评价';
  }

  @override
  String get anonymous => '匿名';

  @override
  String get loading => '加载中...';

  @override
  String get error => '出了点问题';

  @override
  String get retry => '重试';

  @override
  String get tryAgain => '重试';

  @override
  String get cancel => '取消';

  @override
  String get confirm => '确认';

  @override
  String get delete => '删除';

  @override
  String get save => '保存';

  @override
  String get edit => '编辑';

  @override
  String get close => '关闭';

  @override
  String get search => '搜索';

  @override
  String get noResults => '未找到结果';

  @override
  String get pullToRefresh => '下拉刷新';

  @override
  String get pullDownToRefresh => '下拉刷新';

  @override
  String get yes => '是';

  @override
  String get required => '必填';

  @override
  String get stop => '停止';

  @override
  String get clear => '清除';

  @override
  String get aiSetup => 'AI设置';

  @override
  String get aiAnalysis => 'AI分析';

  @override
  String get unlockAi => '解锁AI分析';

  @override
  String get aiTagline => '设备端  ·  隐私  ·  免费';

  @override
  String get deviceCheck => '设备检查';

  @override
  String get chooseModel => '选择您的模型';

  @override
  String get chooseModelSubtitle => '下载一个或多个模型。您可以稍后切换。';

  @override
  String get initializingAi => '正在初始化AI运行时…';

  @override
  String get modelStorage => '模型存储';

  @override
  String get deviceIncompatible => '设备端AI需要支持GPU的物理设备。模拟器和仿真器不兼容。';

  @override
  String get enhanceDescription => '增强';

  @override
  String get bidInsights => '竞标分析';

  @override
  String get whyThisJob => '为什么选这个？';

  @override
  String get suggestPrice => '建议价格';

  @override
  String get analyzing => '分析中…';

  @override
  String get aiCapabilities => 'AI功能';

  @override
  String get onDeviceAi => '设备端AI';

  @override
  String get aiTaglineSetup => '私密 · 离线 · 免费';

  @override
  String get aiSetupDescription => '获取任务和报价的智能建议';

  @override
  String get physicalDevice => '物理设备';

  @override
  String get emulatorDetected => '检测到模拟器';

  @override
  String get ram => '内存';

  @override
  String get sufficient => '足够';

  @override
  String get freeStorage => '可用存储';

  @override
  String mbFree(int mb) {
    return '$mb MB可用';
  }

  @override
  String get aiRequiresPhysicalDevice => 'AI功能需要物理设备。';

  @override
  String get multilingual => '多语言';

  @override
  String downloadingProgress(String percent) {
    return '下载中 $percent%';
  }

  @override
  String get loadingModel => '加载模型';

  @override
  String get retryDownload => '重试下载';

  @override
  String get activeAndReady => '活跃且就绪';

  @override
  String get remove => '移除';

  @override
  String get enableAi => '启用AI';

  @override
  String get downloadAiModel => '下载AI模型';

  @override
  String get deviceNotSupported => '设备不支持';

  @override
  String get downloadBackgroundNote => '后台下载中，请勿关闭应用。';

  @override
  String get removeAiModelTitle => '移除AI模型？';

  @override
  String get removeAiModelConfirm => '移除AI模型？将释放MB。';

  @override
  String get analyzeWithAi => 'AI分析';

  @override
  String get aiAssistantAvailable => 'AI助手可用';

  @override
  String get aiSetupPrompt => '设置设备上的AI模型以获取智能建议。';

  @override
  String get setup => '设置';

  @override
  String get adminDashboard => '管理面板';

  @override
  String get failedToLoadDashboard => '加载面板失败';

  @override
  String get platformOverview => '平台概览';

  @override
  String get liveStatistics => '实时统计';

  @override
  String get usersSection => '用户';

  @override
  String get adminTabClients => '客户';

  @override
  String get adminTabWorkers => '工人';

  @override
  String get adminTabAccount => '账户';

  @override
  String get jobsSection => '工作';

  @override
  String get activeLabel => '活跃';

  @override
  String get todaySection => '今天';

  @override
  String get createdLabel => '已创建';

  @override
  String get completedLabel => '已完成';

  @override
  String deleteUserTitle(String role) {
    return '删除$role？';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return '删除$name？';
  }

  @override
  String get userDeletedSuccess => '用户已删除';

  @override
  String get unableToLoadUsers => '加载用户失败';

  @override
  String get noClientsFound => '未找到客户';

  @override
  String get noWorkersFound => '未找到工人';

  @override
  String get deleteUserTooltip => '删除用户';

  @override
  String get adminSession => '管理员会话';

  @override
  String get adminManageUsersHint => '从客户和工人标签管理用户。';

  @override
  String distanceKm(int radius) {
    return '$radius 公里';
  }

  @override
  String get youreOffline => '您处于离线状态';

  @override
  String get offlineHint => '您处于离线状态';

  @override
  String get yourSkills => '您的技能';

  @override
  String get skillsSubtitle => '添加您的技能和专长';

  @override
  String get addSkillLabel => '添加技能';

  @override
  String get typeToSearchSkills => '搜索技能';

  @override
  String savedSkillsCount(int count) {
    return '已保存$count项技能';
  }

  @override
  String get noSkillsAdded => '未添加技能';

  @override
  String get unableToLoadTaskDetails => '加载详情失败';

  @override
  String get detailDistance => '距离';

  @override
  String get chooseLocation => '选择位置';

  @override
  String get savedTab => '已保存';

  @override
  String get pinOnMapTab => '在地图上标记';

  @override
  String get locationDeniedPermanently => '位置权限被永久拒绝';

  @override
  String get couldNotGetLocation => '无法获取位置';

  @override
  String get searchPlaces => '搜索地点';

  @override
  String get switchToSatellite => '卫星地图';

  @override
  String get switchToRoadMap => '道路地图';

  @override
  String get goToMyLocation => '到我的位置';

  @override
  String get confirmLocation => '确认位置';

  @override
  String get useWithoutSaving => 'Use without saving';

  @override
  String get saveAndUse => 'Save & use';

  @override
  String get useMyCurrentLocation => 'Use my current location';

  @override
  String get detectingLocation => 'Detecting location…';

  @override
  String get saveAddress => '保存地址';

  @override
  String get saveAddressSubtitle => '为将来的任务保存';

  @override
  String get labelField => '标签';

  @override
  String get labelHome => '家';

  @override
  String get labelWork => '工作';

  @override
  String get labelOther => '其他';

  @override
  String get recipientName => '收件人姓名';

  @override
  String get recipientNameHint => '输入姓名';

  @override
  String get recipientPhone => '收件人电话';

  @override
  String get recipientPhoneHint => '输入电话';

  @override
  String get pickFromContacts => '从联系人选择';

  @override
  String get contactsAccessDenied => '联系人访问被拒绝';

  @override
  String get openSettings => '打开设置';

  @override
  String get couldNotOpenContacts => '无法打开联系人';

  @override
  String get areaNeighbourhood => '区域/社区';

  @override
  String get areaHint => '例如：朝阳区、浦东';

  @override
  String get cityHint => '例如：北京';

  @override
  String get postalCodeRequired => '邮编必填';

  @override
  String get postalCodeHint => '例如：100000';

  @override
  String get countryCodeRequired => '国家代码必填';

  @override
  String get countryCodeHint => '+86';

  @override
  String get requiredSkillsLabel => '必需技能';

  @override
  String get skillHintText => '输入技能，用逗号分隔';

  @override
  String get skillHelperEmpty => '尚未添加技能';

  @override
  String skillsAddedCount(int count) {
    return '已添加$count项技能';
  }

  @override
  String get languagePicker => '选择语言';

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
  String get accentColorBlue => '蓝色';

  @override
  String get accentColorYellow => '黄色';

  @override
  String get accentColorGreen => '绿色';

  @override
  String get accentColorPink => '粉红';

  @override
  String get accentColorRed => '红色';

  @override
  String get accentColorPurple => '紫色';

  @override
  String get accentColorOrange => '橙色';

  @override
  String get accentColorTeal => '青色';

  @override
  String get accentColorCustom => '自定义';

  @override
  String get paymentStatusPending => '待付款';

  @override
  String get paymentStatusLocked => '金额已安全保留';

  @override
  String get paymentStatusReleased => '付款已释放';

  @override
  String get paymentStatusOffline => '完成后直接支付';

  @override
  String paymentStatusGeneric(String status) {
    return '付款状态：$status';
  }

  @override
  String get jobStatusOpenForOffers => '开放报价';

  @override
  String get jobStatusOfferAccepted => '报价已接受';

  @override
  String get jobStatusReadyToStart => '准备开始';

  @override
  String get jobStatusInProgress => '进行中';

  @override
  String get jobStatusPendingPayment => '待付款';

  @override
  String get jobStatusPaymentReleased => '付款已释放';

  @override
  String get jobStatusTaskCompleted => '任务完成';

  @override
  String get jobStatusCancelled => '已取消';

  @override
  String get detailBudgetLabel => '预算';

  @override
  String get detailLocationLabel => '位置';

  @override
  String get detailSkillsLabel => '技能';

  @override
  String get detailJobIdLabel => '工作ID';

  @override
  String get tooltipCopy => '复制';

  @override
  String get tooltipDeleteAddress => '删除地址';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return '从保存的地址中删除\"$addressLabel\"？';
  }

  @override
  String get errorNotAuthenticated => '未认证。请重新登录。';

  @override
  String get errorCouldNotOpenImagePicker => '无法打开图片选择器。';

  @override
  String get errorCouldNotReadImage => '无法读取图片。';

  @override
  String get errorImageTooLarge => '图片须小于5MB。';

  @override
  String get errorUploadFailed => '上传失败。请重试。';

  @override
  String get errorNameRequired => '姓名必填';

  @override
  String get errorRatingRequired => '请选择评分';

  @override
  String get errorNotLoggedIn => '请先登录';

  @override
  String get errorAdminProfileUpdateNotSupported => '不支持管理员资料更新';

  @override
  String get errorAdminDeletionDisabled => '应用内禁止删除管理员';

  @override
  String get errorConnectionTimeout => '连接超时。请重试。';

  @override
  String get errorConnectionError => '连接服务器失败。';

  @override
  String get errorRequestCancelled => '请求已取消。';

  @override
  String get errorBadRequest => '无效请求。请检查输入。';

  @override
  String get errorSessionExpired => '会话已过期。请重新登录。';

  @override
  String get errorPermissionDenied => '没有权限。';

  @override
  String get errorResourceNotFound => '资源未找到。';

  @override
  String get errorConflict => '冲突：无法完成操作。';

  @override
  String get errorFileTooLarge => '文件过大。最大5MB。';

  @override
  String get errorValidationError => '验证错误。请检查输入。';

  @override
  String get errorTooManyRequests => '请求过多。请稍候。';

  @override
  String get errorServerError => '服务器错误。请稍后重试。';

  @override
  String errorRequestFailed(String statusCode) {
    return '请求失败：状态 $statusCode';
  }

  @override
  String get errorNetworkFailed => '网络错误。';

  @override
  String get errorNetworkRequestFailed => '网络错误';

  @override
  String get errorMalformedSkillResponse => '技能响应格式错误';

  @override
  String get errorMalformedResponse => '响应格式错误';

  @override
  String get errorMalformedAdminResponse => '管理员响应格式错误';

  @override
  String get errorAdminAccessRequired => '需要管理员权限';

  @override
  String get errorDescriptionUnavailable => '描述不可用';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return '仅$roleLabel可执行此操作';
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

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => '登入';

  @override
  String get registerTitle => '建立帳號';

  @override
  String get emailLabel => '電子信箱';

  @override
  String get passwordLabel => '密碼';

  @override
  String get confirmPasswordLabel => '確認密碼';

  @override
  String get forgotPassword => '忘記密碼？';

  @override
  String get loginButton => '登入';

  @override
  String get registerButton => '註冊';

  @override
  String get orContinueWith => '或使用以下方式繼續';

  @override
  String get dontHaveAccount => '沒有帳號？';

  @override
  String get alreadyHaveAccount => '已有帳號？';

  @override
  String get welcomeBack => '歡迎回來';

  @override
  String get loginSubtitle => '登入您的AroundU帳戶';

  @override
  String get noAccountYet => '還沒有帳戶？';

  @override
  String get createOne => '建立';

  @override
  String get emailRequired => '電子郵件必填';

  @override
  String get enterValidEmail => '輸入有效電子郵件';

  @override
  String get passwordRequired => '密碼必填';

  @override
  String get minimumSixCharacters => '最少6個字元';

  @override
  String get unableToLogin => '登入失敗';

  @override
  String fieldRequired(String field) {
    return '$field必填';
  }

  @override
  String get enterValidPhone => '輸入有效電話';

  @override
  String get unableToRegister => '註冊失敗';

  @override
  String get registrationSuccess => '註冊成功';

  @override
  String get registerSubtitle => '註冊為提供者或工人';

  @override
  String get roleLabel => '角色';

  @override
  String get roleJobProvider => '任务提供者';

  @override
  String get roleJobWorker => '工人';

  @override
  String get countryLabel => '國家';

  @override
  String get currencyLabel => '貨幣';

  @override
  String get cityLabel => '城市';

  @override
  String get postalCodeLabel => '郵遞區號';

  @override
  String get areaOptionalLabel => '區域（選填）';

  @override
  String get fullAddressOptionalLabel => '詳細地址（選填）';

  @override
  String get alreadyRegistered => '已註冊？';

  @override
  String get logInLink => '登入';

  @override
  String get onboardingTitle1 => '尋找身邊的任務';

  @override
  String get onboardingSubtitle1 => '在您的社區發現當地工作和服務。';

  @override
  String get onboardingTitle2 => '競標並獲得工作';

  @override
  String get onboardingSubtitle2 => '提交有競爭力的報價，獲得匹配您技能的任務。';

  @override
  String get onboardingTitle3 => '安全付款';

  @override
  String get onboardingSubtitle3 => '擔保付款確保公平安全的交易。';

  @override
  String get getStarted => '開始';

  @override
  String get skip => '跳過';

  @override
  String get next => '下一步';

  @override
  String get newHereCreateAccount => '新使用者？建立帳戶';

  @override
  String get roleSelectionTitle => '選擇您的角色';

  @override
  String get roleClient => '雇主';

  @override
  String get roleClientDesc => '我需要任務幫助';

  @override
  String get roleWorker => '工人';

  @override
  String get roleWorkerDesc => '我想提供我的技能';

  @override
  String get continueButton => '繼續';

  @override
  String get roleSelectionSubtitle => '您想如何使用AroundU？';

  @override
  String signedInAs(String email) {
    return '登入為$email';
  }

  @override
  String get roleProviderDesc => '發布任務並尋找合格工人';

  @override
  String get roleWorkerDescAlt => '尋找任務，用技能賺錢';

  @override
  String get homeTab => '首頁';

  @override
  String get jobsTab => '工作';

  @override
  String get chatTab => '聊天';

  @override
  String get profileTab => '個人資料';

  @override
  String get providerTabMyTasks => '我的任務';

  @override
  String get providerTabPostTask => '發布任務';

  @override
  String get tasksNavLabel => '任务';

  @override
  String get postNavLabel => '发布';

  @override
  String get workerTabTaskFeed => '任務動態';

  @override
  String get feedNavLabel => '動態';

  @override
  String get myJobs => '我的工作';

  @override
  String get workerFeed => '可用工作';

  @override
  String get createJob => '建立工作';

  @override
  String get postJob => '發布工作';

  @override
  String get editJob => '編輯工作';

  @override
  String get deleteJob => '刪除工作';

  @override
  String get deleteJobConfirm => '確定要刪除這份工作嗎？';

  @override
  String get jobTitle => '標題';

  @override
  String get jobDescription => '描述';

  @override
  String get jobCategory => '類別';

  @override
  String get jobBudget => '預算';

  @override
  String get jobLocation => '位置';

  @override
  String get jobDueDate => '截止日期';

  @override
  String get jobSkills => '所需技能';

  @override
  String get jobUrgency => '緊急程度';

  @override
  String get jobPaymentMode => '付款方式';

  @override
  String get urgencyNormal => '普通';

  @override
  String get urgencyMedium => '中等';

  @override
  String get urgencyUrgent => '緊急';

  @override
  String get urgencyAsap => '尽快';

  @override
  String get paymentOffline => '線下';

  @override
  String get paymentEscrow => '擔保';

  @override
  String get paymentMethod => '支付方式';

  @override
  String get payInCash => '现金支付';

  @override
  String get secureEscrow => '安全托管';

  @override
  String get filterAll => '全部';

  @override
  String get filterOpen => '開放';

  @override
  String get filterActive => '活跃';

  @override
  String get filterInProgress => '進行中';

  @override
  String get filterCompleted => '已完成';

  @override
  String get filterCancelled => '已取消';

  @override
  String get filterExpired => '已過期';

  @override
  String get filterNearby => '附近';

  @override
  String get filterAllMine => '我的全部';

  @override
  String get filterBidPlaced => '已投标';

  @override
  String get filterAccepted => '已接受';

  @override
  String get noTasksPostedYet => '未發布任務';

  @override
  String get noOpenTasks => '无开放任务';

  @override
  String get noActiveTasks => '無活躍任務';

  @override
  String get noTasksInProgress => '无进行中的任务';

  @override
  String get noCompletedTasks => '無已完成的任務';

  @override
  String get noCancelledTasks => '无已取消的任务';

  @override
  String get noExpiredTasks => '无已过期的任务';

  @override
  String get unableToLoadTasks => '載入任務失敗';

  @override
  String get noNearbyJobs => '附近無工作';

  @override
  String get noJobsYetBid => '暫無工作 — 去投標';

  @override
  String get noPendingBids => '无待定投标';

  @override
  String get noAcceptedJobs => '無已接受的工作';

  @override
  String get noJobsInProgress => '无进行中的工作';

  @override
  String get noCompletedJobsYet => '無已完成的工作';

  @override
  String get noCancelledJobs => '无已取消的工作';

  @override
  String get noExpiredJobs => '无已过期的工作';

  @override
  String get pullDownToRefreshCheck => '下拉查看新任務';

  @override
  String get unableToLoadJobs => '載入工作失敗';

  @override
  String get postNewTask => '新任務';

  @override
  String get postTaskSubtitle => '新增清晰細節以取得準確報價';

  @override
  String get taskTitleLabel => '任务标题';

  @override
  String get savingLocation => '儲存位置';

  @override
  String get tapToSelectLocation => '點擊選擇位置';

  @override
  String get postTaskButton => '發布任務';

  @override
  String get addSkillWarning => '請至少新增一項必要技能';

  @override
  String get enterValidBudget => '輸入有效預算';

  @override
  String get setJobLocationWarning => '請設定任務位置';

  @override
  String get jobPostedSuccess => '任務發布成功';

  @override
  String get failedToPostJob => '發布失敗';

  @override
  String get failedToSaveLocation => '儲存位置失敗';

  @override
  String get unableToLoadJobWorkflow => '載入工作流程失敗';

  @override
  String get unknownError => '未知錯誤';

  @override
  String get statusOpenForBids => '接受競標';

  @override
  String get statusInProgress => '進行中';

  @override
  String get statusCompleted => '已完成';

  @override
  String get statusCancelled => '已取消';

  @override
  String get statusPendingStart => '等待開始';

  @override
  String get statusPendingRelease => '等待釋放';

  @override
  String get bids => '競標';

  @override
  String get noBids => '暫無競標';

  @override
  String get placeBid => '提交競標';

  @override
  String get bidAmount => '競標金額';

  @override
  String get bidNotes => '備註（可選）';

  @override
  String get yourBid => '您的競標';

  @override
  String get acceptBid => '接受競標';

  @override
  String get rejectBid => '拒絕競標';

  @override
  String get bidAccepted => '競標已接受';

  @override
  String get bidRejected => '競標已拒絕';

  @override
  String get bidPending => '待定';

  @override
  String get offersSection => '报价';

  @override
  String get noOffersReceivedYet => '未收到報價';

  @override
  String get offerAccepted => '報價已接受';

  @override
  String get offerRejected => '报价已拒绝';

  @override
  String get offerPending => '报价待定';

  @override
  String workerNumber(int id) {
    return '工人 #$id';
  }

  @override
  String get acceptThisOffer => '接受此報價';

  @override
  String get messageWorker => '給工人傳訊息';

  @override
  String get offerAcceptedSnack => '報價已接受！';

  @override
  String get yourOffer => '您的报价';

  @override
  String get bidStatusSelected => '已选择';

  @override
  String get bidStatusRejected => '已拒绝';

  @override
  String get bidStatusPending => '待定';

  @override
  String get placeYourOffer => '提交報價';

  @override
  String get yourOfferAmount => '报价金额';

  @override
  String get messageToClientOptional => '給客戶的訊息（選填）';

  @override
  String get addPartnerOptional => '新增夥伴（選填）';

  @override
  String get partnerNameLabel => '伙伴姓名';

  @override
  String get partnerFeeLabel => '伙伴费用';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return '伙伴费用：$amount';
  }

  @override
  String get submitOffer => '提交报价';

  @override
  String get enterValidOfferAmount => '輸入有效金額';

  @override
  String get offerSubmittedSuccess => '報價已提交';

  @override
  String get clientSelectedYourOffer => '客戶選擇了你的報價';

  @override
  String get handshakeHint => '双方须共享验证码才能开始';

  @override
  String get handshakeAccepted => '握手已接受';

  @override
  String get handshakeDeclined => '握手已拒绝';

  @override
  String get acceptJob => '接受工作';

  @override
  String get decline => '拒絕';

  @override
  String get startCode => '開始代碼';

  @override
  String get releaseCode => '釋放代碼';

  @override
  String get generateCodes => '產生代碼';

  @override
  String get verifyCode => '驗證代碼';

  @override
  String get enterCode => '輸入代碼';

  @override
  String get generateStartCode => '產生啟動碼';

  @override
  String get startCodeCopied => '启动码已复制';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return '將$amount存入託管';
  }

  @override
  String get releaseCodeCopied => '释放码已复制';

  @override
  String get releaseCodeHint => '输入释放码';

  @override
  String get regenerateCode => '重新產生';

  @override
  String get generateReleaseCode => '產生釋放碼';

  @override
  String get taskCodesGenerated => '任務碼已產生';

  @override
  String get newReleaseCodeGenerated => '新释放码已生成';

  @override
  String get readyToBegin => '准备开始';

  @override
  String get startCodeHint => '输入启动码';

  @override
  String get verifyAndStartWork => '驗證並開始';

  @override
  String get startCodeVerified => '启动码已验证';

  @override
  String get enterStartCodeFirst => '请先输入启动码';

  @override
  String get workInProgress => '工作進行中';

  @override
  String get releaseCodePrompt => '輸入釋放碼以釋放付款';

  @override
  String get releaseCodeHelper => '工作完成後將此碼給工人';

  @override
  String get confirmWorkCompleted => '確認工作完成';

  @override
  String get workConfirmedPaymentReleased => '工作已確認 — 付款已釋放！';

  @override
  String get enterReleaseCodeWarning => '输入释放码';

  @override
  String get escrow => '擔保';

  @override
  String get lockEscrow => '鎖定擔保';

  @override
  String get releaseEscrow => '釋放付款';

  @override
  String get paymentLocked => '付款已鎖定';

  @override
  String get paymentReleased => '付款已釋放';

  @override
  String get paymentSafelyReserved => '付款已安全保留';

  @override
  String get cancelTask => '取消任務';

  @override
  String get taskCancelled => '任務已取消';

  @override
  String get deleteTask => '刪除任務';

  @override
  String get deleteTaskTitle => '刪除任務？';

  @override
  String get deleteTaskConfirm => '刪除此任務？';

  @override
  String get taskDeleted => '任務已刪除';

  @override
  String get typeFirstMessage => '輸入第一則訊息';

  @override
  String get send => '发送';

  @override
  String get failedToSendMessage => '傳送訊息失敗';

  @override
  String get conversations => '訊息';

  @override
  String get noMessagesYet => '暫無訊息';

  @override
  String get noMessagesSubtitle => '當您開始就任務進行聊天時，對話將顯示在這裡。';

  @override
  String get startConversation => '開始對話！';

  @override
  String get typeMessage => '輸入訊息...';

  @override
  String get typing => '正在輸入...';

  @override
  String get newMessages => '新訊息';

  @override
  String get now => '剛才';

  @override
  String minutesAgo(int count) {
    return '$count分鐘前';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count位工人',
      one: '1位工人',
    );
    return '$_temp0';
  }

  @override
  String get chatToday => '今天';

  @override
  String get chatYesterday => '昨天';

  @override
  String chatYouPrefix(String message) {
    return '你：$message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return '回复：$jobTitle';
  }

  @override
  String get noConversationsYet => '無對話';

  @override
  String get loadingConversations => '載入對話中...';

  @override
  String get loadingMessages => '載入訊息中...';

  @override
  String get profile => '個人資料';

  @override
  String get editProfile => '編輯資料';

  @override
  String get fullName => '全名';

  @override
  String get phone => '電話號碼';

  @override
  String get bio => '簡介';

  @override
  String get skills => '技能';

  @override
  String get saveChanges => '儲存變更';

  @override
  String get logout => '登出';

  @override
  String get logoutConfirm => '確定要登出嗎？';

  @override
  String get myProfile => '我的資料';

  @override
  String get unknown => '未知';

  @override
  String get experienceLabel => '经验';

  @override
  String get statusLabel => '状态';

  @override
  String get notSet => '未設定';

  @override
  String get onDuty => '在线';

  @override
  String get offDuty => '离线';

  @override
  String yearsCount(int count) {
    return '$count年';
  }

  @override
  String get themeAndColors => '主题与颜色';

  @override
  String get aiModelLabel => 'AI模型';

  @override
  String get availableForWork => '可接受工作';

  @override
  String get visibleToClients => '對客戶可見';

  @override
  String get currentlyOffDuty => '目前離線';

  @override
  String get myReviews => '我的評價';

  @override
  String get deleteAccount => '刪除帳戶';

  @override
  String get deleteAccountConfirm => '確定嗎？此操作不可撤銷。';

  @override
  String get couldNotDeleteAccount => '無法刪除帳戶';

  @override
  String get profilePhotoUpdated => '頭像已更新';

  @override
  String get profileUpdated => '資料已更新';

  @override
  String get nameLabel => '姓名';

  @override
  String get profileImageUrl => '头像URL';

  @override
  String get yearsOfExperience => '工作年限';

  @override
  String get certificationsLabel => '證書';

  @override
  String get payoutAccountLabel => '收款账户';

  @override
  String get onDutySubtitle => '您對新任務可見';

  @override
  String get loadingProfile => '載入資料';

  @override
  String get availabilityLabel => '可用性';

  @override
  String get memberLabel => '会员';

  @override
  String get available => '可用';

  @override
  String get unavailable => '不可用';

  @override
  String get viewAllReviews => '查看所有評價';

  @override
  String get settings => '設定';

  @override
  String get appearance => '外觀';

  @override
  String get language => '語言';

  @override
  String get darkMode => '深色模式';

  @override
  String get lightMode => '淺色模式';

  @override
  String get systemMode => '系統';

  @override
  String get accentColour => '強調色';

  @override
  String get customColour => '自訂';

  @override
  String get preview => '預覽';

  @override
  String get previewTitle => '您的配色看起來很棒！';

  @override
  String get previewSubtitle => '這是您的應用程式的樣子。';

  @override
  String get primary => '主要';

  @override
  String get secondary => '次要';

  @override
  String get modeLabel => '模式';

  @override
  String get pickAColour => '選擇顏色';

  @override
  String get systemDefault => '系统默认';

  @override
  String get darkModeSubtitle => '選擇系統、淺色或深色模式';

  @override
  String get reviews => '評價';

  @override
  String get leaveReview => '寫評價';

  @override
  String get noReviews => '暫無評價';

  @override
  String get rating => '評分';

  @override
  String get reviewComment => '評論';

  @override
  String get submitReview => '提交評價';

  @override
  String howWasWorker(String name) {
    return '$name表现如何？';
  }

  @override
  String get feedbackHelps => '你的回饋很有幫助';

  @override
  String get thanksForReview => '感謝您的評價';

  @override
  String get shareExperienceHint => '分享您的體驗';

  @override
  String get ratingExcellent => '优秀';

  @override
  String get ratingGreat => '很好';

  @override
  String get ratingGood => '好';

  @override
  String get ratingFair => '一般';

  @override
  String get ratingPoor => '差';

  @override
  String get tapToRate => '點擊評分';

  @override
  String workerReviewsTitle(String name) {
    return '$name的評價';
  }

  @override
  String get loadingReviews => '載入評價';

  @override
  String get noReviewsSubtitle => '暫無評價';

  @override
  String get allReviews => '所有評價';

  @override
  String reviewCount(int count) {
    return '$count則評價';
  }

  @override
  String get anonymous => '匿名';

  @override
  String get loading => '載入中...';

  @override
  String get error => '發生錯誤';

  @override
  String get retry => '重試';

  @override
  String get tryAgain => '重试';

  @override
  String get cancel => '取消';

  @override
  String get confirm => '確認';

  @override
  String get delete => '刪除';

  @override
  String get save => '儲存';

  @override
  String get edit => '編輯';

  @override
  String get close => '關閉';

  @override
  String get search => '搜尋';

  @override
  String get noResults => '未找到結果';

  @override
  String get pullToRefresh => '下拉重新整理';

  @override
  String get pullDownToRefresh => '下拉重新整理';

  @override
  String get yes => '是';

  @override
  String get required => '必填';

  @override
  String get stop => '停止';

  @override
  String get clear => '清除';

  @override
  String get aiSetup => 'AI設定';

  @override
  String get aiAnalysis => 'AI分析';

  @override
  String get unlockAi => '解鎖AI分析';

  @override
  String get aiTagline => '裝置端  ·  隱私  ·  免費';

  @override
  String get deviceCheck => '裝置檢查';

  @override
  String get chooseModel => '選擇您的模型';

  @override
  String get chooseModelSubtitle => '下載一個或多個模型。您可以稍後切換。';

  @override
  String get initializingAi => '正在初始化AI執行環境…';

  @override
  String get modelStorage => '模型儲存';

  @override
  String get deviceIncompatible => '裝置端AI需要支援GPU的實體裝置。模擬器和仿真器不相容。';

  @override
  String get enhanceDescription => '增強';

  @override
  String get bidInsights => '競標分析';

  @override
  String get whyThisJob => '為什麼選這個？';

  @override
  String get suggestPrice => '建議價格';

  @override
  String get analyzing => '分析中…';

  @override
  String get aiCapabilities => 'AI功能';

  @override
  String get onDeviceAi => '设备端AI';

  @override
  String get aiTaglineSetup => '私密 · 离线 · 免费';

  @override
  String get aiSetupDescription => '取得任務和報價的智慧建議';

  @override
  String get physicalDevice => '物理设备';

  @override
  String get emulatorDetected => '偵測到模擬器';

  @override
  String get ram => '内存';

  @override
  String get sufficient => '足够';

  @override
  String get freeStorage => '可用儲存空間';

  @override
  String mbFree(int mb) {
    return '$mb MB可用';
  }

  @override
  String get aiRequiresPhysicalDevice => 'AI功能需要實體裝置。';

  @override
  String get multilingual => '多语言';

  @override
  String downloadingProgress(String percent) {
    return '下載中 $percent%';
  }

  @override
  String get loadingModel => '載入模型';

  @override
  String get retryDownload => '重試下載';

  @override
  String get activeAndReady => '活躍且就緒';

  @override
  String get remove => '移除';

  @override
  String get enableAi => '啟用AI';

  @override
  String get downloadAiModel => '下載AI模型';

  @override
  String get deviceNotSupported => '裝置不支援';

  @override
  String get downloadBackgroundNote => '背景下載中，請勿關閉應用程式。';

  @override
  String get removeAiModelTitle => '移除AI模型？';

  @override
  String get removeAiModelConfirm => '移除AI模型？將釋放MB。';

  @override
  String get analyzeWithAi => 'AI分析';

  @override
  String get aiAssistantAvailable => 'AI助手可用';

  @override
  String get aiSetupPrompt => '設定裝置上的AI模型以取得智慧建議。';

  @override
  String get setup => '设置';

  @override
  String get adminDashboard => '管理面板';

  @override
  String get failedToLoadDashboard => '載入面板失敗';

  @override
  String get platformOverview => '平台概览';

  @override
  String get liveStatistics => '实时统计';

  @override
  String get usersSection => '使用者';

  @override
  String get adminTabClients => '客户';

  @override
  String get adminTabWorkers => '工人';

  @override
  String get adminTabAccount => '帳戶';

  @override
  String get jobsSection => '工作';

  @override
  String get activeLabel => '活跃';

  @override
  String get todaySection => '今天';

  @override
  String get createdLabel => '已建立';

  @override
  String get completedLabel => '已完成';

  @override
  String deleteUserTitle(String role) {
    return '刪除$role？';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return '刪除$name？';
  }

  @override
  String get userDeletedSuccess => '使用者已刪除';

  @override
  String get unableToLoadUsers => '載入使用者失敗';

  @override
  String get noClientsFound => '未找到客户';

  @override
  String get noWorkersFound => '未找到工人';

  @override
  String get deleteUserTooltip => '刪除使用者';

  @override
  String get adminSession => '管理員工作階段';

  @override
  String get adminManageUsersHint => '從客戶和工人標籤管理使用者。';

  @override
  String distanceKm(int radius) {
    return '$radius 公里';
  }

  @override
  String get youreOffline => '您處於離線狀態';

  @override
  String get offlineHint => '您處於離線狀態';

  @override
  String get yourSkills => '您的技能';

  @override
  String get skillsSubtitle => '新增您的技能和專長';

  @override
  String get addSkillLabel => '新增技能';

  @override
  String get typeToSearchSkills => '搜尋技能';

  @override
  String savedSkillsCount(int count) {
    return '已儲存$count項技能';
  }

  @override
  String get noSkillsAdded => '未新增技能';

  @override
  String get unableToLoadTaskDetails => '載入詳情失敗';

  @override
  String get detailDistance => '距離';

  @override
  String get chooseLocation => '選擇位置';

  @override
  String get savedTab => '已儲存';

  @override
  String get pinOnMapTab => '在地圖上標記';

  @override
  String get locationDeniedPermanently => '位置權限被永久拒絕';

  @override
  String get couldNotGetLocation => '無法取得位置';

  @override
  String get searchPlaces => '搜尋地點';

  @override
  String get switchToSatellite => '卫星地图';

  @override
  String get switchToRoadMap => '道路地图';

  @override
  String get goToMyLocation => '到我的位置';

  @override
  String get confirmLocation => '確認位置';

  @override
  String get useWithoutSaving => 'Use without saving';

  @override
  String get saveAndUse => 'Save & use';

  @override
  String get useMyCurrentLocation => 'Use my current location';

  @override
  String get detectingLocation => 'Detecting location…';

  @override
  String get saveAddress => '儲存地址';

  @override
  String get saveAddressSubtitle => '為將來的任務儲存';

  @override
  String get labelField => '标签';

  @override
  String get labelHome => '家';

  @override
  String get labelWork => '工作';

  @override
  String get labelOther => '其他';

  @override
  String get recipientName => '收件人姓名';

  @override
  String get recipientNameHint => '輸入姓名';

  @override
  String get recipientPhone => '收件人电话';

  @override
  String get recipientPhoneHint => '輸入電話';

  @override
  String get pickFromContacts => '從聯絡人選擇';

  @override
  String get contactsAccessDenied => '聯絡人存取被拒絕';

  @override
  String get openSettings => '開啟設定';

  @override
  String get couldNotOpenContacts => '無法開啟聯絡人';

  @override
  String get areaNeighbourhood => '區域/社區';

  @override
  String get areaHint => '例如：信義區、大安區';

  @override
  String get cityHint => '例如：台北';

  @override
  String get postalCodeRequired => '郵遞區號必填';

  @override
  String get postalCodeHint => '例如：100';

  @override
  String get countryCodeRequired => '國碼必填';

  @override
  String get countryCodeHint => '+86';

  @override
  String get requiredSkillsLabel => '必要技能';

  @override
  String get skillHintText => '輸入技能，用逗號分隔';

  @override
  String get skillHelperEmpty => '尚未新增技能';

  @override
  String skillsAddedCount(int count) {
    return '已新增$count項技能';
  }

  @override
  String get languagePicker => '選擇語言';

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
  String get accentColorBlue => '蓝色';

  @override
  String get accentColorYellow => '黄色';

  @override
  String get accentColorGreen => '绿色';

  @override
  String get accentColorPink => '粉红';

  @override
  String get accentColorRed => '红色';

  @override
  String get accentColorPurple => '紫色';

  @override
  String get accentColorOrange => '橙色';

  @override
  String get accentColorTeal => '青色';

  @override
  String get accentColorCustom => '自訂';

  @override
  String get paymentStatusPending => '待付款';

  @override
  String get paymentStatusLocked => '金額已安全保留';

  @override
  String get paymentStatusReleased => '付款已釋放';

  @override
  String get paymentStatusOffline => '完成後直接支付';

  @override
  String paymentStatusGeneric(String status) {
    return '付款状态：$status';
  }

  @override
  String get jobStatusOpenForOffers => '開放報價';

  @override
  String get jobStatusOfferAccepted => '報價已接受';

  @override
  String get jobStatusReadyToStart => '準備開始';

  @override
  String get jobStatusInProgress => '進行中';

  @override
  String get jobStatusPendingPayment => '待付款';

  @override
  String get jobStatusPaymentReleased => '付款已釋放';

  @override
  String get jobStatusTaskCompleted => '任務完成';

  @override
  String get jobStatusCancelled => '已取消';

  @override
  String get detailBudgetLabel => '預算';

  @override
  String get detailLocationLabel => '位置';

  @override
  String get detailSkillsLabel => '技能';

  @override
  String get detailJobIdLabel => '工作ID';

  @override
  String get tooltipCopy => '复制';

  @override
  String get tooltipDeleteAddress => '刪除地址';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return '從已儲存的地址中刪除\"$addressLabel\"？';
  }

  @override
  String get errorNotAuthenticated => '未驗證。請重新登入。';

  @override
  String get errorCouldNotOpenImagePicker => '无法打开图片选择器。';

  @override
  String get errorCouldNotReadImage => '无法读取图片。';

  @override
  String get errorImageTooLarge => '圖片須小於5MB。';

  @override
  String get errorUploadFailed => '上傳失敗。請重試。';

  @override
  String get errorNameRequired => '姓名必填';

  @override
  String get errorRatingRequired => '請選擇評分';

  @override
  String get errorNotLoggedIn => '請先登入';

  @override
  String get errorAdminProfileUpdateNotSupported => '不支持管理员资料更新';

  @override
  String get errorAdminDeletionDisabled => '应用内禁止删除管理员';

  @override
  String get errorConnectionTimeout => '連接逾時。請重試。';

  @override
  String get errorConnectionError => '連接伺服器失敗。';

  @override
  String get errorRequestCancelled => '请求已取消。';

  @override
  String get errorBadRequest => '無效請求。請檢查輸入。';

  @override
  String get errorSessionExpired => '工作階段已過期。請重新登入。';

  @override
  String get errorPermissionDenied => '沒有權限。';

  @override
  String get errorResourceNotFound => '找不到資源。';

  @override
  String get errorConflict => '冲突：无法完成操作。';

  @override
  String get errorFileTooLarge => '檔案過大。最大5MB。';

  @override
  String get errorValidationError => '驗證錯誤。請檢查輸入。';

  @override
  String get errorTooManyRequests => '請求過多。請稍候。';

  @override
  String get errorServerError => '伺服器錯誤。請稍後重試。';

  @override
  String errorRequestFailed(String statusCode) {
    return '請求失敗：狀態 $statusCode';
  }

  @override
  String get errorNetworkFailed => '網路錯誤。';

  @override
  String get errorNetworkRequestFailed => '網路錯誤';

  @override
  String get errorMalformedSkillResponse => '技能响应格式错误';

  @override
  String get errorMalformedResponse => '响应格式错误';

  @override
  String get errorMalformedAdminResponse => '管理员响应格式错误';

  @override
  String get errorAdminAccessRequired => '需要管理員權限';

  @override
  String get errorDescriptionUnavailable => '描述不可用';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return '僅$roleLabel可執行此操作';
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
