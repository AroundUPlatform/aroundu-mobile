// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => 'ログイン';

  @override
  String get registerTitle => 'アカウント作成';

  @override
  String get emailLabel => 'メール';

  @override
  String get passwordLabel => 'パスワード';

  @override
  String get confirmPasswordLabel => 'パスワード確認';

  @override
  String get forgotPassword => 'パスワードを忘れた場合';

  @override
  String get loginButton => 'ログイン';

  @override
  String get registerButton => '新規登録';

  @override
  String get orContinueWith => 'または以下で続行';

  @override
  String get dontHaveAccount => 'アカウントをお持ちでない方';

  @override
  String get alreadyHaveAccount => 'すでにアカウントをお持ちの方';

  @override
  String get onboardingTitle1 => '周辺のタスクを見つけよう';

  @override
  String get onboardingSubtitle1 => 'ご近所の求人やサービスを見つけましょう。';

  @override
  String get onboardingTitle2 => '入札して仕事を獲得';

  @override
  String get onboardingSubtitle2 => '競争力のある入札を行い、スキルに合った仕事に選ばれましょう。';

  @override
  String get onboardingTitle3 => '安全な決済';

  @override
  String get onboardingSubtitle3 => 'エスクロー対応の決済で公正かつ安全な取引を保証します。';

  @override
  String get getStarted => '始める';

  @override
  String get skip => 'スキップ';

  @override
  String get next => '次へ';

  @override
  String get roleSelectionTitle => '役割を選択';

  @override
  String get roleClient => 'クライアント';

  @override
  String get roleClientDesc => 'タスクを手伝ってほしい';

  @override
  String get roleWorker => 'ワーカー';

  @override
  String get roleWorkerDesc => 'スキルを提供したい';

  @override
  String get continueButton => '続ける';

  @override
  String get homeTab => 'ホーム';

  @override
  String get jobsTab => '仕事';

  @override
  String get chatTab => 'チャット';

  @override
  String get profileTab => 'プロフィール';

  @override
  String get myJobs => '自分の仕事';

  @override
  String get workerFeed => '利用可能な仕事';

  @override
  String get createJob => '仕事を作成';

  @override
  String get postJob => '仕事を投稿';

  @override
  String get editJob => '仕事を編集';

  @override
  String get deleteJob => '仕事を削除';

  @override
  String get deleteJobConfirm => 'この仕事を削除してもよろしいですか？';

  @override
  String get jobTitle => 'タイトル';

  @override
  String get jobDescription => '説明';

  @override
  String get jobCategory => 'カテゴリ';

  @override
  String get jobBudget => '予算';

  @override
  String get jobLocation => '場所';

  @override
  String get jobDueDate => '期限';

  @override
  String get jobSkills => '必要なスキル';

  @override
  String get jobUrgency => '緊急度';

  @override
  String get jobPaymentMode => '支払い方法';

  @override
  String get urgencyNormal => '通常';

  @override
  String get urgencyUrgent => '緊急';

  @override
  String get paymentOffline => 'オフライン';

  @override
  String get paymentEscrow => 'エスクロー';

  @override
  String get statusOpenForBids => '入札受付中';

  @override
  String get statusInProgress => '進行中';

  @override
  String get statusCompleted => '完了';

  @override
  String get statusCancelled => 'キャンセル済み';

  @override
  String get statusPendingStart => '開始待ち';

  @override
  String get statusPendingRelease => '支払い待ち';

  @override
  String get bids => '入札';

  @override
  String get noBids => 'まだ入札がありません';

  @override
  String get placeBid => '入札する';

  @override
  String get bidAmount => '入札額';

  @override
  String get bidNotes => 'メモ（任意）';

  @override
  String get yourBid => 'あなたの入札';

  @override
  String get acceptBid => '入札を受諾';

  @override
  String get rejectBid => '入札を拒否';

  @override
  String get bidAccepted => '入札が受諾されました';

  @override
  String get bidRejected => '入札が拒否されました';

  @override
  String get bidPending => '保留中';

  @override
  String get startCode => '開始コード';

  @override
  String get releaseCode => 'リリースコード';

  @override
  String get generateCodes => 'コードを生成';

  @override
  String get verifyCode => 'コードを確認';

  @override
  String get enterCode => 'コードを入力';

  @override
  String get escrow => 'エスクロー';

  @override
  String get lockEscrow => 'エスクローをロック';

  @override
  String get releaseEscrow => '支払いをリリース';

  @override
  String get paymentLocked => '支払いロック済み';

  @override
  String get paymentReleased => '支払いリリース済み';

  @override
  String get conversations => 'メッセージ';

  @override
  String get noMessagesYet => 'まだメッセージがありません';

  @override
  String get noMessagesSubtitle => 'タスクについてチャットを開始すると、会話がここに表示されます。';

  @override
  String get startConversation => '会話を始めましょう！';

  @override
  String get typeMessage => 'メッセージを入力...';

  @override
  String get typing => '入力中...';

  @override
  String get newMessages => '新着メッセージ';

  @override
  String get now => '今';

  @override
  String minutesAgo(int count) {
    return '$count分前';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count人のワーカー',
      one: '1人のワーカー',
    );
    return '$_temp0';
  }

  @override
  String get profile => 'プロフィール';

  @override
  String get editProfile => 'プロフィール編集';

  @override
  String get fullName => '氏名';

  @override
  String get phone => '電話番号';

  @override
  String get bio => '自己紹介';

  @override
  String get skills => 'スキル';

  @override
  String get saveChanges => '変更を保存';

  @override
  String get logout => 'ログアウト';

  @override
  String get logoutConfirm => 'ログアウトしてもよろしいですか？';

  @override
  String get settings => '設定';

  @override
  String get appearance => '外観';

  @override
  String get language => '言語';

  @override
  String get darkMode => 'ダークモード';

  @override
  String get lightMode => 'ライトモード';

  @override
  String get systemMode => 'システム';

  @override
  String get accentColour => 'アクセントカラー';

  @override
  String get customColour => 'カスタム';

  @override
  String get preview => 'プレビュー';

  @override
  String get previewTitle => '色がきれいに見えます！';

  @override
  String get previewSubtitle => 'アプリはこのように表示されます。';

  @override
  String get primary => 'プライマリ';

  @override
  String get secondary => 'セカンダリ';

  @override
  String get reviews => 'レビュー';

  @override
  String get leaveReview => 'レビューを書く';

  @override
  String get noReviews => 'まだレビューがありません';

  @override
  String get rating => '評価';

  @override
  String get reviewComment => 'コメント';

  @override
  String get submitReview => 'レビューを送信';

  @override
  String get loading => '読み込み中...';

  @override
  String get loadingConversations => '会話を読み込み中...';

  @override
  String get loadingMessages => 'メッセージを読み込み中...';

  @override
  String get error => 'エラーが発生しました';

  @override
  String get retry => '再試行';

  @override
  String get cancel => 'キャンセル';

  @override
  String get confirm => '確認';

  @override
  String get delete => '削除';

  @override
  String get save => '保存';

  @override
  String get edit => '編集';

  @override
  String get close => '閉じる';

  @override
  String get search => '検索';

  @override
  String get noResults => '結果が見つかりません';

  @override
  String get pullToRefresh => '引っ張って更新';

  @override
  String get aiSetup => 'AIセットアップ';

  @override
  String get aiAnalysis => 'AI分析';

  @override
  String get unlockAi => 'AI分析をロック解除';

  @override
  String get aiTagline => 'オンデバイス  ·  プライベート  ·  無料';

  @override
  String get deviceCheck => 'デバイスチェック';

  @override
  String get chooseModel => 'モデルを選択';

  @override
  String get chooseModelSubtitle => '1つ以上のモデルをダウンロード。後で切り替えできます。';

  @override
  String get initializingAi => 'AIランタイムを初期化中…';

  @override
  String get modelStorage => 'モデルストレージ';

  @override
  String get deviceIncompatible =>
      'オンデバイスAIにはGPUサポートのある物理デバイスが必要です。シミュレーターやエミュレーターは非対応です。';

  @override
  String get enhanceDescription => '改善';

  @override
  String get bidInsights => '入札インサイト';

  @override
  String get whyThisJob => 'なぜこれ？';

  @override
  String get suggestPrice => '価格を提案';

  @override
  String get analyzing => '分析中…';

  @override
  String get languagePicker => '言語を選択';

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
