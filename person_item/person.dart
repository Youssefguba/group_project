class Person {
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
}
