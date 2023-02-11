import 'group.dart';
import 'person_item/instructor.dart';
import 'person_item/person.dart';
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

  // whoIsAttend(student: studentOne);
  // whoIsAttend(instruct: instructor);

  whoIsAttended(person: studentOne);
  whoIsAttended(person: instructor);

  print(studentOne.runtimeType);

  // studentOne.setAge = 36;
  // studentOne.setEmail = "youssef@yahoo.com";
  // studentOne.attended();
  // studentOne.attended();
  // studentTwo.attended();

  // instructor.addLesson('oop');
  // instructor.showLessons();

  // group.deleteStudent(studentOne);
  // group.deleteStudent(Student(name: 'Kareem', age: 12));
}

void whoIsAttend({
  Student? student,
  Instructor? instruct,
}) {
  if (student != null) {
    print('Student attend : ${student.name}');
  }
  if (instruct != null) {
    print('Instructor attended ${instruct.name}');
  }
}

void whoIsAttended({Person? person}) {
  if (person != null) {
    print('Person is attended : ${person.name}');
  }
}
