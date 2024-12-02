import 'package:flutter/material.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('記録する'),
      ),
      body: const Column(
        children: [
          Row(
            children: [
              SizedBox(width: 16),
              Text("曲名"),
              SizedBox(width: 16),
              Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: 'ラ・カンパネラ',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(width: 16),
            ],
          ),

          SizedBox(height: 8),

          Row(
            children: [
              SizedBox(width: 16),
              Text("作曲者名"),
              SizedBox(width: 16),
              Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: 'リスト',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(width: 16),
            ],
          ),

          SizedBox(height: 8),

          Row(
            children: [
              SizedBox(width: 16),
              Text("メモ"),
              SizedBox(width: 16),
              Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: 'アルペジオが難しい。',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(width: 16),
            ],
          ),

          Text(
            '右手の習熟度',
            style: TextStyle(
              fontSize: 20,
            ),
          ),

          SizedBox(height: 4),

          // ○○％のCircular Progress Bar


          // ○○％のSeekBar

          Text(
            '左手の習熟度',
            style: TextStyle(
              fontSize: 20,
            ),
          ),

          SizedBox(height: 4),

          // ○○％のCircular Progress Bar


          // ○○％のSeekBar


        ],

      ),
    );
  }
}