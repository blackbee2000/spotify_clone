import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/routes/app_routes.dart';
import 'package:spotify_clone/screens/base_widget.dart';
import 'package:spotify_clone/utils/app_colors.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/utils/app_words.dart';
import 'package:spotify_clone/widgets/appbar.dart';
import 'package:spotify_clone/widgets/text.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> with BaseWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarUtils.appBarCustom(
        title: logoWidget(),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const SizedBox(width: double.infinity, height: double.infinity),
            Image.asset(
              AppPaths.banner,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(1),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextUtils.text(
                    text: AppWords.introTitle,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.color1ED760,
                  ),
                  const SizedBox(height: 16),
                  TextUtils.text(
                    text: AppWords.lorem,
                    color: Colors.white,
                    maxLines: 10,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  buttonPrimary(
                    context: context,
                    text: AppWords.getStarted,
                    onPress: () {
                      Get.toNamed(AppRoutes.signUp);
                    },
                  ),
                  const SizedBox(height: 120),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
