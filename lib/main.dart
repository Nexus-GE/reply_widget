import 'package:flutter/material.dart';
import 'package:reply_widget/expirment_widget.dart';
import 'package:reply_widget/test_widget/message.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.blue.shade50,
            child: Experiment(children: [
              MessageWidget.reply(),
              MessageWidget.replyTo(),
            ]),
          ),
        ),
      ),
    );
  }
}
