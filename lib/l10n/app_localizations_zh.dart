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
  String get homeTab => '首页';

  @override
  String get jobsTab => '工作';

  @override
  String get chatTab => '聊天';

  @override
  String get profileTab => '个人资料';

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
  String get urgencyUrgent => '紧急';

  @override
  String get paymentOffline => '线下';

  @override
  String get paymentEscrow => '担保';

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
  String get loading => '加载中...';

  @override
  String get loadingConversations => '加载对话中...';

  @override
  String get loadingMessages => '加载消息中...';

  @override
  String get error => '出了点问题';

  @override
  String get retry => '重试';

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
  String get homeTab => '首頁';

  @override
  String get jobsTab => '工作';

  @override
  String get chatTab => '聊天';

  @override
  String get profileTab => '個人資料';

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
  String get urgencyUrgent => '緊急';

  @override
  String get paymentOffline => '線下';

  @override
  String get paymentEscrow => '擔保';

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
  String get loading => '載入中...';

  @override
  String get loadingConversations => '載入對話中...';

  @override
  String get loadingMessages => '載入訊息中...';

  @override
  String get error => '發生錯誤';

  @override
  String get retry => '重試';

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
}
