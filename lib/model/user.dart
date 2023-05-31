class User {
  String name;
  int age;
  int id;
  String dob;
  String birthTime;

  User(
      {required this.name,
      required this.age,
      required this.id,
      required this.dob,
      required this.birthTime});

  @override
  String toString() {
    return 'User{name: $name, age: $age, id: $id , dob: $dob, birthTime: $birthTime}';
  }
}
