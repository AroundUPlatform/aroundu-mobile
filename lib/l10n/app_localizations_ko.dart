// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'AroundU';

  @override
  String get loginTitle => '로그인';

  @override
  String get registerTitle => '계정 만들기';

  @override
  String get emailLabel => '이메일';

  @override
  String get passwordLabel => '비밀번호';

  @override
  String get confirmPasswordLabel => '비밀번호 확인';

  @override
  String get forgotPassword => '비밀번호를 잊으셨나요?';

  @override
  String get loginButton => '로그인';

  @override
  String get registerButton => '가입하기';

  @override
  String get orContinueWith => '또는 다음으로 계속';

  @override
  String get dontHaveAccount => '계정이 없으신가요?';

  @override
  String get alreadyHaveAccount => '이미 계정이 있으신가요?';

  @override
  String get welcomeBack => '다시 오신 것을 환영합니다';

  @override
  String get loginSubtitle => 'AroundU 계정에 로그인';

  @override
  String get noAccountYet => '계정이 없으신가요?';

  @override
  String get createOne => '생성';

  @override
  String get emailRequired => '이메일 필수';

  @override
  String get enterValidEmail => '유효한 이메일 입력';

  @override
  String get passwordRequired => '비밀번호 필수';

  @override
  String get minimumSixCharacters => '최소 6자';

  @override
  String get unableToLogin => '로그인 실패';

  @override
  String fieldRequired(String field) {
    return '$field은(는) 필수입니다';
  }

  @override
  String get enterValidPhone => '유효한 전화번호 입력';

  @override
  String get unableToRegister => '등록 실패';

  @override
  String get registrationSuccess => '등록 성공';

  @override
  String get registerSubtitle => '제공자 또는 작업자로 등록';

  @override
  String get roleLabel => '역할';

  @override
  String get roleJobProvider => '작업 제공자';

  @override
  String get roleJobWorker => '작업자';

  @override
  String get countryLabel => '국가';

  @override
  String get currencyLabel => '통화';

  @override
  String get cityLabel => '도시';

  @override
  String get postalCodeLabel => '우편번호';

  @override
  String get areaOptionalLabel => '지역 (선택)';

  @override
  String get fullAddressOptionalLabel => '전체 주소 (선택)';

  @override
  String get alreadyRegistered => '이미 등록하셨나요?';

  @override
  String get logInLink => '로그인';

  @override
  String get onboardingTitle1 => '주변의 작업을 찾아보세요';

  @override
  String get onboardingSubtitle1 => '동네의 지역 일자리와 서비스를 발견하세요.';

  @override
  String get onboardingTitle2 => '입찰하고 채용되세요';

  @override
  String get onboardingSubtitle2 => '경쟁력 있는 입찰을 하고 능력에 맞는 작업에 선발되세요.';

  @override
  String get onboardingTitle3 => '안전한 결제';

  @override
  String get onboardingSubtitle3 => '에스크로 지원 결제로 공정하고 안전한 거래를 보장합니다.';

  @override
  String get getStarted => '시작하기';

  @override
  String get skip => '건너뛰기';

  @override
  String get next => '다음';

  @override
  String get newHereCreateAccount => '처음이신가요? 계정 생성';

  @override
  String get roleSelectionTitle => '역할 선택';

  @override
  String get roleClient => '의뢰인';

  @override
  String get roleClientDesc => '작업에 도움이 필요합니다';

  @override
  String get roleWorker => '작업자';

  @override
  String get roleWorkerDesc => '제 능력을 제공하고 싶습니다';

  @override
  String get continueButton => '계속';

  @override
  String get roleSelectionSubtitle => 'AroundU를 어떻게 사용하시겠습니까?';

  @override
  String signedInAs(String email) {
    return '$email(으)로 로그인';
  }

  @override
  String get roleProviderDesc => '작업을 게시하고 자격을 갖춘 작업자를 찾으세요';

  @override
  String get roleWorkerDescAlt => '작업을 찾고 기술로 수익을 올리세요';

  @override
  String get homeTab => '홈';

  @override
  String get jobsTab => '일자리';

  @override
  String get chatTab => '채팅';

  @override
  String get profileTab => '프로필';

  @override
  String get providerTabMyTasks => '내 작업';

  @override
  String get providerTabPostTask => '작업 게시';

  @override
  String get tasksNavLabel => '작업';

  @override
  String get postNavLabel => '게시';

  @override
  String get workerTabTaskFeed => '작업 피드';

  @override
  String get feedNavLabel => '피드';

  @override
  String get myJobs => '내 일자리';

  @override
  String get workerFeed => '가용 일자리';

  @override
  String get createJob => '일자리 만들기';

  @override
  String get postJob => '일자리 게시';

  @override
  String get editJob => '일자리 편집';

  @override
  String get deleteJob => '일자리 삭제';

  @override
  String get deleteJobConfirm => '이 일자리를 삭제하시겠습니까?';

  @override
  String get jobTitle => '제목';

  @override
  String get jobDescription => '설명';

  @override
  String get jobCategory => '카테고리';

  @override
  String get jobBudget => '예산';

  @override
  String get jobLocation => '위치';

  @override
  String get jobDueDate => '마감일';

  @override
  String get jobSkills => '필요한 기술';

  @override
  String get jobUrgency => '긴급도';

  @override
  String get jobPaymentMode => '결제 방식';

  @override
  String get urgencyNormal => '보통';

  @override
  String get urgencyMedium => '보통';

  @override
  String get urgencyUrgent => '긴급';

  @override
  String get urgencyAsap => '가능한 빨리';

  @override
  String get paymentOffline => '오프라인';

  @override
  String get paymentEscrow => '에스크로';

  @override
  String get paymentMethod => '결제 방법';

  @override
  String get payInCash => '현금 결제';

  @override
  String get secureEscrow => '안전한 에스크로';

  @override
  String get filterAll => '전체';

  @override
  String get filterOpen => '열림';

  @override
  String get filterActive => '활성';

  @override
  String get filterInProgress => '진행 중';

  @override
  String get filterCompleted => '완료됨';

  @override
  String get filterCancelled => '취소됨';

  @override
  String get filterExpired => '만료됨';

  @override
  String get filterNearby => '근처';

  @override
  String get filterAllMine => '내 모든';

  @override
  String get filterBidPlaced => '입찰 완료';

  @override
  String get filterAccepted => '수락됨';

  @override
  String get noTasksPostedYet => '게시된 작업 없음';

  @override
  String get noOpenTasks => '열린 작업 없음';

  @override
  String get noActiveTasks => '활성 작업 없음';

  @override
  String get noTasksInProgress => '진행 중인 작업 없음';

  @override
  String get noCompletedTasks => '완료된 작업 없음';

  @override
  String get noCancelledTasks => '취소된 작업 없음';

  @override
  String get noExpiredTasks => '만료된 작업 없음';

  @override
  String get unableToLoadTasks => '작업 로드 실패';

  @override
  String get noNearbyJobs => '근처 작업 없음';

  @override
  String get noJobsYetBid => '작업 없음 — 제안하세요';

  @override
  String get noPendingBids => '대기 중인 입찰 없음';

  @override
  String get noAcceptedJobs => '수락된 작업 없음';

  @override
  String get noJobsInProgress => '진행 중인 작업 없음';

  @override
  String get noCompletedJobsYet => '완료된 작업 없음';

  @override
  String get noCancelledJobs => '취소된 작업 없음';

  @override
  String get noExpiredJobs => '만료된 작업 없음';

  @override
  String get pullDownToRefreshCheck => '아래로 당겨 새 작업 확인';

  @override
  String get unableToLoadJobs => '작업 로드 실패';

  @override
  String get postNewTask => '새 작업';

  @override
  String get postTaskSubtitle => '정확한 제안을 위해 상세 정보를 추가하세요';

  @override
  String get taskTitleLabel => '작업 제목';

  @override
  String get savingLocation => '위치 저장 중';

  @override
  String get tapToSelectLocation => '탭하여 위치 선택';

  @override
  String get postTaskButton => '작업 게시';

  @override
  String get addSkillWarning => '필수 기술을 하나 이상 추가하세요';

  @override
  String get enterValidBudget => '유효한 예산 입력';

  @override
  String get setJobLocationWarning => '작업 위치를 설정하세요';

  @override
  String get jobPostedSuccess => '작업 게시 완료';

  @override
  String get failedToPostJob => '게시 실패';

  @override
  String get failedToSaveLocation => '위치 저장 실패';

  @override
  String get unableToLoadJobWorkflow => '워크플로우 로드 실패';

  @override
  String get unknownError => '알 수 없는 오류';

  @override
  String get statusOpenForBids => '입찰 오픈';

  @override
  String get statusInProgress => '진행 중';

  @override
  String get statusCompleted => '완료';

  @override
  String get statusCancelled => '취소됨';

  @override
  String get statusPendingStart => '시작 대기';

  @override
  String get statusPendingRelease => '지급 대기';

  @override
  String get bids => '입찰';

  @override
  String get noBids => '아직 입찰 없음';

  @override
  String get placeBid => '입찰하기';

  @override
  String get bidAmount => '입찰 금액';

  @override
  String get bidNotes => '메모 (선택)';

  @override
  String get yourBid => '내 입찰';

  @override
  String get acceptBid => '입찰 수락';

  @override
  String get rejectBid => '입찰 거부';

  @override
  String get bidAccepted => '입찰 수락됨';

  @override
  String get bidRejected => '입찰 거부됨';

  @override
  String get bidPending => '대기 중';

  @override
  String get offersSection => '제안';

  @override
  String get noOffersReceivedYet => '받은 제안 없음';

  @override
  String get offerAccepted => '제안 수락됨';

  @override
  String get offerRejected => '제안 거절됨';

  @override
  String get offerPending => '제안 대기 중';

  @override
  String workerNumber(int id) {
    return '작업자 #$id';
  }

  @override
  String get acceptThisOffer => '이 제안 수락';

  @override
  String get messageWorker => '작업자에게 메시지';

  @override
  String get offerAcceptedSnack => '제안 수락됨!';

  @override
  String get yourOffer => '귀하의 제안';

  @override
  String get bidStatusSelected => '선택됨';

  @override
  String get bidStatusRejected => '거절됨';

  @override
  String get bidStatusPending => '대기 중';

  @override
  String get placeYourOffer => '제안하기';

  @override
  String get yourOfferAmount => '제안 금액';

  @override
  String get messageToClientOptional => '클라이언트에게 메시지 (선택)';

  @override
  String get addPartnerOptional => '파트너 추가 (선택)';

  @override
  String get partnerNameLabel => '파트너 이름';

  @override
  String get partnerFeeLabel => '파트너 수수료';

  @override
  String partnerFeeAmount(String symbol, String amount) {
    return '파트너 수수료: $amount';
  }

  @override
  String get submitOffer => '제안 제출';

  @override
  String get enterValidOfferAmount => '유효한 금액 입력';

  @override
  String get offerSubmittedSuccess => '제안 제출됨';

  @override
  String get clientSelectedYourOffer => '클라이언트가 귀하의 제안을 선택했습니다';

  @override
  String get handshakeHint => '양쪽 모두 코드를 공유해야 시작됩니다';

  @override
  String get handshakeAccepted => '핸드셰이크 수락';

  @override
  String get handshakeDeclined => '핸드셰이크 거절';

  @override
  String get acceptJob => '작업 수락';

  @override
  String get decline => '거절';

  @override
  String get startCode => '시작 코드';

  @override
  String get releaseCode => '지급 코드';

  @override
  String get generateCodes => '코드 생성';

  @override
  String get verifyCode => '코드 확인';

  @override
  String get enterCode => '코드 입력';

  @override
  String get generateStartCode => '시작 코드 생성';

  @override
  String get startCodeCopied => '시작 코드 복사됨';

  @override
  String reserveInEscrow(String symbol, String amount) {
    return '$amount를 에스크로에 예치';
  }

  @override
  String get releaseCodeCopied => '릴리스 코드 복사됨';

  @override
  String get releaseCodeHint => '릴리스 코드 입력';

  @override
  String get regenerateCode => '코드 재생성';

  @override
  String get generateReleaseCode => '릴리스 코드 생성';

  @override
  String get taskCodesGenerated => '작업 코드 생성됨';

  @override
  String get newReleaseCodeGenerated => '새 릴리스 코드 생성됨';

  @override
  String get readyToBegin => '시작 준비 완료';

  @override
  String get startCodeHint => '시작 코드 입력';

  @override
  String get verifyAndStartWork => '확인 및 시작';

  @override
  String get startCodeVerified => '시작 코드 확인됨';

  @override
  String get enterStartCodeFirst => '먼저 시작 코드를 입력하세요';

  @override
  String get workInProgress => '작업 진행 중';

  @override
  String get releaseCodePrompt => '결제를 해제하려면 코드를 입력하세요';

  @override
  String get releaseCodeHelper => '작업 완료 시 이 코드를 작업자에게 전달하세요';

  @override
  String get confirmWorkCompleted => '작업 완료 확인';

  @override
  String get workConfirmedPaymentReleased => '작업 확인 — 결제 완료!';

  @override
  String get enterReleaseCodeWarning => '릴리스 코드 입력';

  @override
  String get escrow => '에스크로';

  @override
  String get lockEscrow => '에스크로 잠금';

  @override
  String get releaseEscrow => '결제 지급';

  @override
  String get paymentLocked => '결제 잠김';

  @override
  String get paymentReleased => '결제 지급됨';

  @override
  String get paymentSafelyReserved => '결제가 안전하게 확보됨';

  @override
  String get cancelTask => '작업 취소';

  @override
  String get taskCancelled => '작업 취소됨';

  @override
  String get deleteTask => '작업 삭제';

  @override
  String get deleteTaskTitle => '작업 삭제?';

  @override
  String get deleteTaskConfirm => '이 작업을 삭제하시겠습니까?';

  @override
  String get taskDeleted => '작업 삭제됨';

  @override
  String get typeFirstMessage => '첫 메시지를 입력하세요';

  @override
  String get send => '보내기';

  @override
  String get failedToSendMessage => '메시지 전송 실패';

  @override
  String get conversations => '메시지';

  @override
  String get noMessagesYet => '아직 메시지 없음';

  @override
  String get noMessagesSubtitle => '작업에 대해 대화를 시작하면 여기에 표시됩니다.';

  @override
  String get startConversation => '대화를 시작하세요!';

  @override
  String get typeMessage => '메시지 입력...';

  @override
  String get typing => '입력 중...';

  @override
  String get newMessages => '새 메시지';

  @override
  String get now => '방금';

  @override
  String minutesAgo(int count) {
    return '$count분 전';
  }

  @override
  String workersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '작업자 $count명',
      one: '작업자 1명',
    );
    return '$_temp0';
  }

  @override
  String get chatToday => '오늘';

  @override
  String get chatYesterday => '어제';

  @override
  String chatYouPrefix(String message) {
    return '나: $message';
  }

  @override
  String chatReFallback(String jobTitle) {
    return 'Re: $jobTitle';
  }

  @override
  String get noConversationsYet => '대화 없음';

  @override
  String get loadingConversations => '대화 로딩 중...';

  @override
  String get loadingMessages => '메시지 로딩 중...';

  @override
  String get profile => '프로필';

  @override
  String get editProfile => '프로필 편집';

  @override
  String get fullName => '이름';

  @override
  String get phone => '전화번호';

  @override
  String get bio => '자기소개';

  @override
  String get skills => '기술';

  @override
  String get saveChanges => '변경사항 저장';

  @override
  String get logout => '로그아웃';

  @override
  String get logoutConfirm => '로그아웃하시겠습니까?';

  @override
  String get myProfile => '내 프로필';

  @override
  String get unknown => '알 수 없음';

  @override
  String get experienceLabel => '경력';

  @override
  String get statusLabel => '상태';

  @override
  String get notSet => '설정 안 됨';

  @override
  String get onDuty => '근무 중';

  @override
  String get offDuty => '비근무';

  @override
  String yearsCount(int count) {
    return '$count년';
  }

  @override
  String get themeAndColors => '테마 및 색상';

  @override
  String get aiModelLabel => 'AI 모델';

  @override
  String get availableForWork => '작업 가능';

  @override
  String get visibleToClients => '클라이언트에게 표시됨';

  @override
  String get currentlyOffDuty => '현재 비근무';

  @override
  String get myReviews => '내 리뷰';

  @override
  String get deleteAccount => '계정 삭제';

  @override
  String get deleteAccountConfirm => '확실합니까? 되돌릴 수 없습니다.';

  @override
  String get couldNotDeleteAccount => '계정을 삭제할 수 없습니다';

  @override
  String get profilePhotoUpdated => '프로필 사진 업데이트됨';

  @override
  String get profileUpdated => '프로필 업데이트됨';

  @override
  String get nameLabel => '이름';

  @override
  String get profileImageUrl => '프로필 이미지 URL';

  @override
  String get yearsOfExperience => '경력 년수';

  @override
  String get certificationsLabel => '자격증';

  @override
  String get payoutAccountLabel => '지급 계좌';

  @override
  String get onDutySubtitle => '새 작업에 대해 표시됩니다';

  @override
  String get loadingProfile => '프로필 로드 중';

  @override
  String get availabilityLabel => '가용성';

  @override
  String get memberLabel => '회원';

  @override
  String get available => '가능';

  @override
  String get unavailable => '이용 불가';

  @override
  String get viewAllReviews => '모든 리뷰 보기';

  @override
  String get settings => '설정';

  @override
  String get appearance => '외관';

  @override
  String get language => '언어';

  @override
  String get darkMode => '다크 모드';

  @override
  String get lightMode => '라이트 모드';

  @override
  String get systemMode => '시스템';

  @override
  String get accentColour => '강조 색상';

  @override
  String get customColour => '사용자 지정';

  @override
  String get preview => '미리보기';

  @override
  String get previewTitle => '색상이 멋지네요!';

  @override
  String get previewSubtitle => '앱이 이렇게 보입니다.';

  @override
  String get primary => '기본';

  @override
  String get secondary => '보조';

  @override
  String get modeLabel => '모드';

  @override
  String get pickAColour => '색상 선택';

  @override
  String get systemDefault => '시스템 기본';

  @override
  String get darkModeSubtitle => '시스템, 라이트 또는 다크 모드 선택';

  @override
  String get reviews => '리뷰';

  @override
  String get leaveReview => '리뷰 남기기';

  @override
  String get noReviews => '아직 리뷰 없음';

  @override
  String get rating => '평점';

  @override
  String get reviewComment => '댓글';

  @override
  String get submitReview => '리뷰 제출';

  @override
  String howWasWorker(String name) {
    return '$name은(는) 어떠셨나요?';
  }

  @override
  String get feedbackHelps => '피드백이 도움됩니다';

  @override
  String get thanksForReview => '리뷰 감사합니다';

  @override
  String get shareExperienceHint => '경험을 공유하세요';

  @override
  String get ratingExcellent => '훌륭함';

  @override
  String get ratingGreat => '매우 좋음';

  @override
  String get ratingGood => '좋음';

  @override
  String get ratingFair => '보통';

  @override
  String get ratingPoor => '나쁨';

  @override
  String get tapToRate => '탭하여 평가';

  @override
  String workerReviewsTitle(String name) {
    return '$name의 리뷰';
  }

  @override
  String get loadingReviews => '리뷰 로드 중';

  @override
  String get noReviewsSubtitle => '리뷰 없음';

  @override
  String get allReviews => '모든 리뷰';

  @override
  String reviewCount(int count) {
    return '$count개 리뷰';
  }

  @override
  String get anonymous => '익명';

  @override
  String get loading => '로딩 중...';

  @override
  String get error => '오류가 발생했습니다';

  @override
  String get retry => '재시도';

  @override
  String get tryAgain => '다시 시도';

  @override
  String get cancel => '취소';

  @override
  String get confirm => '확인';

  @override
  String get delete => '삭제';

  @override
  String get save => '저장';

  @override
  String get edit => '편집';

  @override
  String get close => '닫기';

  @override
  String get search => '검색';

  @override
  String get noResults => '결과 없음';

  @override
  String get pullToRefresh => '당겨서 새로고침';

  @override
  String get pullDownToRefresh => '아래로 당겨 새로고침';

  @override
  String get yes => '네';

  @override
  String get required => '필수';

  @override
  String get stop => '중지';

  @override
  String get clear => '지우기';

  @override
  String get aiSetup => 'AI 설정';

  @override
  String get aiAnalysis => 'AI 분석';

  @override
  String get unlockAi => 'AI 분석 잠금해제';

  @override
  String get aiTagline => '온디바이스  ·  비공개  ·  무료';

  @override
  String get deviceCheck => '기기 확인';

  @override
  String get chooseModel => '모델 선택';

  @override
  String get chooseModelSubtitle => '하나 이상의 모델을 다운로드하세요. 나중에 전환할 수 있습니다.';

  @override
  String get initializingAi => 'AI 런타임 초기화 중…';

  @override
  String get modelStorage => '모델 저장소';

  @override
  String get deviceIncompatible =>
      '온디바이스 AI에는 GPU 지원이 되는 실제 기기가 필요합니다. 시뮬레이터와 에뮬레이터는 호환되지 않습니다.';

  @override
  String get enhanceDescription => '향상';

  @override
  String get bidInsights => '입찰 인사이트';

  @override
  String get whyThisJob => '왜 이것?';

  @override
  String get suggestPrice => '가격 제안';

  @override
  String get analyzing => '분석 중…';

  @override
  String get aiCapabilities => 'AI 기능';

  @override
  String get onDeviceAi => '디바이스 AI';

  @override
  String get aiTaglineSetup => '개인정보 보호 · 오프라인 · 무료';

  @override
  String get aiSetupDescription => '작업과 제안에 대한 스마트 제안 받기';

  @override
  String get physicalDevice => '실제 기기';

  @override
  String get emulatorDetected => '에뮬레이터 감지';

  @override
  String get ram => 'RAM';

  @override
  String get sufficient => '충분';

  @override
  String get freeStorage => '여유 저장 공간';

  @override
  String mbFree(int mb) {
    return '$mb MB 여유';
  }

  @override
  String get aiRequiresPhysicalDevice => 'AI 기능에는 실제 기기가 필요합니다.';

  @override
  String get multilingual => '다국어';

  @override
  String downloadingProgress(String percent) {
    return '다운로드 중 $percent%';
  }

  @override
  String get loadingModel => '모델 로드 중';

  @override
  String get retryDownload => '다운로드 재시도';

  @override
  String get activeAndReady => '활성 & 준비됨';

  @override
  String get remove => '제거';

  @override
  String get enableAi => 'AI 활성화';

  @override
  String get downloadAiModel => 'AI 모델 다운로드';

  @override
  String get deviceNotSupported => '지원되지 않는 기기';

  @override
  String get downloadBackgroundNote => '백그라운드에서 다운로드 중. 앱을 닫지 마세요.';

  @override
  String get removeAiModelTitle => 'AI 모델 제거?';

  @override
  String get removeAiModelConfirm => 'AI 모델을 제거하시겠습니까?  MB가 해제됩니다.';

  @override
  String get analyzeWithAi => 'AI로 분석';

  @override
  String get aiAssistantAvailable => 'AI 어시스턴트 사용 가능';

  @override
  String get aiSetupPrompt => '스마트 제안을 위해 디바이스 AI 모델을 설정하세요.';

  @override
  String get setup => '설정';

  @override
  String get adminDashboard => '관리자 대시보드';

  @override
  String get failedToLoadDashboard => '대시보드 로드 실패';

  @override
  String get platformOverview => '플랫폼 개요';

  @override
  String get liveStatistics => '실시간 통계';

  @override
  String get usersSection => '사용자';

  @override
  String get adminTabClients => '클라이언트';

  @override
  String get adminTabWorkers => '작업자';

  @override
  String get adminTabAccount => '계정';

  @override
  String get jobsSection => '작업';

  @override
  String get activeLabel => '활성';

  @override
  String get todaySection => '오늘';

  @override
  String get createdLabel => '생성됨';

  @override
  String get completedLabel => '완료';

  @override
  String deleteUserTitle(String role) {
    return '$role 삭제?';
  }

  @override
  String deleteUserConfirm(String name, String email) {
    return '$name을(를) 삭제하시겠습니까?';
  }

  @override
  String get userDeletedSuccess => '사용자 삭제됨';

  @override
  String get unableToLoadUsers => '사용자 로드 실패';

  @override
  String get noClientsFound => '클라이언트 없음';

  @override
  String get noWorkersFound => '작업자 없음';

  @override
  String get deleteUserTooltip => '사용자 삭제';

  @override
  String get adminSession => '관리자 세션';

  @override
  String get adminManageUsersHint => '클라이언트 및 작업자 탭에서 사용자를 관리하세요.';

  @override
  String distanceKm(int radius) {
    return '$radius km';
  }

  @override
  String get youreOffline => '오프라인입니다';

  @override
  String get offlineHint => '오프라인입니다';

  @override
  String get yourSkills => '귀하의 기술';

  @override
  String get skillsSubtitle => '기술과 전문성을 추가하세요';

  @override
  String get addSkillLabel => '기술 추가';

  @override
  String get typeToSearchSkills => '기술 검색';

  @override
  String savedSkillsCount(int count) {
    return '$count개 기술 저장됨';
  }

  @override
  String get noSkillsAdded => '기술 없음';

  @override
  String get unableToLoadTaskDetails => '상세 로드 실패';

  @override
  String get detailDistance => '거리';

  @override
  String get chooseLocation => '위치 선택';

  @override
  String get savedTab => '저장됨';

  @override
  String get pinOnMapTab => '지도에 핀';

  @override
  String get locationDeniedPermanently => '위치 권한 영구 거부';

  @override
  String get couldNotGetLocation => '위치를 가져올 수 없습니다';

  @override
  String get searchPlaces => '장소 검색';

  @override
  String get switchToSatellite => '위성';

  @override
  String get switchToRoadMap => '도로 지도';

  @override
  String get goToMyLocation => '내 위치로';

  @override
  String get confirmLocation => '위치 확인';

  @override
  String get saveAddress => '주소 저장';

  @override
  String get saveAddressSubtitle => '향후 작업을 위해 저장';

  @override
  String get labelField => '라벨';

  @override
  String get labelHome => '집';

  @override
  String get labelWork => '직장';

  @override
  String get labelOther => '기타';

  @override
  String get recipientName => '수신자 이름';

  @override
  String get recipientNameHint => '이름 입력';

  @override
  String get recipientPhone => '수신자 전화';

  @override
  String get recipientPhoneHint => '전화번호 입력';

  @override
  String get pickFromContacts => '연락처에서 선택';

  @override
  String get contactsAccessDenied => '연락처 접근 거부';

  @override
  String get openSettings => '설정 열기';

  @override
  String get couldNotOpenContacts => '연락처를 열 수 없습니다';

  @override
  String get areaNeighbourhood => '지역 / 동네';

  @override
  String get areaHint => '예: 강남, 홍대';

  @override
  String get cityHint => '예: 서울';

  @override
  String get postalCodeRequired => '우편번호 필수';

  @override
  String get postalCodeHint => '예: 06000';

  @override
  String get countryCodeRequired => '국가 코드 필수';

  @override
  String get countryCodeHint => '+82';

  @override
  String get requiredSkillsLabel => '필수 기술';

  @override
  String get skillHintText => '기술을 입력하고 쉼표로 구분하세요';

  @override
  String get skillHelperEmpty => '아직 기술이 추가되지 않았습니다';

  @override
  String skillsAddedCount(int count) {
    return '$count개 기술 추가됨';
  }

  @override
  String get languagePicker => '언어 선택';

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
  String get accentColorBlue => '파랑';

  @override
  String get accentColorYellow => '노랑';

  @override
  String get accentColorGreen => '초록';

  @override
  String get accentColorPink => '분홍';

  @override
  String get accentColorRed => '빨강';

  @override
  String get accentColorPurple => '보라';

  @override
  String get accentColorOrange => '주황';

  @override
  String get accentColorTeal => '청록';

  @override
  String get accentColorCustom => '사용자 정의';

  @override
  String get paymentStatusPending => '결제 대기';

  @override
  String get paymentStatusLocked => '금액이 안전하게 확보됨';

  @override
  String get paymentStatusReleased => '결제 완료';

  @override
  String get paymentStatusOffline => '완료 시 직접 결제';

  @override
  String paymentStatusGeneric(String status) {
    return '결제 상태: $status';
  }

  @override
  String get jobStatusOpenForOffers => '제안 접수 중';

  @override
  String get jobStatusOfferAccepted => '제안 수락됨';

  @override
  String get jobStatusReadyToStart => '시작 준비 완료';

  @override
  String get jobStatusInProgress => '진행 중';

  @override
  String get jobStatusPendingPayment => '결제 대기';

  @override
  String get jobStatusPaymentReleased => '결제 완료';

  @override
  String get jobStatusTaskCompleted => '작업 완료';

  @override
  String get jobStatusCancelled => '취소됨';

  @override
  String get detailBudgetLabel => '예산';

  @override
  String get detailLocationLabel => '위치';

  @override
  String get detailSkillsLabel => '기술';

  @override
  String get detailJobIdLabel => '작업 ID';

  @override
  String get tooltipCopy => '복사';

  @override
  String get tooltipDeleteAddress => '주소 삭제';

  @override
  String confirmDeleteAddress(String addressLabel) {
    return '\"$addressLabel\"를 저장된 주소에서 삭제하시겠습니까?';
  }

  @override
  String get errorNotAuthenticated => '인증되지 않음. 다시 로그인하세요.';

  @override
  String get errorCouldNotOpenImagePicker => '이미지 선택기를 열 수 없습니다.';

  @override
  String get errorCouldNotReadImage => '이미지를 읽을 수 없습니다.';

  @override
  String get errorImageTooLarge => '이미지는 5MB 미만이어야 합니다.';

  @override
  String get errorUploadFailed => '업로드 실패. 다시 시도하세요.';

  @override
  String get errorNameRequired => '이름은 필수입니다';

  @override
  String get errorRatingRequired => '평점을 선택하세요';

  @override
  String get errorNotLoggedIn => '먼저 로그인하세요';

  @override
  String get errorAdminProfileUpdateNotSupported => '관리자 프로필 업데이트 미지원';

  @override
  String get errorAdminDeletionDisabled => '앱에서 관리자 삭제 비활성화';

  @override
  String get errorConnectionTimeout => '연결 시간 초과. 다시 시도하세요.';

  @override
  String get errorConnectionError => '서버 연결 실패.';

  @override
  String get errorRequestCancelled => '요청이 취소되었습니다.';

  @override
  String get errorBadRequest => '잘못된 요청. 입력을 확인하세요.';

  @override
  String get errorSessionExpired => '세션 만료. 다시 로그인하세요.';

  @override
  String get errorPermissionDenied => '권한이 없습니다.';

  @override
  String get errorResourceNotFound => '리소스를 찾을 수 없습니다.';

  @override
  String get errorConflict => '충돌: 작업을 완료할 수 없습니다.';

  @override
  String get errorFileTooLarge => '파일이 너무 큽니다. 최대 5MB.';

  @override
  String get errorValidationError => '유효성 검사 오류. 입력을 확인하세요.';

  @override
  String get errorTooManyRequests => '요청이 너무 많습니다. 잠시 기다리세요.';

  @override
  String get errorServerError => '서버 오류. 나중에 다시 시도하세요.';

  @override
  String errorRequestFailed(String statusCode) {
    return '요청 실패: 상태 $statusCode';
  }

  @override
  String get errorNetworkFailed => '네트워크 오류.';

  @override
  String get errorNetworkRequestFailed => '네트워크 오류';

  @override
  String get errorMalformedSkillResponse => '잘못된 기술 응답';

  @override
  String get errorMalformedResponse => '잘못된 응답';

  @override
  String get errorMalformedAdminResponse => '잘못된 관리자 응답';

  @override
  String get errorAdminAccessRequired => '관리자 접근 필요';

  @override
  String get errorDescriptionUnavailable => '설명 불가';

  @override
  String errorUnauthorizedAction(String roleLabel) {
    return '$roleLabel만 수행할 수 있습니다';
  }

  @override
  String get useWithoutSaving => '저장하지 않고 사용';

  @override
  String get saveAndUse => '저장 후 사용';

  @override
  String get useMyCurrentLocation => '현재 위치 사용';

  @override
  String get detectingLocation => '위치 감지 중…';
}
