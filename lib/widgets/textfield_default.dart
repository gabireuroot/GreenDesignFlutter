import 'package:flutter/material.dart';
import 'package:green_design/theme/app_theme.dart';

class TextFieldDefault extends StatefulWidget {
  final String hint;
  const TextFieldDefault({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  State<TextFieldDefault> createState() => _TextFieldDefaultState();
}

class _TextFieldDefaultState extends State<TextFieldDefault> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: AppTheme.fieldStyle(hintText: widget.hint),
      style: AppTheme.textFieldStyle,
    );
  }
}
