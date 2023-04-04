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
  final Widget? suffix;

  const UiTextField({
    super.key,
    required this.controller,
    this.inputFormatters,
    this.keyboardType,
    this.labelText,
    this.suffix,
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
        ),
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        validator: ValidationBuilder().build(),
      ),
    );
  }
}
