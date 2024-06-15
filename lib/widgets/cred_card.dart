import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CredCard extends StatelessWidget {
  const CredCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.4,
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.02,
              vertical: MediaQuery.sizeOf(context).height * 0.01),
          child: Column(
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text('Username'),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text(
                  'Email',
                  style: TextStyle(fontSize: 12, color: CupertinoColors.black),
                )),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text(
                  'Password',
                  style: TextStyle(fontSize: 12, color: CupertinoColors.black),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
