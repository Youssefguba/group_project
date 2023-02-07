import 'person.dart';

class Student extends Person {
  Student({
    required super.name,
    required super.age,
    this.faculty,
  });

  int attend = 0;
  String? faculty;

  void attended() {
    attend = attend + 1;
  }

  void info() {
    print('my name is $name');
  }
}
