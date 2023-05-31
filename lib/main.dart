import 'package:flutter/material.dart';
import 'package:repositorypattern/view/add_user_view.dart';
import 'package:repositorypattern/view/display_user_view.dart';

import 'di/di.dart';

void main() {
  initModule();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AddUserView(),
        '/displayUser': (context) => const DisplayUserView(),
      },
    ),
  );
}
