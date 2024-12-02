import 'package:flutter/material.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('記録確認'),
      ),
      body:
      const Center(child: Text('', style: TextStyle(fontSize: 32.0))),
    );
  }
}