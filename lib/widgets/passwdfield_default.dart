import 'package:flutter/material.dart';
import 'package:green_design/theme/app_theme.dart';

class PasswdFieldDefault extends StatefulWidget {
  final String hintText;
  final String suffixText;

  const PasswdFieldDefault({
    Key? key,
    required this.hintText,
    required this.suffixText,
  }) : super(key: key);

  @override
  State<PasswdFieldDefault> createState() => _PasswdFieldDefaultState();
}

class _PasswdFieldDefaultState extends State<PasswdFieldDefault> {

  bool passwdIsVisible = false;

  void _showPasswd() {
    setState(() {
      passwdIsVisible = !passwdIsVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: AppTheme.passwdFieldStyle(
        hintText: widget.hintText,
        suffixText: widget.suffixText,
        showPasswd: _showPasswd,
      ),
      style: AppTheme.textFieldStyle,
      obscureText: passwdIsVisible,

    );
  }
}