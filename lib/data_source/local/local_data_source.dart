import 'package:repositorypattern/model/user.dart';

class LocalSource {
  List<User> users = [
    User(name: "Local John", age: 18, id: 1, dob: "12/12/2000", birthTime: "12:00"),
    User(name: "Local Dear", age: 20, id: 2, dob: "12/12/2000", birthTime: "12:00"),
  ];
  bool addUser(User user) {
    users.add(user);
    return true;
  }

  List<User> getUsers() {
    return users;
  }
}
