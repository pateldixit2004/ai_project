import 'package:ai_project/screen/controller/ai_controller.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';

import '../../utils/ads_helper.dart';

class AiHomeScreen extends StatefulWidget {
  const AiHomeScreen({Key? key}) : super(key: key);

  @override
  State<AiHomeScreen> createState() => _AiHomeScreenState();
}

class _AiHomeScreenState extends State<AiHomeScreen> {
  AiController controller = Get.put(AiController());


  var _connectivityResult;
  bool _isConnected = false;


  @override
  void initState() {
    super.initState();
    _checkInternetConnection();
    AdHelper.adhelper.loadBannerAd();
    AdHelper.adhelper.loadInterstitialAd();
    AdHelper.adhelper.loadrewaredAd();

    // print("======================================================================$_isConnected");


  }


  Future<void> _checkInternetConnection() async {
    _connectivityResult = await Connectivity().checkConnectivity();
    if (_connectivityResult == ConnectivityResult.mobile ||
        _connectivityResult == ConnectivityResult.wifi) {
      setState(() {
        _isConnected = true;
      });
      print("=================================================$_isConnected");

    } else {
      setState(() {
        _isConnected = false;

      });
      Get.dialog(
        Dialog(
          child: Container(height: 150,child: Center(child: Text("Turn on internet"))),
        )
      );
      print("=================================================$_isConnected");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.teal.shade300,
        backgroundColor: Color(0xffd78e44),
        title: Text("AI OmniSuite",style: TextStyle(fontWeight: FontWeight.normal),),
        actions: [
          IconButton(onPressed: () {
            Get.toNamed('/serch');
            // if(AdHelper.adhelper.interstitialAd!=null)
            // {
            //   AdHelper.adhelper.interstitialAd!.show();
            //   AdHelper.adhelper.loadInterstitialAd();
            // }
          }, icon: Icon(Icons.search_rounded),)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 28.h,),itemBuilder: (context, index) {
                return InkWell(
                  onTap:() {
                    Get.toNamed('/web',arguments: controller.itemList[index].link);
                    // if(AdHelper.adhelper.rewardedAd!=null)
                    // {
                    //   AdHelper.adhelper.rewardedAd!.show(onUserEarnedReward: (ad, reward) {},);
                    //   AdHelper.adhelper.loadrewaredAd();
                    // }
                  },
                  child: Container(
                    // height: 100.h,
                    // width: 48.w,
                    margin: EdgeInsets.all(6.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.sp),
                      color: Colors.white,
                      boxShadow: [
                        // BoxShadow(blurRadius: 10.sp,color: Colors.white,blurStyle: BlurStyle.outer)
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.grey,
                            spreadRadius: 1
                        ),
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),
                        Container(height: 7.h,width:7.h,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage("${controller.itemList[index].photo}"),fit: BoxFit.fill)
                        ),),
                        SizedBox(height: 2.h,),
                        Text("${controller.itemList[index].name}",style: TextStyle(color: Colors.black,fontSize: 20),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("${controller.itemList[index].con}",style: TextStyle(color: Colors.black,),overflow: TextOverflow.ellipsis,maxLines: 2,)),
                        ),

                        // index%7==0?Container(
                        //   height: 40,
                        //   width: 100,
                        //   child: Center(
                        //     child: AdWidget(ad: AdHelper.adhelper.bannerAd!),
                        //   ),
                        // ):SizedBox(),
                      ],
                    ),
                  )
                );
              },itemCount: controller.itemList.length,scrollDirection: Axis.vertical,),
            ),
          ),
          // Center(
          //   child: Container(
          //     height: 100,
          //     child: AdWidget(ad: AdHelper.adhelper.bannerAd!),
          //   ),
          // ),
        ],
      ),
    ),);
  }

  ListTile buildListTile(int index) {
    return ListTile(
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("${index+1}"),
              CircleAvatar(backgroundImage: AssetImage('${controller.itemList[index].photo}'),),
            ],
          ),
          title: Text("${controller.itemList[index].name}"),
        );
  }
}
