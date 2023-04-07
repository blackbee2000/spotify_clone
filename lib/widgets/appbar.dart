import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarUtils {
  static PreferredSizeWidget appBarCustom({
    double elevation = 0,
    Widget? title,
    List<Widget>? actions,
    bool centerTitle = true,
    Widget? leading,
    double? leadingWidth,
  }) {
    return AppBar(
      elevation: elevation,
      title: title,
      actions: actions,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      centerTitle: centerTitle,
      leading: leading,
      leadingWidth: leadingWidth,
    );
  }
}
