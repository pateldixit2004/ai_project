import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AiScreen extends StatefulWidget {
  const AiScreen({super.key});

  @override
  State<AiScreen> createState() => _AiScreenState();
}

class _AiScreenState extends State<AiScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.toNamed("/home");
    },);
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Container(height: 15.h,width:15.h,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.sp),
              color: Color(0xffe5ac73),
              //   color: Colors.teal.shade300,
              image: DecorationImage(image
                  : AssetImage("assets/logo/zz_1.png"),filterQuality: FilterQuality.high,fit: BoxFit.cover)
            ),),
      ),
    ),);
  }
}
