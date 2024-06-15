import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:office/pages/twitter_signup.dart';
import 'home_screen.dart';
import 'package:office/const.dart';

class Twitter extends StatefulWidget {
  const Twitter({
    super.key,
  });

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {

    bool logged = false;
    String username = _usernameController.text.toString();
    String password = _passwordController.text.toString();
    for (int i = 0; i < constsList.users.length; i++) {
      Map<dynamic, dynamic> user = constsList.users[i];
      print(user);
      String nameMap = user['name'];
      String passwordMap = user['password'];
      if (nameMap == username && passwordMap == password) {
        String phone = user['phone'];
        String email = user['email'];
        logged = true;
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('User logged In')));
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(
                name: nameMap,
                password: password,
                email: email,
                phone: phone,
              ),
            )
        );
        return;
      }
    }
    if (!logged) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('user fail loggin')));
      print('logged');
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.05, horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Image.asset(
                'assets/images/img.png',
                height: height * 0.15,
                width: width * 0.15,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                'Log in to twitter ',
                style: TextStyle(
                    fontSize: height * 0.05, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    labelText: 'Phone email or username',
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.blue))),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.blue))),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Radio(
                  value: null,
                  groupValue: null,
                  onChanged: (value) {},
                ),
                const Text(
                  'Remember me ',
                  style: TextStyle(fontSize: 12),
                ),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                )
              ]),
              SizedBox(
                height: height * 0.02,
              ),
              InkWell(
                onTap: _login,
                child: Container(
                  height: height * 0.12,
                  width: width,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            CupertinoColors.systemBlue,
                            Colors.blueAccent
                          ]),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child: Text(
                    'Log in',
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                        fontSize: MediaQuery.sizeOf(context).height * 0.06),
                  )),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",
                      style: TextStyle(color: Colors.black38)),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signup(),
                            ));
                      },
                      child: const Text(
                        'Signup',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
