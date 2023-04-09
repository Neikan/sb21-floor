// Flutter imports:
import 'package:flutter/material.dart';

class UiTextRich extends StatelessWidget {
  final String label;
  final String value;

  const UiTextRich({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '$label: ',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}
