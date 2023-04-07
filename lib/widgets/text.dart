import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_clone/utils/app_colors.dart';
import 'package:spotify_clone/utils/app_words.dart';

class TextUtils {
  static Text text({
    required String text,
    double fontSize = 14,
    FontStyle fontStyle = FontStyle.normal,
    Color color = Colors.white,
    FontWeight? fontWeight = FontWeight.w400,
    int maxLines = 1,
    TextDecoration decoration = TextDecoration.none,
    TextAlign textAlign = TextAlign.left,
    double? height,
    TextOverflow overflow = TextOverflow.ellipsis,
    double? letterSpacing,
  }) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        height: height,
        fontFamily: AppWords.font,
        fontSize: fontSize,
        color: color,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        decoration: decoration,
        letterSpacing: letterSpacing,
      ),
    );
  }

  static TextStyle textStyle({
    Color color = Colors.white,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return TextStyle(
      fontFamily: AppWords.font,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextFormField textFromField({
    required TextEditingController controller,
    FocusNode? focusNode,
    Widget? prefixIcon,
    double roundBorder = 8,
    bool border = true,
    required String hintText,
    TextAlign textAlign = TextAlign.left,
    bool isObscureText = false,
    bool isRequired = true,
    TextInputType textInputType = TextInputType.text,
    required TextInputAction textInputAction,
    Widget? iconButtonSuffixIcon,
    Color borderColor = const Color.fromRGBO(189, 198, 215, 1),
    Color? fill = Colors.white,
    FontWeight? fontWeight = FontWeight.w400,
    required Function(String) onChanged,
    Function(String)? validate,
    required EdgeInsets contentPadding,
    bool? readOnly,
    String? error,
    String? helper,
    Function()? onTap,
    Function()? onSubmit,
    int maxLines = 1,
    double elevation = 0,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return TextFormField(
      onFieldSubmitted: (String value) {
        if (onSubmit != null) {
          onSubmit();
        }
      },
      focusNode: focusNode,
      controller: controller,
      textAlign: textAlign,
      autofocus: false,
      keyboardType: textInputType,
      maxLines: maxLines,
      onTap: onTap,
      style: textStyle(color: Colors.white),
      readOnly: readOnly ?? false,
      textInputAction: textInputAction,
      obscureText: isObscureText,
      obscuringCharacter: '*',
      onChanged: (String value) {
        onChanged(value);
      },
      cursorColor: AppColors.color1ED760,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        helperText: helper,
        helperStyle: TextUtils.textStyle(color: Colors.white),
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: iconButtonSuffixIcon,
        errorText: error != null && error.isNotEmpty ? error : null,
        errorStyle: TextUtils.textStyle(color: Colors.red),
        contentPadding: contentPadding,
        hintStyle: textStyle(
          fontSize: 14,
          color: Colors.white.withOpacity(0.6),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(roundBorder)),
          borderSide: BorderSide(
            width: border ? 1 : 0.01,
            color: borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(roundBorder)),
          borderSide: BorderSide(
            width: border ? 1 : 0.01,
            color: borderColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(roundBorder)),
          borderSide: BorderSide(
            width: border ? 1 : 0.01,
            color: borderColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(roundBorder)),
          borderSide: BorderSide(
            width: border ? 1 : 0.01,
            color: Colors.red,
          ),
        ),
      ),
      onSaved: (value) async {},
      validator: (value) {
        return validate!(value!);
      },
    );
  }
}
