import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../modules/bottomNavBar/views/bottom_nav_bar_view.dart';

class OnBoarding extends StatelessWidget {
  String title, description, link;

  OnBoarding(
      {super.key,
      required this.title,
      required this.description,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Text(
              'Beepy',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                height: 0.06.r,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            SizedBox(
              height: 400.h,
              width: Get.width,
              child: Image.asset(
                link,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 64.h,
            ),
            SizedBox(
              width: 298.w,
              height: 39.h,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
              width: 264.w,
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: 305.w,
              height: 57.h,
              decoration: ShapeDecoration(
                color: const Color(0xFFFA7F35),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const BottomNavBarView());
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFFA7F35),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      "Continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
