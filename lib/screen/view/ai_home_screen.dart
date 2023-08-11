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
        backgroundColor: Colors.teal.shade300,
        actions: [
          IconButton(onPressed: () {
            Get.toNamed('/serch');
          }, icon: Icon(Icons.search_rounded),)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 30.h,),itemBuilder: (context, index) {
                return InkWell(
                  onTap:() {
                    Get.toNamed('/web',arguments: controller.itemList[index].link);
                  },
                  child: Container(
                    // height: 100.h,
                    // width: 48.w,
                    margin: EdgeInsets.all(6.sp),
                    padding: EdgeInsets.all(10.sp),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 5,),
                        Container(height: 5.h,width:10.w,decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("${controller.itemList[index].photo}"),fit: BoxFit.fill)
                        ),),
                        SizedBox(height: 2.h,),
                        Text("${controller.itemList[index].name}",style: TextStyle(color: Colors.black,fontSize: 20),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("${controller.itemList[index].con}",style: TextStyle(color: Colors.black),)),
                        ),

                      ],
                    ),
                  )
                );
              },itemCount: controller.itemList.length,scrollDirection: Axis.vertical,),
            ),
          ),
          Center(
            child: Container(
              height: 100,
              child: AdWidget(ad: AdHelper.adhelper.bannerAd!),
            ),
          ),
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
