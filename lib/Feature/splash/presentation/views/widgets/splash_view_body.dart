import 'package:bookly/Feature/home/presentaion/views/home_view.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/asset.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    //create animation and give time
    InitSlidingAnimation();
    NavigateToHome();
  }

  @override
  void dispose() {
    //finish it and close animation
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetData.kLogo),
        SizedBox(height: 4),
        SlideTransition(
          position: slideAnimation,
          child: Text('Read Free Book', textAlign: TextAlign.center),
        ),
      ],
    );
  }

  void NavigateToHome() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(
        () => HomeView(),
        transition: Transition.fade,
        duration: kTransationDuration,
      );
    });
  }

  void InitSlidingAnimation() {
    //create animation and give time
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    //select value & select move text from down to up
    slideAnimation = Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    //start animation
    animationController.forward();
  }
}
