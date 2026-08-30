import 'package:flutter/material.dart';
import 'package:study_flutter/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Material Design을 기반으로 앱을 만들 때 가장 처음에 위치해야 하는 필수 위젯
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      // Home 속성: 첫 화면을 설정
      home: const MainPage(),
      // home: const IosStyleScreen(),
    );
  }
}
