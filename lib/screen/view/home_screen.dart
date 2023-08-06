import 'package:ai_project/utils/ads_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    AdHelper.adhelper.loadBannerAd();
    AdHelper.adhelper.loadInterstitialAd();
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
        ],
      ),
    ),);
  }
}