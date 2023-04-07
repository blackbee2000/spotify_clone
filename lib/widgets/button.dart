import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/text.dart';

class ButtonsUtil {
  static button({
    required BuildContext context,
    required Color primary,
    double height = 48,
    Color? border,
    required String text,
    EdgeInsets? margin,
    required Color textColor,
    bool prefixIcon = true,
    Widget? icon,
    required Function onPress,
    double radius = 8,
  }) {
    return Container(
      height: height,
      margin: margin,
      child: ElevatedButton(
        onPressed: () {
          onPress();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: border ?? primary),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Row(
          textDirection: prefixIcon ? TextDirection.ltr : TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon,
            if (icon != null) const SizedBox(width: 10),
            TextUtils.text(
              text: text,
              color: textColor,
              fontWeight: FontWeight.w600,
            )
          ],
        ),
      ),
    );
  }

  static buttonIcon({
    required BuildContext context,
    required Color primary,
    double height = 48,
    Color? border,
    EdgeInsets? margin,
    Widget? icon,
    required Function onPress,
    double radius = 8,
  }) {
    return Container(
      height: height,
      margin: margin,
      child: ElevatedButton(
        onPressed: () {
          onPress();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: border ?? primary),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Center(
          child: icon,
        ),
      ),
    );
  }

  static Widget inkWellCustom({
    required Widget child,
    required Function()? onTap,
    double? radius,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: radius != null ? BorderRadius.circular(radius) : null,
        onTap: onTap,
        child: child,
      ),
    );
  }
}
