// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:form_validator/form_validator.dart';

class UiTextField extends StatelessWidget {
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? labelText;
  final int? maxLength;
  final Widget? suffix;
  final String? Function(String?)? validator;

  const UiTextField({
    super.key,
    required this.controller,
    this.inputFormatters,
    this.keyboardType,
    this.labelText,
    this.maxLength,
    this.suffix,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          suffix: suffix,
          counterText: '',
        ),
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        maxLength: maxLength,
        validator: validator ?? ValidationBuilder().build(),
      ),
    );
  }
}
