import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:green_design/theme/app_theme.dart';
import 'package:green_design/widgets/button_default.dart';
import 'package:green_design/widgets/button_social_default.dart';
import 'package:green_design/widgets/passwdfield_default.dart';

import '../widgets/textfield_default.dart';

class SignUpScren extends StatelessWidget {
  const SignUpScren({Key? key}) : super(key: key);

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
                              "Sign up",
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
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Let's create a new account",
                                      style: AppTheme.textStyle,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 15, top: 20,),
                                    child: TextFieldDefault(
                                      hint: "Name",
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 15,),
                                    child: TextFieldDefault(
                                      hint: "Email",
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 15,),
                                    child: PasswdFieldDefault(
                                      hintText: "Password",
                                      suffixText: "View",
                                    ),
                                  ),
                                  ButtonDefault(
                                    onPressed: () {},
                                    textButton: "Continue",
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10, top: 20,),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: TextSpan(
                                            text: "By selecting Agree and continue below,\n",
                                            style: AppTheme.textStyle,
                                            children: [
                                              TextSpan(
                                                text: "I agree to",
                                                style: AppTheme.textStyle,
                                              ),
                                              TextSpan(
                                                text: 'Terms of Service and Privacy Policy',
                                                style: AppTheme.textLinkStyle,
                                              ),
                                            ],
                                          ),
                                        )
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
