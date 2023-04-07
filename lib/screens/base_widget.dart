import 'package:flutter/material.dart';
import 'package:spotify_clone/utils/app_colors.dart';
import 'package:spotify_clone/utils/app_paths.dart';
import 'package:spotify_clone/widgets/button.dart';

class BaseWidget {
  Widget logoWidget() {
    return SizedBox(
      width: 134,
      height: 40,
      child: Image.asset(
        AppPaths.logo,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }

  Widget iconBack({required void Function()? onPressed}) {
    return IconButton(
      onPressed: () {},
      icon: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }

  Widget buttonPrimary({
    required BuildContext context,
    required String text,
    required Function onPress,
    double height = 48,
  }) {
    return ButtonsUtil.button(
      context: context,
      primary: AppColors.color1ED760,
      text: text,
      textColor: Colors.black,
      onPress: onPress,
      height: height,
      radius: 30,
    );
  }
}
