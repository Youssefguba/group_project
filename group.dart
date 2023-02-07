import 'person_item/instructor.dart';
import 'person_item/student.dart';

class Group {
  String name;
  Instructor instructor;
  List<Student> listOfStudent;
  String date;

  // composition
  Group({
    required this.name,
    required this.instructor,
    required this.listOfStudent,
    required this.date,
  });

  void addNewStudent(Student student) {
    listOfStudent.add(student);
  }

  void deleteStudent(Student student) {
    if (listOfStudent.contains(student)) {
      listOfStudent.remove(student);
    } else if (listOfStudent.isEmpty) {
      print('List is Empty!');
    } else {
      print('the student not exist!');
    }
  }

  void showStudent() {
    for (var student in listOfStudent) {
      print('Student is ${student.name}');
    }
  }
}
