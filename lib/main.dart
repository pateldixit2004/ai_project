import 'package:ai_project/screen/view/ai_home_screen.dart';
import 'package:ai_project/screen/view/ai_web_view.dart';
import 'package:ai_project/screen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/':(context) =>  HomeScreen(),
        '/':(context) =>  AiHomeScreen(),
        '/web':(context) =>  AiWebViewScreen(),
      },
    )
  );
}