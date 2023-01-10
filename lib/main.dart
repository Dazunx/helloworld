import 'package:flutter/material.dart';

import 'SecondPage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // const(상수화 - final도 있음) 생성자

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key); //required keyword가 뭘까 (null safety와 연관 있는 거 같다.)

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //appbar : 상단 제목 줄
        title: Text('Widget.title'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.grey,
      ),
      body: // 몸통
        ListView( // 각 항목들을 행으로 나열 (child: Column은 스크롤 자체가 안됨)
          scrollDirection: Axis.vertical, //수직 스크롤 (여기서 수평은 사이즈가 안 맞아서 안 됨)

          children: [
            ListTile( // 각 항목에 대한 여러 항목들(아이콘, 텍스트 등) 나열
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.navigate_next),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()), // 사용자의 반응 추적
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.navigate_next),
              onTap: (){},
            ),
          ],

        ),
    );
  }
}
