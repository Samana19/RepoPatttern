import 'package:flutter/material.dart';


class AddUserView extends StatefulWidget {
  const AddUserView({Key? key}) : super(key: key);

  @override
  State<AddUserView> createState() => _AddUserViewState();
}

class _AddUserViewState extends State<AddUserView> {
  final idController = TextEditingController();
  final nameController = TextEditingController();
  final dobController = TextEditingController();
  final timeController = TextEditingController();
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add User"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: idController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ID',
              ),
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
            TextFormField(
              controller: dobController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Date of Birth',
              ),
              readOnly: true,
              onTap: () async {
                selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                );

                if (selectedDate != null) {
                  setState(
                    () {
                      dobController.text = selectedDate.toString();
                    },
                  );
                }
              },
            ),
            TextFormField(
              controller: timeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Time of Birth',
              ),
              readOnly: true,
              onTap: () async {
                selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (selectedTime != null) {
                  setState(
                    () {
                      timeController.text = selectedTime.toString();
                    },
                  );
                }
              },
              
            ),
          ],
        ),
      ),
    );
  }
}
