import 'package:flutter/material.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('記録する'),
      ),
      body: const Center(
          child: Text('', style: TextStyle(fontSize: 32.0))),
    );
  }
}