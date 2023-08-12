import 'package:ai_project/screen/controller/ai_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AiSerchScreen extends StatefulWidget {
  const AiSerchScreen({Key? key}) : super(key: key);

  @override
  State<AiSerchScreen> createState() => _AiSerchScreenState();
}

class _AiSerchScreenState extends State<AiSerchScreen> {
  AiController controller=Get.put(AiController());
  @override
  void initState() {
    super.initState();
    controller.serchProduct("");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: TextField(
            cursorColor: Colors.pink,
            cursorHeight: 25,
            onChanged: (value) {
              print('===========================$value');
              controller.serchProduct(value);
            },
            decoration: InputDecoration(border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10.sp),
            ),
                focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                    borderSide: BorderSide(color: Colors.grey)
                ),hintText: 'Serch...',
            ),
          ),
        ),
        backgroundColor: Colors.teal.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10.sp),
            //   ),
            //   child: TextField(
            //     onChanged: (value) {
            //       print('===========================$value');
            //       controller.serchProduct(value);
            //     },
            //     decoration: InputDecoration(border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(10.sp),
            //     ),
            //       focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10.sp),
            //         borderSide: BorderSide(color: Colors.grey)
            //       )
            //     ),
            //   ),
            // ),
             Expanded(
                child: Obx(
                  () => GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 30.h),itemBuilder: (context, index) {
                    return InkWell(
                        onTap:() {
                          // Get.toNamed('/web' ,arguments: controller.inkList);
                          Get.toNamed('/web',arguments: controller.list[index].link);

                        },
                        child: Container(
                          // height: 50.h,
                          // width: 48.w,
                          margin: EdgeInsets.all(6.sp),
                          // padding: EdgeInsets.all(10.sp),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Colors.white,
                              boxShadow: [
                                // BoxShadow(blurRadius: 10.sp,color: Colors.white,blurStyle: BlurStyle.outer)
                                BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.grey,
                                    spreadRadius: 1
                                )
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 5,),
                              Container(height: 5.h,width:10.w,decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("${controller.list[index].photo}"),fit: BoxFit.fill)
                              ),),
                              SizedBox(height: 2.h,),
                              Text("${controller.list[index].name}",style: TextStyle(color: Colors.black,fontSize: 20),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text("${controller.list[index].con}",style: TextStyle(color: Colors.black),)),
                              ),
                            ],
                          ),
                        )
                    );
                  },itemCount: controller.list.length,scrollDirection: Axis.vertical,),
                ),
              ),

          ],
        ),
      ),
    ),);
  }
}
