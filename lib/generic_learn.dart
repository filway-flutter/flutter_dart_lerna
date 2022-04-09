import 'package:flutter_dart_lerna/oop_learn.dart';

class TestGeneric {
  void start() {
    Cache<String> cache1 = Cache();
    cache1.setItem('cache1', '111');
    String string1 = cache1.getItem('cache1');
    print(string1);

    Cache<int> cache2 = Cache();
    cache2.setItem('cache2', 12321);
    int int1 = cache2.getItem('cache2');
    print(int1);

    Member<Student> member = Member(Student('电子科大', '', 16, city: '成都'));
    print(member.finxedName());
  }
}

// 泛型类
// 提高代码的复用度
class Cache<T> {
  static final _cached = Map();

  void setItem(String key, T value) {
    _cached[key] = value!;
  }

  T getItem(String key) {
    return _cached[key];
  }
}

class Member<T extends Person> {
  T _person;

  Member(this._person);

  String finxedName() {
    return 'fixed: ${_person.name}';
  }
}
