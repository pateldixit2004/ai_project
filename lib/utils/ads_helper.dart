import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../screen/controller/controller.dart';

class AdHelper {
  static final adhelper = AdHelper._();

  AdHelper._();

  Adcontroller controller=Get.put(Adcontroller());

  BannerAd? bannerAd;
  InterstitialAd? interstitialAd;
  NativeAd? nativeAd;
  RewardedAd? rewardedAd;

  void loadBannerAd() {
    bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: "ca-app-pub-3940256099942544/6300978111",
        listener: BannerAdListener(),
        request: AdRequest());

    bannerAd!.load();
  }

  void loadInterstitialAd() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/1033173712',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            interstitialAd = ad;
          },
          onAdFailedToLoad: (error) {
            print(
                "=======================================================================================$error");
          },
        ));
  }

  void loadNativeAd() {
    nativeAd = NativeAd(
        adUnitId: 'ca-app-pub-3940256099942544/2247696110',
        factoryId: 'listTile',
        listener: NativeAdListener(
          onAdFailedToLoad:(ad, error) {
            ad.dispose();
          },
          onAdLoaded:(ad) {
            controller.isNativeAdLoaded.value=true;
            nativeAd=ad as NativeAd?;
          },
        ),
        request: AdRequest());
    nativeAd!.load();
  }


  void loadrewaredAd() {
    RewardedAd.load(
      adUnitId: "ca-app-pub-3940256099942544/5224354917",
      request: AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(

            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();
            },

            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
            },
          );
          rewardedAd = ad;
          print("data got...........reward.......");
        },

        onAdFailedToLoad: (error) {
          print('@@@@@@@@@@@    RewardAd failed to load: $error');
        },
      ),
    );
  }
}
