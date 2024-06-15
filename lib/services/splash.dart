import 'dart:async';
import 'package:flutter/material.dart';

import '../pages/twitter_page.dart';

class Splash{

  void navigateToLogin(BuildContext context){

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Twitter(),));
    });

  }

}