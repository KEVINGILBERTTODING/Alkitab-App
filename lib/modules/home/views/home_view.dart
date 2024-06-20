import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yesheis/core/constans/constans.dart';
import 'package:yesheis/modules/home/controllers/home_controller.dart';
import 'package:yesheis/styles/style_app.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                Constans.APPNAME,
                style: TextStyle(fontFamily: 'rbmed', fontSize: 20.sp),
              ),
              trailing: IconButton(
                onPressed: () {
                  Get.bottomSheet(ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.w),
                      topRight: Radius.circular(20.w),
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.w),
                              child: Container(
                                width: 50.w,
                                height: 6.h,
                                decoration:
                                    BoxDecoration(color: Colors.grey[100]),
                              ),
                            ),
                            Text("Pilih Pasal")
                          ],
                        ),
                      ),
                    ),
                  ));
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(StyleApp.primary),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // app bar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: double.infinity,
                      height: 90.h,
                      decoration: BoxDecoration(color: StyleApp.banner),
                      child: Stack(
                        children: [
                          Image.asset(
                            width: double.infinity,
                            'assets/img/banner.png',
                            fit: BoxFit.cover,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ListTile(
                              title: Text(
                                controller.getTimeOfDay(),
                                style: TextStyle(
                                    fontFamily: 'rbbold',
                                    fontSize: 15.sp,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                'Jangan lupa baca Alkitab\nhari ini yaaa!',
                                style: TextStyle(
                                    fontFamily: 'rbmed',
                                    fontSize: 12.sp,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    'Kejadian 1',
                    style: TextStyle(
                        fontFamily: 'rbbold',
                        fontSize: 25.sp,
                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Allah menciptakan langit dan bumi serta isinya',
                    style: TextStyle(
                        fontFamily: 'rbmed',
                        fontSize: 18.sp,
                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  verse(1, ' Pada mulanya Allah menciptakan langit dan bumi.'),
                  SizedBox(
                    height: 5.0,
                  ),

                  verse(2,
                      ' Bumi belum berbentuk dan kosong; gelap gulita menutupi samudera raya, dan Roh Allah melayang-layang di atas permukaan air.'),

                  SizedBox(
                    height: 5.0,
                  ),

                  verse(3,
                      ' Berfirmanlah Allah: \"Jadilah terang.\" Lalu terang itu jadi.'),

                  SizedBox(
                    height: 5.0,
                  ),

                  verse(4,
                      ' Allah melihat bahwa terang itu baik, lalu dipisahkan-Nyalah terang itu dari gelap.'),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  RichText verse(int verse, String text) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: verse.toString(),
            style: TextStyle(
                fontFamily: 'rbmed', fontSize: 20.sp, color: StyleApp.primary)),
        TextSpan(
            text: text,
            style: TextStyle(
                fontFamily: 'rbmed', fontSize: 13.sp, color: Colors.black)),
      ]),
    );
  }
}
