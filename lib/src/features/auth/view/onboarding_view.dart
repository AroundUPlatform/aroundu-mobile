import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/l10n/l10n_extension.dart';
import '../view_model/auth_ui_view_model.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  late final PageController _controller;
  Timer? _autoScroll;

  // A large multiplier so we can start near the middle and scroll
  // infinitely in both directions.
  static const int _loopMultiplier = 1000;
  static const int _realCount = 3; // _slides.length

  int get _initialPage => (_loopMultiplier ~/ 2) * _realCount;

  /// Maps the virtual page index produced by the infinite-loop PageView
  /// back to a real [0, _realCount) index.
  int _realIndex(int virtualPage) => virtualPage % _realCount;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: _initialPage,
      viewportFraction: 0.88, // shows a sliver of the next card → gap visible
    );
    _startAutoScroll();
  }

  @override
  void dispose() {
    _autoScroll?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _autoScroll = Timer.periodic(const Duration(milliseconds: 1000), (_) {
      if (!mounted) return;
      final next = (_controller.page?.round() ?? _initialPage) + 1;
      _controller.animateToPage(
        next,
        duration: const Duration(milliseconds: 420),
        curve: Curves.easeInOut,
      );
    });
  }

  void _pauseAndResume() {
    _autoScroll?.cancel();
    _autoScroll = Timer(const Duration(seconds: 4), _startAutoScroll);
  }

  void _toLogin() {
    Navigator.pushReplacementNamed(context, AppRoutes.login);
  }

  void _goNext() {
    _pauseAndResume();
    final current = _controller.page?.round() ?? _initialPage;
    _controller.animateToPage(
      current + 1,
      duration: const Duration(milliseconds: 340),
      curve: Curves.easeOut,
    );

    // Update dot indicator
    final realIdx = _realIndex(current + 1);
    ref.read(onboardingPageProvider.notifier).state = realIdx;

    if (realIdx == _realCount - 1) {
      // on last — next tap goes to login
    }
  }

  @override
  Widget build(BuildContext context) {
    final dotIndex = ref.watch(onboardingPageProvider);
    final slides = [
      _OnboardingSlide(
        title: context.l10n.onboardingTitle1,
        description: context.l10n.onboardingSubtitle1,
        icon: Icons.bolt_rounded,
      ),
      _OnboardingSlide(
        title: context.l10n.onboardingTitle2,
        description: context.l10n.onboardingSubtitle2,
        icon: Icons.compare_arrows_rounded,
      ),
      _OnboardingSlide(
        title: context.l10n.onboardingTitle3,
        description: context.l10n.onboardingSubtitle3,
        icon: Icons.fact_check_rounded,
      ),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              // ── Skip ──
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: _toLogin,
                      child: Text(context.l10n.skip),
                    ),
                  ],
                ),
              ),

              // ── Slides (infinite carousel) ──
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: (n) {
                    if (n is ScrollEndNotification) {
                      final realIdx = _realIndex(
                        _controller.page?.round() ?? 0,
                      );
                      ref.read(onboardingPageProvider.notifier).state = realIdx;
                    }
                    return false;
                  },
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: _loopMultiplier * _realCount,
                    onPageChanged: (virtualIdx) {
                      _pauseAndResume();
                      ref.read(onboardingPageProvider.notifier).state =
                          _realIndex(virtualIdx);
                    },
                    itemBuilder: (context, virtualIdx) {
                      return Padding(
                        // Gap between cards
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        child: _OnboardingCard(
                          slide: slides[_realIndex(virtualIdx)],
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ── Dot indicators ──
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _realCount,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 220),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: dotIndex == index ? 24 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(999),
                      color: dotIndex == index
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.outlineVariant,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              // ── Buttons ──
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PrimaryButton(
                  label: dotIndex == _realCount - 1
                      ? context.l10n.getStarted
                      : context.l10n.next,
                  onPressed: dotIndex == _realCount - 1 ? _toLogin : _goNext,
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.register);
                },
                child: Text(context.l10n.newHereCreateAccount),
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}

class _OnboardingCard extends StatelessWidget {
  const _OnboardingCard({required this.slide});

  final _OnboardingSlide slide;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.primary.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(
                slide.icon,
                color: Theme.of(context).colorScheme.primary,
                size: 44,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              slide.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            Text(
              slide.description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class _OnboardingSlide {
  const _OnboardingSlide({
    required this.title,
    required this.description,
    required this.icon,
  });

  final String title;
  final String description;
  final IconData icon;
}
