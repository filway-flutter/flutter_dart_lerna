import 'package:flutter/material.dart';
import 'package:flutter_dart_lerna/data_type.dart';
import 'package:flutter_dart_lerna/oop_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter必备Dart基础',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter必备Dart基础'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    _oopLearn();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            DataType()
          ],
        ),
      ),
    );
  }

  void _oopLearn() {
    print('----_oopLearn()----');
    Logger log1 = Logger();
    Logger log2 = Logger();
    print(log1 == log2);

    Student.doPrint('_oopLearn'); // 调用静态方法

    // 创建实例
    Student stu1 = Student('电子科技大学', 'filway', 18);
    stu1.school = '985';
    print(stu1.toString());

    Student stu2 = Student('北大', 'Tom', 16, city: '成都', country: '中国');
    print(stu2.toString());

    StudyFlutter studyFlutter = StudyFlutter();
    studyFlutter.study();
  }
}
