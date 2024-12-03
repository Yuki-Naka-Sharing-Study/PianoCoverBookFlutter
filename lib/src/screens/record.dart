import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('記録する'),
      ),
      body: Column(
        children: [
          const Row(
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

          const SizedBox(height: 8),

          const Row(
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

          const SizedBox(height: 8),

          const Row(
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

          const SizedBox(height: 8),

          const Text(
            '右手の習熟度',
            style: TextStyle(
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 4),

          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 13.0,
            animation: true,
            percent: 0.7,
            center: Text("70.0%", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            // footer: Text("Sales this week", style: TextStyle(fontSize: 14),),
            circularStrokeCap: CircularStrokeCap.square,
            progressColor: Colors.purple,
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2500,
              percent: 0.8,
              // center: Text("70.0%"),
              // linearStrokeCap: LinearStrokeCap.roundAll,
              barRadius: Radius.circular(15),
              progressColor: Colors.purple,
            ),
          ),

          const Text(
            '左手の習熟度',
            style: TextStyle(
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 4),

          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 13.0,
            animation: true,
            percent: 0.7,
            center: Text("70.0%", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            // footer: Text("Sales this week", style: TextStyle(fontSize: 14),),
            circularStrokeCap: CircularStrokeCap.square,
            progressColor: Colors.purple,
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2500,
              percent: 0.8,
              // center: Text("70.0%"),
              // linearStrokeCap: LinearStrokeCap.roundAll,
              barRadius: Radius.circular(15),
              progressColor: Colors.purple,
            ),
          ),

          const SizedBox(height: 8),

          ElevatedButton(
            child: const Text('Button'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {}, )
        ],
      ),
    );
  }
}