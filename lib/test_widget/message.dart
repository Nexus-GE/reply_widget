import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final bool isReply;
  final String text;
  const MessageWidget({
    super.key,
    this.isReply = false,
    required this.text,
  });
  factory MessageWidget.reply() {
    return const MessageWidget(
      isReply: true,
      text:
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
    );
  }

  factory MessageWidget.text() {
    return const MessageWidget(
      text: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate',
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isReply ? Colors.grey.shade500 : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade700),
      ),
      child: Text(text),
    );
  }
}
