import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/widgets/detail_card.dart';
import '../controllers/motor_home_details_controller.dart';

class MotorHomeDetailsView extends GetView<MotorHomeDetailsController> {
  const MotorHomeDetailsView({Key? key}) : super(key: key);

  /// For Making Big Car Details

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {
                controller.goToBottomBar();
              },
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
              'RVs',
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
      body: DetailsWidget(
        title: "Motorhome",
        subTitle: "\$50/day",
        link: "assets/images/ert.png",
        description: 'Description',
        details: 'Who hasn’t dreamt about a roadtrip? Rent this van and make your dreams come true.',
        listColor: Color(0xFF2A3640),
        icon: Icons.star_border_sharp,
      ),
    );
  }
}
