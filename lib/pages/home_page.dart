import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../widgets/cred_card.dart';
import '../widgets/social_login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                'assets/images/image.jpg',
                height: MediaQuery.sizeOf(context).height * 0.35,
                width: MediaQuery.sizeOf(context).width,
              ),
              Container(
                padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                decoration: BoxDecoration(
                    color: Colors.purple.withOpacity(0.7),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(50))),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 5),
                  child: Column(
                    children: [
                      CredCard(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Custom_Button(
                                text: 'Create a new account',
                                weight: FontWeight.normal,
                                size: 12,
                                textColor: Colors.black,
                                color: Colors.white),
                          ),
                          Expanded(
                            child: Custom_Button(
                                text: 'SIGNIN',
                                weight: FontWeight.bold,
                                size: 15,
                                textColor: Colors.white,
                                color: Colors.blue),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(child: Text('-------Social Login------')),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialLogin(color: Colors.orange, text: 'G'),
                          SizedBox(
                            width: 5,
                          ),
                          SocialLogin(
                              color: CupertinoColors.activeBlue, text: 'F'),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
