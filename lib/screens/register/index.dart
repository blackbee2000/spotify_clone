import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/controllers/register_controller.dart';
import 'package:spotify_clone/routes/app_routes.dart';
import 'package:spotify_clone/screens/base_widget.dart';
import 'package:spotify_clone/utils/app_colors.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/utils/app_words.dart';
import 'package:spotify_clone/widgets/appbar.dart';
import 'package:spotify_clone/widgets/button.dart';
import 'package:spotify_clone/widgets/text.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with BaseWidget {
  final RegisterController registerController =
      Get.find(tag: AppRoutes.register);
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextUtils.text(
              text: AppWords.login,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 16),
            RichText(
              text: TextSpan(
                text: '${AppWords.ifYouNeedAnySupport} ',
                style: TextUtils.textStyle(
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: AppWords.clickHere,
                    style: TextUtils.textStyle(
                      fontSize: 12,
                      color: AppColors.color1ED760,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Obx(
              () => TextUtils.textFromField(
                controller: registerController.fullName.value,
                hintText: AppWords.enterName,
                textInputAction: TextInputAction.done,
                onChanged: (String value) {},
                contentPadding: const EdgeInsets.all(24),
                roundBorder: 24,
              ),
            ),
            const SizedBox(height: 16),
            Obx(
              () => TextUtils.textFromField(
                controller: registerController.email.value,
                hintText: AppWords.enterName,
                textInputAction: TextInputAction.done,
                onChanged: (String value) {},
                contentPadding: const EdgeInsets.all(24),
                roundBorder: 24,
              ),
            ),
            const SizedBox(height: 16),
            Obx(
              () => TextUtils.textFromField(
                isObscureText: !registerController.isShowPassword.value,
                controller: registerController.password.value,
                hintText: AppWords.password,
                textInputAction: TextInputAction.done,
                onChanged: (String value) {},
                contentPadding: const EdgeInsets.all(24),
                roundBorder: 24,
                iconButtonSuffixIcon: IconButton(
                  onPressed: () {
                    registerController.isShowPassword.value =
                        !registerController.isShowPassword.value;
                  },
                  icon: Container(
                    padding: const EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(AppPaths.icHide),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Obx(
              () => TextUtils.textFromField(
                isObscureText: !registerController.isShowRepeatPassword.value,
                controller: registerController.repeatPassword.value,
                hintText: AppWords.repeatPassword,
                textInputAction: TextInputAction.done,
                onChanged: (String value) {},
                contentPadding: const EdgeInsets.all(24),
                roundBorder: 24,
                iconButtonSuffixIcon: IconButton(
                  onPressed: () {
                    registerController.isShowRepeatPassword.value =
                        !registerController.isShowRepeatPassword.value;
                  },
                  icon: Container(
                    padding: const EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(AppPaths.icHide),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            buttonPrimary(
              context: context,
              text: AppWords.register,
              onPress: () {},
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),
                const SizedBox(width: 16),
                TextUtils.text(
                  text: AppWords.or,
                  fontSize: 12,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: ButtonsUtil.buttonIcon(
                    context: context,
                    primary: Colors.transparent,
                    border: Colors.white.withOpacity(0.4),
                    icon: Image.asset(
                      AppPaths.icFacebook2,
                      width: 22,
                      height: 22,
                    ),
                    onPress: () {},
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: ButtonsUtil.buttonIcon(
                    context: context,
                    primary: Colors.transparent,
                    border: Colors.white.withOpacity(0.4),
                    icon: Image.asset(
                      AppPaths.icGoogle,
                      width: 22,
                      height: 22,
                    ),
                    onPress: () {},
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: ButtonsUtil.buttonIcon(
                    context: context,
                    primary: Colors.transparent,
                    border: Colors.white.withOpacity(0.4),
                    icon: Image.asset(
                      AppPaths.icApple,
                      width: 22,
                      height: 22,
                    ),
                    onPress: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            RichText(
              text: TextSpan(
                text: '${AppWords.haveAnAccount} ',
                style: TextUtils.textStyle(
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: AppWords.login,
                    style: TextUtils.textStyle(
                      fontSize: 12,
                      color: AppColors.colorD7BD1E,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
