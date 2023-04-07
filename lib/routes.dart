import 'package:flutter/material.dart';
import 'package:green_design/screens/home_screen.dart';
import 'package:green_design/screens/recover_passwd_screen.dart';
import 'package:green_design/screens/signin_screen.dart';
import 'package:green_design/screens/signup_screen.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes() {
    return {
      "/home_screen": (context) => const HomeScreen(),
      "/signup_screen": (context) => const SignUpScren(),
      "/signin_screen": (context) => const SignInScreen(),
      "/recover_passwd_screen": (context) => const RecoverPasswdScreen(),
    };
  }
}
