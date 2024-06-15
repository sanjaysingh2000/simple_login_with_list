import 'package:flutter/material.dart';
import 'edit_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {super.key,
      required this.name,
      required this.password,
      required this.email,
      required this.phone});

  final String name;
  final String password;
  final String email;
  final String phone;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _editedName = '';
  String _editedEmail = '';
  String _editedPhone = '';

  @override
  void initState() {
    // TODO: implement initState
    _editedName = widget.name;
    _editedEmail = widget.email;
    _editedPhone = widget.phone;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('user details'),
          Text(_editedName),
          Text(widget.password),
          Text(_editedEmail),
          Text(_editedPhone),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final editedData = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditPage(
                  name: widget.name,
                  email: widget.email,
                  phone: widget.phone,
                ),
              )
          );
          if (editedData != null) {
            setState(() {
              _editedName = editedData['name'] ?? _editedName;
              _editedEmail = editedData['email'] ?? _editedEmail;
              _editedPhone = editedData['phone'] ?? _editedPhone;
            });
          }
        },
      ),
    );
  }
}