import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../data/widgets/main_card.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  /// For Making All List

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            width: 24.09.w,
            height: 27.53.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {},
              icon: Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 24.r,
                ),
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            SizedBox(
              width: 100.w,
            ),
            Text(
              'Cars',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.50.r,
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: controller.carList.length,
        itemBuilder: (context, index) {
          var car = controller.carList[index];
          int currentIndex = index;

          return CardWidget(
              title: car.title,
              subTitle: car.subTitle,
              listColor: car.listColor,
              link: car.link,
              index: currentIndex
          );
        },
      ),
    );
  }
}
