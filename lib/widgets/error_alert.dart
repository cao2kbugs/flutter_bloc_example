import 'package:flutter/material.dart';

class ErrorAlert extends StatelessWidget {
  final String message;

  const ErrorAlert({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    const size = 50.0;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.add_alert_rounded,
          color: Colors.red,
          size: size,
        ),
        Text(
          message,
          style: const TextStyle(
              fontSize: size, color: Colors.red, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
