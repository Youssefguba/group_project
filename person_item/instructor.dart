import 'person.dart';

class Instructor extends Person {
  Instructor({
    required super.name,
    required super.age,
    required this.lessons,
  });

  List<String> lessons;

  void addLesson(String lesson) {
    lessons.add(lesson);
  }

  void showLessons() {
    for (var i = 0; i < lessons.length; i++) {
      print('Lesson number : $i is ${lessons[i]} ');
    }
  }

  void info() {
    print('My name is $name');
  }
}
