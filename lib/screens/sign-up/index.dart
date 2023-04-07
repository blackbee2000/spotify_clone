import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/routes/app_routes.dart';
import 'package:spotify_clone/screens/base_widget.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/utils/app_words.dart';
import 'package:spotify_clone/widgets/appbar.dart';
import 'package:spotify_clone/widgets/button.dart';
import 'package:spotify_clone/widgets/text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with BaseWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarUtils.appBarCustom(
        leading: iconBack(
          onPressed: () {
            Get.back();
          },
        ),
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
                  buttonPrimary(
                    context: context,
                    text: AppWords.signUpFree,
                    onPress: () {},
                  ),
                  const SizedBox(height: 12),
                  ButtonsUtil.button(
                    context: context,
                    primary: Colors.transparent,
                    text: AppWords.continueWithPhoneNumber,
                    textColor: Colors.white,
                    border: Colors.white,
                    radius: 30,
                    icon: SvgPicture.asset(AppPaths.icPhoneNumber),
                    onPress: () {},
                  ),
                  const SizedBox(height: 12),
                  ButtonsUtil.button(
                    context: context,
                    primary: Colors.transparent,
                    text: AppWords.continueWithGoogle,
                    textColor: Colors.white,
                    border: Colors.white,
                    radius: 30,
                    icon: Image.asset(
                      AppPaths.icGoogle,
                      width: 28,
                      height: 28,
                    ),
                    onPress: () {},
                  ),
                  const SizedBox(height: 12),
                  ButtonsUtil.button(
                    context: context,
                    primary: Colors.transparent,
                    text: AppWords.continueWithFacebook,
                    textColor: Colors.white,
                    border: Colors.white,
                    radius: 30,
                    icon: Image.asset(
                      AppPaths.icFacebook,
                      width: 28,
                      height: 28,
                    ),
                    onPress: () {},
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.login);
                    },
                    child: TextUtils.text(
                      text: AppWords.login,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
