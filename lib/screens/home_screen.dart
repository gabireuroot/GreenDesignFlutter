import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:green_design/theme/app_theme.dart';
import 'package:green_design/widgets/button_default.dart';
import 'package:green_design/widgets/button_social_default.dart';

import '../widgets/textfield_default.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.75),
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 20,),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Hi!",
                              style: AppTheme.textTitleStyle,
                            ),
                          ),
                        ),
                        IntrinsicHeight(
                          child: GlassmorphicContainer(
                            blur: 10,
                            width: MediaQuery.of(context).size.width,
                            linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                AppTheme.grey.withOpacity(0.1),
                                AppTheme.grey.withOpacity(0.4),
                              ],
                              stops: const [
                                0.1,
                                1,
                              ],
                            ),
                            border: 0,
                            borderRadius: 15,
                            borderGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                AppTheme.grey.withOpacity(0.5),
                                AppTheme.grey.withOpacity(0.5),
                              ],
                            ),
                            height: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 24,
                                right: 24,
                                top: 24,
                                bottom: 48,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 15,),
                                    child: TextFieldDefault(
                                      hint: "Name",
                                    ),
                                  ),
                                  ButtonDefault(
                                    onPressed: () {},
                                    textButton: "Continue",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      "or",
                                      style: AppTheme.textStyle,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10,),
                                    child: ButtonSocialDefault(
                                      onPressed: () {},
                                      textButton: "Continue with Facebook",
                                      iconButton: "assets/icons/facebook.png",
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10,),
                                    child: ButtonSocialDefault(
                                      onPressed: () {},
                                      textButton: "Continue with Google",
                                      iconButton: "assets/icons/google.png",
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20,),
                                    child: ButtonSocialDefault(
                                      onPressed: () {},
                                      textButton: "Continue with Apple",
                                      iconButton: "assets/icons/apple.png",
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10, top: 10,),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: TextSpan(
                                            text: "Don't have an account  ",
                                            style: AppTheme.textStyle,
                                            children: [
                                              TextSpan(
                                                text: 'Sign up',
                                                style: AppTheme.textLinkStyle,
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Forgot your password?",
                                      style: AppTheme.textLinkStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
