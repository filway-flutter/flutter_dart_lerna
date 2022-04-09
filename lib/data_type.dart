import 'package:flutter/material.dart';

// 常用数据类型
class DataType extends StatefulWidget {
  const DataType({Key? key}) : super(key: key);

  @override
  State<DataType> createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
  @override
  Widget build(BuildContext context) {
    _numType();
    _stringType();
    _boolType();
    _listType();
    _mapType();
    _tips();
    return Container(child: Text('常用数据类型，请查看控制台数据'),);
  }

  // 数字类型
  void _numType() {
    num num1 = -1.0; // 数字类型的父类
    num num2 = 2; // 数字类型的父类
    int int1 = 3; // 只能接受整数
    double d1 = 1.68; // 双精度
    print("num: $num1 num2: $num2 int: $int1 double: $d1");
    print(num1.abs());
    print(num1.toInt());
    print(num1.toDouble());
  }

  // 字符串类型
  void _stringType() {
    String str1 = '字符串', str2 = "双引号";
    String str3 = 'str1: $str1 str2: $str2'; // 拼接字符串
    String str4 = 'str1: ' + str1 + ' str2: ' + str2; //拼接字符串2
    String str5 = '常用数据类型，请看控制台输出';
    print(str3);
    print(str4);
    // 常用方法
    print(str5.substring(1, 5)); // 截取字符串
    print(str5.indexOf('类型')); // 获取指定字符串位置
    // 作业:
    print(str5.startsWith('常用'));
    print(str5.replaceAll('看', 'look'));
    print(str5.contains('控制台'));
    print(str5.split('，')[0]);
  }

  // 布尔类型
  void _boolType() {
    bool success = true, fail = false;
    print(success);
    print(fail);
    print(success || fail);
    print(success && fail);
  }

  // 集合类型
  void _listType() {
    print('----_listType----');
    List list1 = [1, 2, 3]; // 初始化添加元素
    List list2 = ['asdf', 'filway', 18]; // 初始化添加元素
    list1.add(4);
    list1.addAll(list2);
    List list4 = List.generate(3, (index) => index * 2 );
    print(list4);

    // 遍历
    // 第一种遍历方式
    for (int i = 0; i < list1.length; i++) {
      //print(list1[i]);
    }

    // 第二种遍历方式
    for (var o in list1) {
      //print(o);
    }

    // 第三种遍历方式
    list1.forEach((element) {
      //print(element);
    });

    // 作业
    //print(list4.remove(2));
    //print(list4.removeAt(0));
    //print(list4.removeLast());
    //list4.removeRange(0, 2);
    //list4.removeWhere((element) => element == 4 || element == 2);
    //list4.insert(2, 'filway');
    //print(list4.sublist(1, 2));
    print(list4.indexOf(9));
    print(list4);
  }

  // map类型， key和value相关联的对象, key唯一，重复的话会覆盖前面的
  void _mapType() {
    print('----_mapType----');
    // 初始化
    Map names = {
      'xiaoming': '小明',
      'xiaohong': '小红',
    }, student = {
      'name': 'filway',
      'age': 18
    };
    Map ages = {};
    ages['xiaoming'] = 16;
    ages['xiaohong'] = 18;
    print(names);
    print(ages);
    print(student);

    // 遍历
    names.forEach((key, value) {
      print(key);
      print(value);
    });
    Map ages2 = ages.map((key, value) => MapEntry(value, key));
    print(ages2);

    for (var key in ages.keys) {
      print('$key ${ages[key]}');
    }

    // 作业 keys, values, remove, containsKey
    dynamic ageKeys = ages.keys;
    print(ageKeys);
    print(ages.values);
    ages.remove('xiaohong');
    print(ages.containsKey('xiaoming'));
    print(ages);

  }

  void _tips() {
    print('----_tips----');
    // dynamic var Object 区别
    // dynamic
    dynamic x = 5; // 定义一个变量, 动态类型，编译时候不会知道什么类型，运行时候才知道具体的类型 (缺点，会使语法检测失效, 最好不用)
    print(x.runtimeType);
    print(x);
    x = 'filway'; // 可以随意修改类型
    print(x);

    // var
    var y = 5; // 定义一个变量，动态类型，编译时候会直接推断出来确定类型，不允许再被修改
    y = 12;
    print(y.runtimeType);
    print(y);

    // Object
    Object o1 = '111'; // 确切的类型: Object类型， 可以直接调用Object的方法
    print(o1.runtimeType);
    print(o1);
  }
}
