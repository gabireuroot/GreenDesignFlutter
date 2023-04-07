import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme {
  // colors
  static const primaryColor = Color(0xFF19E28E);
  static const white = Color(0xFFFFFFFF);
  static const grey = Color(0xFF868686);
  static const dark = Color(0xFF222222);

  // text styles
  static TextStyle textStyle = const TextStyle(
    fontSize: 16,
    color: white,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textBoldStyle = const TextStyle(
    fontSize: 16,
    color: white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textFieldStyle = const TextStyle(
    fontSize: 16,
    color: dark,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textFunctionFieldStyle = const TextStyle(
    fontSize: 16,
    color: dark,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textHintStyle = const TextStyle(
    fontSize: 16,
    color: grey,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textTitleStyle = const TextStyle(
    fontSize: 32,
    color: white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textLinkStyle = const TextStyle(
    fontSize: 16,
    color: primaryColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textButtonStyle = const TextStyle(
    fontSize: 16,
    color: white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textDarkButtonStyle = const TextStyle(
    fontSize: 16,
    color: dark,
    fontWeight: FontWeight.w600,
  );

  // filed style
  static InputDecoration fieldStyle({required String hintText}) {
    return InputDecoration(
        filled: true,
        fillColor: white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20,),
        hintStyle: textHintStyle,
        hintText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Colors.transparent),
        )
    );
  }

  static InputDecoration passwdFieldStyle({
    required String hintText,
    required String suffixText,
    required VoidCallback showPasswd,
  }) {
    return InputDecoration(
        filled: true,
        fillColor: white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20,),
        hintStyle: textHintStyle,
        hintText: hintText,
        suffix: InkWell(
          onTap: showPasswd,
          child: Text(suffixText, style: textDarkButtonStyle,),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Colors.transparent),
        )
    );
  }

  // button style
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: primaryColor,
    textStyle: textButtonStyle,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
    ),
    elevation: 4,
    minimumSize: const Size(double.infinity, 55)
  );

  // button social style
  static ButtonStyle elevatedButtonSocialStyle = ElevatedButton.styleFrom(
      backgroundColor: white,
      textStyle: textDarkButtonStyle,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 4,
      minimumSize: const Size(double.infinity, 55)
  );
}