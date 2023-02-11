import 'human.dart';

class Person implements Human {
  String name;
  String? address;
  int age;
  String? phone;
  String? email;

  Person({
    required this.name,
    this.address,
    required this.age,
    this.email,
    this.phone,
  });

  void set setName(String newName) {
    if (newName.length >= 3 && newName.length <= 8) {
      if (newName == name) {
        print('Name should be a new one!');
      } else {
        name = newName;
        print('New name is $name');
      }
    } else {
      print('Name should be min 3 and max 8 chars');
    }
  }

  void set setAge(int newAge) {
    if (newAge >= 15 && newAge <= 35) {
      age = newAge;
      print('New Age is $age');
    } else {
      print('your age should be between 15 and 35');
    }
  }

  void set setEmail(String newEmail) {
    if ((newEmail.length >= 8 && newEmail.length <= 35) &&
        newEmail.contains('@') &&
        newEmail.contains('.')) {
      // Regular Expression
      email = newEmail;
      print('New email is $email');
    } else {
      print('your email should contains @ and .');
    }
  }

  @override
  void eat() {
    print('$name is Eating');
  }

  @override
  void move() {
    print('$name is Moving');
  }

  @override
  void sleep() {
    print('$name is Sleeping');
  }

  @override
  void fly() {
    print('$name is Flying');
  }
}
