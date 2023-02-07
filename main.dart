import 'group.dart';
import 'person_item/instructor.dart';
import 'person_item/student.dart';

void main() {
  Student studentOne = Student(name: 'Ahmed', age: 12);
  Student studentTwo = Student(name: 'Youssef', age: 12);

  Instructor instructor = Instructor(
    name: 'Mohamed',
    age: 12,
    lessons: ['math', 'science'],
  );

  Group group = Group(
    name: 'ST26',
    instructor: instructor,
    listOfStudent: [
      studentOne,
      studentTwo,
    ],
    date: '2023',
  );

  studentOne.attended();
  studentOne.attended();
  studentTwo.attended();

  instructor.addLesson('oop');
  instructor.showLessons();

  group.deleteStudent(studentOne);
  group.deleteStudent(Student(name: 'Kareem', age: 12));
}
