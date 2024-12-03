import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});
  @override
  Widget build(BuildContext context) {
    final items = [
      {'text': 'よくある質問', 'image': 'images/right_arrow.png'},
      {'text': 'このアプリについて', 'image': 'images/right_arrow_second.png'},
      {'text': 'お問い合わせ', 'image': 'images/right_arrow_second.png'},
      {'text': 'レビューする', 'image': 'images/right_arrow_second.png'},
      {'text': 'このアプリを共有する', 'image': 'images/right_arrow_second.png'},
      {'text': 'バージョン', 'image': 'images/right_arrow.png'},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            title: Text(item['text'] as String),
            trailing: Image.asset(
              item['image'] as String,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}