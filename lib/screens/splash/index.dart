import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/controllers/splash_controller.dart';
import 'package:spotify_clone/routes/app_routes.dart';
import 'package:spotify_clone/utils/app_paths.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashController splashController = Get.find(tag: AppRoutes.splash);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Obx(
          () => AnimatedOpacity(
            opacity: splashController.isShow.value ? 1 : 0,
            duration: const Duration(seconds: 1),
            child: Image.asset(
              AppPaths.logo,
              width: 270,
              height: 80,
            ),
          ),
        ),
      ),
    );
  }
}
