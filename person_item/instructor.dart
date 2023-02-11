import 'person.dart';

class Instructor extends Person {
  Instructor({
    required super.name,
    required super.age,
    required this.lessons,
  });

  // Instance Variables
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

  void set setLessons(List<String> newList) {
    if (newList.length < 2) {
      print('You should enter 3 items min');
    } else {
      lessons = newList;
    }
  }
}
