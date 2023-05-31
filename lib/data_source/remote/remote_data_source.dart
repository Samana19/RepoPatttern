import '../../model/user.dart';

class RemoteSource {
  List<User> users = [
    User(name: "Remote John", age: 18, id: 1, dob: "12/12/2000", birthTime: "12:00"),
    User(name: "Remote Dear", age: 20, id: 2, dob: "12/12/2000", birthTime: "12:00"),
    User(name: "Remote Joe", age: 35, id: 3, dob: "12/12/2000", birthTime: "12:00"),
  ];
  bool addUser(User users) {
    this.users.add(users);
    return true;
  }

  List<User> getUser() {
    return users;
  }
}
