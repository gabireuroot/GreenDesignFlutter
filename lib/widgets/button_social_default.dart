import 'package:flutter/material.dart';
import 'package:green_design/theme/app_theme.dart';

class ButtonSocialDefault extends StatefulWidget {
  final VoidCallback onPressed;
  final String textButton;
  final String iconButton;

  const ButtonSocialDefault({
    Key? key,
    required this.onPressed,
    required this.textButton,
    required this.iconButton,
  }) : super(key: key);

  @override
  State<ButtonSocialDefault> createState() => _ButtonSocialDefaultState();
}

class _ButtonSocialDefaultState extends State<ButtonSocialDefault> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: AppTheme.elevatedButtonSocialStyle,
      child: Row(
        children: [
          Image.asset(widget.iconButton),
          Expanded(
            child: Center(
              child: Text(
                widget.textButton,
                style: AppTheme.textDarkButtonStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
