import 'package:flutter/material.dart';
import 'package:green_design/theme/app_theme.dart';

class ButtonDefault extends StatefulWidget {
  final VoidCallback onPressed;
  final String textButton;

  const ButtonDefault({
    Key? key,
    required this.onPressed,
    required this.textButton,
  }) : super(key: key);

  @override
  State<ButtonDefault> createState() => _ButtonDefaultState();
}

class _ButtonDefaultState extends State<ButtonDefault> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onPressed,
        style: AppTheme.elevatedButtonStyle,
        child: Text(
          widget.textButton,
          style: AppTheme.textButtonStyle,
        ),
    );
  }
}
