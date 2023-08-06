import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {
  static final adhelper = AdHelper._();

  AdHelper._();

  BannerAd? bannerAd;
  InterstitialAd? interstitialAd;
  NativeAd? nativeAd;

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


  void loadNativeAd()
  {
    nativeAd=NativeAd(adUnitId: 'ca-app-pub-3940256099942544/2247696110', listener: NativeAdListener(), request: AdRequest());
    nativeAd!.load();
  }
}
