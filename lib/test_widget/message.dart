import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade700),
      ),
      child: const Text(
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.'),
    );
  }
}
