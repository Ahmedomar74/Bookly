import 'package:booklyapp/Feature/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:booklyapp/Feature/home/presentation/views/home_view.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/uitls/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBady extends StatefulWidget {
  const SplashViewBady({super.key});

  @override
  State<SplashViewBady> createState() => _SplashViewBadyState();
}

class _SplashViewBadyState extends State<SplashViewBady>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        const SizedBox(
          height: 15,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => const HomeView(),
        transition: Transition.fade,
        duration: kTranstionDuration,
      );
    });
  }
}
