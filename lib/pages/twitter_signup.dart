import 'package:office/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:office/pages/twitter_page.dart';
import '../widgets/custom_text_form_field.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final _key = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  submit(BuildContext context) {
    String name = _nameController.text.toString();
    String password = _passwordController.text.toString();
    String email = _emailController.text.toString();
    String phone = _phoneController.text.toString();
    Map<dynamic, dynamic> userData = {
      'name': name,
      'password': password,
      'email':email,
      'phone': phone
    };

    constsList.users.add(userData);
    print(userData);
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Twitter(),));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Form(
              key: _key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/img.png',
                    height: height * 0.15,
                    width: width * 0.15,
                  ),
                  Text(
                    'Signup in to twitter ',
                    style: TextStyle(
                        fontSize: height * 0.05, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomTextFormField(
                    validation: (p0) {
                      return null;
                    },
                    text: 'name',
                    icon: const Icon(
                      Icons.build,
                      size: 14,
                    ),
                    controller: _nameController, obscureText: false,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomTextFormField(
                      controller: _lastNameController,
                      text: 'last name',
                      icon: const Icon(Icons.build, size: 14), obscureText: false,),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomTextFormField(
                      controller: _emailController,
                      text: 'email',
                      icon: const Icon(Icons.email, size: 14), obscureText: false,),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomTextFormField(
                      controller: _phoneController,
                      text: 'Phone',
                      icon: const Icon(Icons.phone, size: 14), obscureText: false,),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CustomTextFormField(
                      controller: _passwordController,
                      text: 'Password',
                      icon: const Icon(Icons.lock, size: 14), obscureText: true,),
                  SizedBox(
                    height: height * 0.08,
                  ),
                  Container(
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
                    child: GestureDetector(
                      onTap: () {
                        submit(
                          context,
                        );
                      },
                      child: Center(
                          child: Text(
                        'Sign in',
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
                      const Text("You have an account?",
                          style: TextStyle(color: Colors.black38)),
                      InkWell(
                          onTap: () {},
                          child: const Text(
                            'Signup',
                            style: TextStyle(color: Colors.blue),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
