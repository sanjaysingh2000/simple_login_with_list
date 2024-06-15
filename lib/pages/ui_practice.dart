import 'package:flutter/material.dart';
import '../widgets/custom_text_widget.dart';

class UI extends StatelessWidget {
  const UI({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
              ),
              height: height*0.23,
              width: width,
              child: Padding(
                padding: EdgeInsets.only(
                    left: width*0.03,
                    right: width*0.03,
                    top: height*0.02
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.window, color: Colors.white,),
                        Icon(Icons.notification_important)
                      ],
                    ),
                    SizedBox(height: height*0.02,),
                    CustomTextWidget(text: 'Hi, Programmer',color: Colors.white, fontSize: height*0.03),
                    SizedBox(height: height*0.02,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
