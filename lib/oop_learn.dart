// 定义一个Dart类, 所有类都继承自Object

class Student extends Person {
  // 定义类型的变量
  String? _school; // 通过下划线来标识私有字段
  String? city;
  String? country;
  String name;

  // 构造方法
  // 通过this._scholl初始化自有参数
  // name, age交给父类进行初始化
  // country 默认参数
  // city为可选参数
  Student(this._school, String name, int age, {this.city, this.country = '中国'}) : name='$country.$city.$name', super(name, age) {
    print('构造方法体不是必须的');
  }

  @override
  String toString() {
    return 'name: $name school: ${this._school}, city: $city, country: $country ${super.toString()}';;
  }

  // 命名构造方法
  Student.cover(Student stu, this.name): super(stu.name, stu.age) {
   print('命名构造方法');
  }

  // 命名工厂构造方法: factory [类名+.+方法名]
  factory Student.stu(Student stu) {
    return Student(stu._school, stu.name, stu.age);
  }

  String get school => _school!;

  set school(String value) {
    _school = value;
  }

  // 静态方法
  static doPrint(String str) {
    print('doPrint: $str');
  }

}

class Logger {
  static Logger? _cache;
  // 工厂构造方法, 工厂模式
  factory Logger() {
    if (_cache == null) {
      _cache = Logger._internal();
    }
    return _cache!; // 空值断言符, 确保不为空的时候 使用
  }

  // 私有的命名构造方法
  Logger._internal();

  void log(String msg) {
    print(msg);
  }
}

// 已经默认继承
class Person {
  String name;
  int age;
  Person(this.name, this.age); //初始化变量, 标准构造方法
  // 重写父类方法
  @override
  String toString() {
    return 'name: $name, age: $age';
  }
}


class StudyFlutter extends Study {
  @override
  void study() {
    // 必须实现抽象方法
    print('Learning Flutter');
  }
}

// 抽象类
// 不能被实例化。定义接口的时候 很有用
abstract class Study {
  void study(); // 抽象方法
}

// mixins 多个类结构中复用代码
// 要使用mixins, 在with关键字后面跟上一个或者多个mixin的名字 (用逗号分割) with要用在extends关键词之前
// mixins的特征: 实现 mixin, 就创建一个继承 Object 类的子类(不能继承其他类), 不能声明任何的构造方法，不能调用父类的super


