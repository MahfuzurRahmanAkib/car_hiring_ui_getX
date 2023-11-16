import 'package:car_rental_app/app/modules/classicCarDetails/views/classic_car_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardWidget extends StatelessWidget {
  String title, subTitle, link;
  Color listColor;
  IconData icon;
  int index;

  CardWidget(
      {super.key,
      required this.link,
      required this.title,
      required this.subTitle,
      required this.listColor,
      this.icon = Icons.star_border_sharp,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ClassicCarDetailsView());
      },
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.antiAlias,
        children: [
          Container(
            height: 180.h,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 35.r),
                  height: 143.50.h,
                  width: 306.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Container(
                      color: listColor,
                      padding: EdgeInsets.all(20.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 266.w,
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.50.r,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 266.w,
                            child: Text(
                              subTitle,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 25.h),
                          Expanded(
                            child: Icon(
                              Icons.star_border_outlined,
                              size: 30.r,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -5.r,
            right: 55.r,
            child: SizedBox(
              height: 120.h,
              width: 160.w,
              child: Image.asset(
                link,
                fit: BoxFit.cover,
                height: 120.h,
                width: 200.w,
              ),
            ),
          )
        ],
      ),
    );
  }
}
