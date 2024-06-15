
import 'package:flutter/material.dart';
import 'package:office/const.dart';

class EditPage extends StatelessWidget {
  EditPage(
      {super.key,
      required this.name,
      required this.email,
      required this.phone});

  final String name;
  final String email;
  final String phone;

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: _name,
            decoration: InputDecoration(label: Text('enter name')),
          ),
          TextFormField(
            controller: _email,
            decoration: InputDecoration(label: Text('enter email')),
          ),
          TextFormField(
            controller: _phone,
            decoration: InputDecoration(label: Text('enter phone')),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, {
            'name': _name.text,
            'email': _email.text,
            'phone': _phone.text,
          });
          print(constsList.users);
        },
      ),
    );
  }
}
