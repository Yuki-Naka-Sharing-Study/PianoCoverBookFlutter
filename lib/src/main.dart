import 'package:flutter/material.dart';
import 'screens/setting.dart';
import 'screens/record.dart';
import 'screens/confirm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.purple, // 背景色を指定
          selectedItemColor: Colors.white, // 選択時のアイテムの色
          unselectedItemColor: Colors.grey, // 非選択時のアイテムの色
        ),
      ),
      home: const MyStatefulWidget(),
    );
  }

}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const _screens = [
    ConfirmScreen(),
    RecordScreen(),
    SettingScreen()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.check), label: '記録確認'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: '記録する'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '設定'),
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}