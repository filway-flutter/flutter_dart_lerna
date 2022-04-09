// 面向对象的编程技巧
// 一：封装、多态、继承
// 善于封装、大到功能模块的封装、类的封装与抽象、小到方法的封装，封装的目的在于复用和易于扩展和维护
// 不要在一个方法体里面堆砌太多的代码，小于100行
// 二：点点点的技巧
// 在一个类的世界里，万物皆对象，1点查看对象的属性 2点看源码 3点看究竟

void main() {
  List? list;
  // 技巧1：安全的调用
  // 通过 ?. 的方式调用，防止空异常
  print(list?.length);

  // 技巧2：为表达式设置默认值, 通过 ??

  print(list?.length ?? -1);

  // 技巧3：
  list = [];
  list.add(0);
  list.add('');
  list.add(null);

  if (list[0] == null || list[0] == '' || list[0] == 0) {
    print('list[0] is empty');
  }
  if ([null, '', 0].contains(list[0])) {
    print('list[0] is empty');
  }
}
