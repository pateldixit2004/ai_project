import 'package:ai_project/screen/controller/controller.dart';
import 'package:ai_project/utils/ads_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Adcontroller controller=Get.put(Adcontroller());
  @override
  void initState() {
    super.initState();
    AdHelper.adhelper.loadBannerAd();
    AdHelper.adhelper.loadInterstitialAd();
    AdHelper.adhelper.loadNativeAd();
    AdHelper.adhelper.loadrewaredAd();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 100,
              child: AdWidget(ad: AdHelper.adhelper.bannerAd!),
            ),
          ),
          ElevatedButton(onPressed: () {
            if(AdHelper.adhelper.interstitialAd!=null)
              {
                AdHelper.adhelper.interstitialAd!.show();
                AdHelper.adhelper.loadInterstitialAd();
              }
          }, child: Text('Interstitial testing'),),
          ElevatedButton(onPressed: () {
            if(AdHelper.adhelper.rewardedAd!=null)
              {
                AdHelper.adhelper.rewardedAd!.show(onUserEarnedReward: (ad, reward) {},);
                AdHelper.adhelper.loadrewaredAd();
              }
          }, child: Text('Rewared testing'),),
          // ElevatedButton(onPressed: () {
          //   if(AdHelper.adhelper.nativeAd!=null)
          //     {
          //       // AdHelper.adhelper.nativeAd!.
          //       AdHelper.adhelper.loadNativeAd();
          //
          //     }
          // }, child: Text('Native testing'),),
          // Center(
          //   child: Container(
          //     height: 100,
          //     alignment: Alignment.center,
          //     child: AdWidget(ad: AdHelper.adhelper.nativeAd!),
          //   ),
          // ),

          SizedBox(
            height: 100,
            width: 400,
            child: AdWidget(ad: AdHelper.adhelper!.nativeAd!),
          )
        ],

      ),
    ),);
  }
}
