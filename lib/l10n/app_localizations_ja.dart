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
  String get welcomeBack => 'おかえりなさい';

  @override
  String get loginSubtitle => 'AroundUアカウントにログイン';

  @override
  String get noAccountYet => 'アカウントがない？';

  @override
  String get createOne => '作成';

  @override
  String get emailRequired => 'メールアドレス必須';

  @override
  String get enterValidEmail => '有効なメールを入力';

  @override
  String get passwordRequired => 'パスワード必須';

  @override
  String get minimumSixCharacters => '6文字以上';

  @override
  String get unableToLogin => 'ログインエラー';

  @override
  String fieldRequired(String field) {
    return '$fieldは必須です';
  }

  @override
  String get enterValidPhone => '有効な電話番号を入力';

  @override
  String get unableToRegister => '登録エラー';

  @override
  String get registrationSuccess => '登録成功';

  @override
  String get registerSubtitle => '提供者またはワーカーとして登録';

  @override
  String get roleLabel => '役割';

  @override
  String get roleJobProvider => 'タスク提供者';

  @override
  String get roleJobWorker => 'ワーカー';

  @override
  String get countryLabel => '国';

  @override
  String get currencyLabel => '通貨';

  @override
  String get cityLabel => '都市';

  @override
  String get postalCodeLabel => '郵便番号';

  @override
  String get areaOptionalLabel => 'エリア（任意）';

  @override
  String get fullAddressOptionalLabel => '詳細住所（任意）';

  @override
  String get alreadyRegistered => '登録済みですか？';

  @override
  String get logInLink => 'ログイン';

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
  String get newHereCreateAccount => '初めてですか？アカウント作成';

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
  String get roleSelectionSubtitle => 'AroundUをどう使いますか？';

  @override
  String signedInAs(String email) {
    return '$emailとしてログイン中';
  }

  @override
  String get roleProviderDesc => 'タスクを投稿してワーカーを見つける';

  @override
  String get roleWorkerDescAlt => 'タスクを見つけてスキルで稼ぐ';

  @override
  String get homeTab => 'ホーム';

  @override
  String get jobsTab => '仕事';

  @override
  String get chatTab => 'チャット';

  @override
  String get profileTab => 'プロフィール';

  @override
  String get providerTabMyTasks => 'マイタスク';

  @override
  String get providerTabPostTask => 'タスクを投稿';

  @override
  String get tasksNavLabel => 'タスク';

  @override
  String get postNavLabel => '投稿';

  @override
  String get workerTabTaskFeed => 'タスクフィード';

  @override
  String get feedNavLabel => 'フィード';

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
  String get urgencyMedium => '中程度';

  @override
  String get urgencyUrgent => '緊急';

  @override
  String get urgencyAsap => '至急';

  @override
  String get paymentOffline => 'オフライン';

  @override
  String get paymentEscrow => 'エスクロー';

  @override
  String get paymentMethod => '支払い方法';

  @override
  String get payInCash => '現金で支払い';

  @override
  String get secureEscrow => '安全なエスクロー';

  @override
  String get filterAll => 'すべて';

  @override
  String get filterOpen => 'オープン';

  @override
  String get filterActive => 'アクティブ';

  @override
  String get filterInProgress => '進行中';

  @override
  String get filterCompleted => '完了';

  @override
  String get filterCancelled => 'キャンセル';

  @override
  String get filterExpired => '期限切れ';

  @override
  String get filterNearby => '近く';

  @override
  String get filterAllMine => 'すべて自分の';

  @override
  String get filterBidPlaced => '入札済み';

  @override
  String get filterAccepted => '承認済み';

  @override
  String get noTasksPostedYet => '投稿されたタスクなし';

  @override
  String get noOpenTasks => 'オープンなタスクなし';

  @override
  String get noActiveTasks => 'アクティブなタスクなし';

  @override
  String get noTasksInProgress => '進行中のタスクなし';

  @override
  String get noCompletedTasks => '完了したタスクなし';

  @override
  String get noCancelledTasks => 'キャンセルされたタスクなし';

  @override
  String get noExpiredTasks => '期限切れのタスクなし';

  @override
  String get unableToLoadTasks => 'タスク読込エラー';

  @override
  String get noNearbyJobs => '近くの仕事なし';

  @override
  String get noJobsYetBid => '仕事なし — オファーしましょう';

  @override
  String get noPendingBids => '保留中の入札なし';

  @override
  String get noAcceptedJobs => '承認済みの仕事なし';

  @override
  String get noJobsInProgress => '進行中の仕事なし';

  @override
  String get noCompletedJobsYet => '完了した仕事なし';

  @override
  String get noCancelledJobs => 'キャンセルされた仕事なし';

  @override
  String get noExpiredJobs => '期限切れの仕事なし';

  @override
  String get pullDownToRefreshCheck => '下に引いて新しいタスクを確認';

  @override
  String get unableToLoadJobs => '仕事の読込エラー';

  @override
  String get postNewTask => '新規タスク';

  @override
  String get postTaskSubtitle => '正確なオファーのために明確な詳細を追加';

  @override
  String get taskTitleLabel => 'タスクタイトル';

  @override
  String get savingLocation => '場所を保存中';

  @override
  String get tapToSelectLocation => 'タップして場所を選択';

  @override
  String get postTaskButton => 'タスクを投稿';

  @override
  String get addSkillWarning => '必要なスキルを少なくとも1つ追加してください';

  @override
  String get enterValidBudget => '有効な予算を入力';

  @override
  String get setJobLocationWarning => 'タスクの場所を設定';

  @override
  String get jobPostedSuccess => 'タスク投稿完了';

  @override
  String get failedToPostJob => '投稿エラー';

  @override
  String get failedToSaveLocation => '保存エラー';

  @override
  String get unableToLoadJobWorkflow => 'ワークフロー読込エラー';

  @override
  String get unknownError => '不明なエラー';

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
  String get offersSection => 'オファー';

  @override
  String get noOffersReceivedYet => 'オファー受信なし';

  @override
  String get offerAccepted => 'オファー承認';

  @override
  String get offerRejected => 'オファー却下';

  @override
  String get offerPending => 'オファー保留中';

  @override
  String workerNumber(int id) {
    return 'ワーカー #$id';
  }

  @override
  String get acceptThisOffer => 'このオファーを受ける';

  @override
  String get messageWorker => 'ワーカーにメッセージ';

  @override
  String get offerAcceptedSnack => 'オファー承認！';

  @override
  String get yourOffer => 'あなたのオファー';

  @override
  String get bidStatusSelected => '選択済み';

  @override
  String get bidStatusRejected => '却下';

  @override
  String get bidStatusPending => '保留中';

  @override
  String get placeYourOffer => 'オファーする';

  @override
  String get yourOfferAmount => 'オファー金額';

  @override
  String get messageToClientOptional => 'クライアントへのメッセージ（任意）';

  @override
  String get addPartnerOptional => 'パートナーを追加（任意）';

  @override
  String get partnerNameLabel => 'パートナー名';

  @override
  String get partnerFeeLabel => 'パートナー手数料';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return 'パートナー手数料: $amount';
  }

  @override
  String get submitOffer => 'オファーを送信';

  @override
  String get enterValidOfferAmount => '有効な金額を入力';

  @override
  String get offerSubmittedSuccess => 'オファー送信完了';

  @override
  String get clientSelectedYourOffer => 'クライアントがあなたのオファーを選びました';

  @override
  String get handshakeHint => '両者がコードを共有して開始します';

  @override
  String get handshakeAccepted => 'ハンドシェイク承認';

  @override
  String get handshakeDeclined => 'ハンドシェイク拒否';

  @override
  String get acceptJob => '仕事を受ける';

  @override
  String get decline => '辞退';

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
  String get generateStartCode => 'スタートコード生成';

  @override
  String get startCodeCopied => 'スタートコードコピー済み';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return '$amountをエスクローに確保';
  }

  @override
  String get releaseCodeCopied => 'リリースコードコピー済み';

  @override
  String get releaseCodeHint => 'リリースコードを入力';

  @override
  String get regenerateCode => 'コード再生成';

  @override
  String get generateReleaseCode => 'リリースコード生成';

  @override
  String get taskCodesGenerated => 'タスクコード生成済み';

  @override
  String get newReleaseCodeGenerated => '新しいリリースコード生成';

  @override
  String get readyToBegin => '開始準備完了';

  @override
  String get startCodeHint => 'スタートコードを入力';

  @override
  String get verifyAndStartWork => '確認して開始';

  @override
  String get startCodeVerified => 'スタートコード確認済み';

  @override
  String get enterStartCodeFirst => '先にスタートコードを入力';

  @override
  String get workInProgress => '作業中';

  @override
  String get releaseCodePrompt => '支払いを解放するコードを入力';

  @override
  String get releaseCodeHelper => '作業完了時にこのコードをワーカーに渡してください';

  @override
  String get confirmWorkCompleted => '作業完了を確認';

  @override
  String get workConfirmedPaymentReleased => '作業確認 — 支払い完了！';

  @override
  String get enterReleaseCodeWarning => 'リリースコードを入力';

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
  String get paymentSafelyReserved => '支払いが安全に確保されました';

  @override
  String get cancelTask => 'タスクをキャンセル';

  @override
  String get taskCancelled => 'タスクキャンセル';

  @override
  String get deleteTask => 'タスクを削除';

  @override
  String get deleteTaskTitle => 'タスクを削除？';

  @override
  String get deleteTaskConfirm => 'このタスクを削除しますか？';

  @override
  String get taskDeleted => 'タスク削除';

  @override
  String get typeFirstMessage => '最初のメッセージを入力';

  @override
  String get send => '送信';

  @override
  String get failedToSendMessage => '送信エラー';

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
  String get chatToday => '今日';

  @override
  String get chatYesterday => '昨日';

  @override
  String chatYouPrefix(String message) {
    return 'あなた: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'Re: $jobTitle';
  }

  @override
  String get noConversationsYet => '会話なし';

  @override
  String get loadingConversations => '会話を読み込み中...';

  @override
  String get loadingMessages => 'メッセージを読み込み中...';

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
  String get myProfile => 'マイプロフィール';

  @override
  String get unknown => '不明';

  @override
  String get experienceLabel => '経験';

  @override
  String get statusLabel => 'ステータス';

  @override
  String get notSet => '未設定';

  @override
  String get onDuty => 'オン';

  @override
  String get offDuty => 'オフ';

  @override
  String yearsCount(int count) {
    return '$count年';
  }

  @override
  String get themeAndColors => 'テーマと色';

  @override
  String get aiModelLabel => 'AIモデル';

  @override
  String get availableForWork => '仕事可能';

  @override
  String get visibleToClients => 'クライアントに表示されています';

  @override
  String get currentlyOffDuty => '現在オフ';

  @override
  String get myReviews => 'マイレビュー';

  @override
  String get deleteAccount => 'アカウント削除';

  @override
  String get deleteAccountConfirm => '本当ですか？元に戻せません。';

  @override
  String get couldNotDeleteAccount => 'アカウントを削除できませんでした';

  @override
  String get profilePhotoUpdated => 'プロフィール写真更新';

  @override
  String get profileUpdated => 'プロフィール更新';

  @override
  String get nameLabel => '名前';

  @override
  String get profileImageUrl => 'プロフィール画像URL';

  @override
  String get yearsOfExperience => '経験年数';

  @override
  String get certificationsLabel => '資格';

  @override
  String get payoutAccountLabel => '支払い口座';

  @override
  String get onDutySubtitle => '新しいタスクに対して表示されています';

  @override
  String get loadingProfile => 'プロフィール読込中';

  @override
  String get availabilityLabel => '空き状況';

  @override
  String get memberLabel => 'メンバー';

  @override
  String get available => '利用可能';

  @override
  String get unavailable => '利用不可';

  @override
  String get viewAllReviews => '全レビューを見る';

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
  String get modeLabel => 'モード';

  @override
  String get pickAColour => '色を選択';

  @override
  String get systemDefault => 'システムデフォルト';

  @override
  String get darkModeSubtitle => 'システム、ライト、ダークモードから選択';

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
  String howWasWorker(String name) {
    return '$nameはいかがでしたか？';
  }

  @override
  String get feedbackHelps => 'ご意見をお寄せください';

  @override
  String get thanksForReview => 'レビューありがとうございます';

  @override
  String get shareExperienceHint => '体験をシェア';

  @override
  String get ratingExcellent => '素晴らしい';

  @override
  String get ratingGreat => 'とても良い';

  @override
  String get ratingGood => '良い';

  @override
  String get ratingFair => 'まあまあ';

  @override
  String get ratingPoor => '悪い';

  @override
  String get tapToRate => 'タップして評価';

  @override
  String workerReviewsTitle(String name) {
    return '$nameのレビュー';
  }

  @override
  String get loadingReviews => 'レビュー読込中';

  @override
  String get noReviewsSubtitle => 'レビューなし';

  @override
  String get allReviews => 'すべてのレビュー';

  @override
  String reviewCount(int count) {
    return '$count件のレビュー';
  }

  @override
  String get anonymous => '匿名';

  @override
  String get loading => '読み込み中...';

  @override
  String get error => 'エラーが発生しました';

  @override
  String get retry => '再試行';

  @override
  String get tryAgain => '再試行';

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
  String get pullDownToRefresh => '下に引いて更新';

  @override
  String get yes => 'はい';

  @override
  String get required => '必須';

  @override
  String get stop => '停止';

  @override
  String get clear => 'クリア';

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
  String get aiCapabilities => 'AI機能';

  @override
  String get onDeviceAi => 'デバイス上のAI';

  @override
  String get aiTaglineSetup => 'プライベート · オフライン · 無料';

  @override
  String get aiSetupDescription => 'タスクとオファーのスマート提案を受け取る';

  @override
  String get physicalDevice => '実機';

  @override
  String get emulatorDetected => 'エミュレータ検出';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => '十分';

  @override
  String get freeStorage => '空き容量';

  @override
  String mbFree(int mb) {
    return '$mb MB空き';
  }

  @override
  String get aiRequiresPhysicalDevice => 'AI機能には実機が必要です。';

  @override
  String get multilingual => '多言語';

  @override
  String downloadingProgress(String percent) {
    return 'ダウンロード中 $percent%';
  }

  @override
  String get loadingModel => 'モデル読込中';

  @override
  String get retryDownload => 'ダウンロード再試行';

  @override
  String get activeAndReady => 'アクティブ＆準備完了';

  @override
  String get remove => '削除';

  @override
  String get enableAi => 'AIを有効にする';

  @override
  String get downloadAiModel => 'AIモデルをダウンロード';

  @override
  String get deviceNotSupported => 'デバイス非対応';

  @override
  String get downloadBackgroundNote => 'バックグラウンドでダウンロード中。アプリを閉じないでください。';

  @override
  String get removeAiModelTitle => 'AIモデルを削除？';

  @override
  String get removeAiModelConfirm => 'AIモデルを削除？ MBを解放します。';

  @override
  String get analyzeWithAi => 'AIで分析';

  @override
  String get aiAssistantAvailable => 'AIアシスタント利用可能';

  @override
  String get aiSetupPrompt => 'スマート提案のためにデバイス上のAIモデルを設定します。';

  @override
  String get setup => '設定';

  @override
  String get adminDashboard => '管理パネル';

  @override
  String get failedToLoadDashboard => 'ダッシュボード読み込みエラー';

  @override
  String get platformOverview => 'プラットフォーム概要';

  @override
  String get liveStatistics => 'リアルタイム統計';

  @override
  String get usersSection => 'ユーザー';

  @override
  String get adminTabClients => 'クライアント';

  @override
  String get adminTabWorkers => 'ワーカー';

  @override
  String get adminTabAccount => 'アカウント';

  @override
  String get jobsSection => '仕事';

  @override
  String get activeLabel => 'アクティブ';

  @override
  String get todaySection => '今日';

  @override
  String get createdLabel => '作成済み';

  @override
  String get completedLabel => '完了';

  @override
  String deleteUserTitle(String role) {
    return '$roleを削除？';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return '$nameを削除しますか？';
  }

  @override
  String get userDeletedSuccess => 'ユーザー削除完了';

  @override
  String get unableToLoadUsers => 'ユーザー読込エラー';

  @override
  String get noClientsFound => 'クライアントが見つかりません';

  @override
  String get noWorkersFound => 'ワーカーが見つかりません';

  @override
  String get deleteUserTooltip => 'ユーザーを削除';

  @override
  String get adminSession => '管理セッション';

  @override
  String get adminManageUsersHint => 'クライアントとワーカータブからユーザーを管理します。';

  @override
  String distanceKm(int radius) {
    return '$radius km';
  }

  @override
  String get youreOffline => 'オフラインです';

  @override
  String get offlineHint => 'オフラインです';

  @override
  String get yourSkills => 'あなたのスキル';

  @override
  String get skillsSubtitle => 'スキルと専門知識を追加';

  @override
  String get addSkillLabel => 'スキルを追加';

  @override
  String get typeToSearchSkills => 'スキルを検索';

  @override
  String savedSkillsCount(int count) {
    return '$countスキル保存済み';
  }

  @override
  String get noSkillsAdded => 'スキルなし';

  @override
  String get unableToLoadTaskDetails => '詳細読込エラー';

  @override
  String get detailDistance => '距離';

  @override
  String get chooseLocation => '場所を選択';

  @override
  String get savedTab => '保存済み';

  @override
  String get pinOnMapTab => '地図にピン';

  @override
  String get locationDeniedPermanently => '位置情報の権限が永久拒否';

  @override
  String get couldNotGetLocation => '位置を取得できませんでした';

  @override
  String get searchPlaces => '場所を検索';

  @override
  String get switchToSatellite => '衛星地図';

  @override
  String get switchToRoadMap => '道路地図';

  @override
  String get goToMyLocation => '現在地へ';

  @override
  String get confirmLocation => '場所を確認';

  @override
  String get saveAddress => 'アドレスを保存';

  @override
  String get saveAddressSubtitle => '将来のタスクのために保存';

  @override
  String get labelField => 'ラベル';

  @override
  String get labelHome => '自宅';

  @override
  String get labelWork => '職場';

  @override
  String get labelOther => 'その他';

  @override
  String get recipientName => '受取人名';

  @override
  String get recipientNameHint => '名前を入力';

  @override
  String get recipientPhone => '受取人電話';

  @override
  String get recipientPhoneHint => '電話番号を入力';

  @override
  String get pickFromContacts => '連絡先から選択';

  @override
  String get contactsAccessDenied => '連絡先アクセス拒否';

  @override
  String get openSettings => '設定を開く';

  @override
  String get couldNotOpenContacts => '連絡先を開けませんでした';

  @override
  String get areaNeighbourhood => 'エリア / 地区';

  @override
  String get areaHint => '例: 渋谷、新宿';

  @override
  String get cityHint => '例: 東京';

  @override
  String get postalCodeRequired => '郵便番号必須';

  @override
  String get postalCodeHint => '例: 100-0001';

  @override
  String get countryCodeRequired => '国コードが必要';

  @override
  String get countryCodeHint => '+81';

  @override
  String get requiredSkillsLabel => '必要なスキル';

  @override
  String get skillHintText => 'スキルを入力してカンマで区切る';

  @override
  String get skillHelperEmpty => 'スキルがまだ追加されていません';

  @override
  String skillsAddedCount(int count) {
    return '$countスキル追加済み';
  }

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

  @override
  String get accentColorBlue => '青';

  @override
  String get accentColorYellow => '黄';

  @override
  String get accentColorGreen => '緑';

  @override
  String get accentColorPink => 'ピンク';

  @override
  String get accentColorRed => '赤';

  @override
  String get accentColorPurple => '紫';

  @override
  String get accentColorOrange => 'オレンジ';

  @override
  String get accentColorTeal => 'ティール';

  @override
  String get accentColorCustom => 'カスタム';

  @override
  String get paymentStatusPending => '支払い待ち';

  @override
  String get paymentStatusLocked => '金額が安全に確保済み';

  @override
  String get paymentStatusReleased => '支払い完了';

  @override
  String get paymentStatusOffline => '完了時に直接支払い';

  @override
  String paymentStatusGeneric(String status) {
    return '支払い状況: $status';
  }

  @override
  String get jobStatusOpenForOffers => 'オファー受付中';

  @override
  String get jobStatusOfferAccepted => 'オファー承認';

  @override
  String get jobStatusReadyToStart => '開始準備完了';

  @override
  String get jobStatusInProgress => '進行中';

  @override
  String get jobStatusPendingPayment => '支払い待ち';

  @override
  String get jobStatusPaymentReleased => '支払い完了';

  @override
  String get jobStatusTaskCompleted => 'タスク完了';

  @override
  String get jobStatusCancelled => 'キャンセル';

  @override
  String get detailBudgetLabel => '予算';

  @override
  String get detailLocationLabel => '場所';

  @override
  String get detailSkillsLabel => 'スキル';

  @override
  String get detailJobIdLabel => 'ジョブID';

  @override
  String get tooltipCopy => 'コピー';

  @override
  String get tooltipDeleteAddress => 'アドレスを削除';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return '\"$addressLabel\"を保存済みアドレスから削除しますか？';
  }

  @override
  String get errorNotAuthenticated => '未認証。再ログインしてください。';

  @override
  String get errorCouldNotOpenImagePicker => '画像選択を開けませんでした。';

  @override
  String get errorCouldNotReadImage => '画像を読み取れませんでした。';

  @override
  String get errorImageTooLarge => '画像は5MB未満にしてください。';

  @override
  String get errorUploadFailed => 'アップロード失敗。再試行してください。';

  @override
  String get errorNameRequired => '名前は必須です';

  @override
  String get errorRatingRequired => '評価を選択してください';

  @override
  String get errorNotLoggedIn => '先にログインしてください';

  @override
  String get errorAdminProfileUpdateNotSupported => '管理者プロフィール更新非対応';

  @override
  String get errorAdminDeletionDisabled => '管理者削除はアプリで無効';

  @override
  String get errorConnectionTimeout => '接続タイムアウト。再試行してください。';

  @override
  String get errorConnectionError => 'サーバー接続に失敗。';

  @override
  String get errorRequestCancelled => 'リクエストがキャンセルされました。';

  @override
  String get errorBadRequest => '無効なリクエスト。入力を確認してください。';

  @override
  String get errorSessionExpired => 'セッション期限切れ。再ログインしてください。';

  @override
  String get errorPermissionDenied => '権限がありません。';

  @override
  String get errorResourceNotFound => 'リソースが見つかりません。';

  @override
  String get errorConflict => '競合：操作を完了できません。';

  @override
  String get errorFileTooLarge => 'ファイルが大きすぎます。最大5MB。';

  @override
  String get errorValidationError => '検証エラー。入力を確認してください。';

  @override
  String get errorTooManyRequests => 'リクエストが多すぎます。お待ちください。';

  @override
  String get errorServerError => 'サーバーエラー。後で再試行してください。';

  @override
  String errorRequestFailed(String statusCode) {
    return 'リクエスト失敗：ステータス $statusCode';
  }

  @override
  String get errorNetworkFailed => 'ネットワークエラー。';

  @override
  String get errorNetworkRequestFailed => 'ネットワークエラー';

  @override
  String get errorMalformedSkillResponse => '不正なスキルレスポンス';

  @override
  String get errorMalformedResponse => '不正なレスポンス';

  @override
  String get errorMalformedAdminResponse => '不正な管理者レスポンス';

  @override
  String get errorAdminAccessRequired => '管理者アクセスが必要';

  @override
  String get errorDescriptionUnavailable => '説明が利用できません';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return '$roleLabelのみ実行可能です';
  }

  @override
  String get useWithoutSaving => '保存せずに使用';

  @override
  String get saveAndUse => '保存して使用';

  @override
  String get useMyCurrentLocation => '現在地を使用';

  @override
  String get detectingLocation => '位置を検出中…';
}
