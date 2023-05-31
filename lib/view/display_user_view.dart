import 'package:flutter/material.dart';
import 'package:repositorypattern/di/di.dart';
import 'package:repositorypattern/repository/user_repository.dart';


class DisplayUserView extends StatefulWidget {
  const DisplayUserView({super.key});

  @override
  State<DisplayUserView> createState() => _DisplayUserViewState();
}

class _DisplayUserViewState extends State<DisplayUserView> {
  var userList = getIt<UserRepository>().getUsers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Display User",
          ),
        ),
        body: Column(
          children: [
            const Text("User List"),
            ListView.builder(
              shrinkWrap: true,
              itemCount: userList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(userList[index].name),
                  subtitle: Text(userList[index].dob),
                );
              },
            ),
          ],
        ));
  }
}
