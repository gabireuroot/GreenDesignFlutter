import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:green_design/theme/app_theme.dart';
import 'package:green_design/widgets/button_default.dart';
import 'package:green_design/widgets/passwdfield_default.dart';
import '../widgets/textfield_default.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
                              "Sign in",
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
                                  Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        margin: const EdgeInsets.only(right: 20,),
                                        decoration: BoxDecoration(
                                          color: AppTheme.grey,
                                          borderRadius: BorderRadius.circular(100),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            child: Text(
                                              "I am Gabriel Castro",
                                              style: AppTheme.textBoldStyle,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "iamgabrielcast@site.com",
                                              style: AppTheme.textStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 15, top: 20,),
                                    child: PasswdFieldDefault(
                                      hintText: "Password",
                                      suffixText: "View",
                                    ),
                                  ),
                                  ButtonDefault(
                                    onPressed: () {},
                                    textButton: "Continue",
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
