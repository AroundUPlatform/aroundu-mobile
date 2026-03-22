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
  String get homeTab => '홈';

  @override
  String get jobsTab => '일자리';

  @override
  String get chatTab => '채팅';

  @override
  String get profileTab => '프로필';

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
  String get urgencyUrgent => '긴급';

  @override
  String get paymentOffline => '오프라인';

  @override
  String get paymentEscrow => '에스크로';

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
  String get loading => '로딩 중...';

  @override
  String get loadingConversations => '대화 로딩 중...';

  @override
  String get loadingMessages => '메시지 로딩 중...';

  @override
  String get error => '오류가 발생했습니다';

  @override
  String get retry => '재시도';

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
}
