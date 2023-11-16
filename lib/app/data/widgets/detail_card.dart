import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailsWidget extends StatelessWidget {
  String title, subTitle, link, description, details;
  Color listColor;
  IconData icon;

  DetailsWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.link,
    required this.description,
    required this.details,
    required this.listColor,
    this.icon = Icons.star_border_sharp,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 35.h,
        ),
        SizedBox(
            height: 300.h, width: double.infinity.r, child: Image.asset(link)),
        SizedBox(
          height: 35.h,
        ),
        Expanded(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Container(
              padding: EdgeInsets.all(16.0.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0.r),
                  topLeft: Radius.circular(40.0.r),
                ),
                color: const Color(0xFF60B5F4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.r, right: 16.r),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      title,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 39.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 25.h),
                                    Text(
                                      subTitle,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.w400,
                                        height: 0.06,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.r),
                                  child: Icon(
                                    icon,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 38.h,
                        ),
                        SizedBox(
                          width: 315.w,
                          height: 14.49.h,
                          child: Text(
                            description,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600,
                              height: 0.06,
                              letterSpacing: -0.50,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 315.w,
                          child: Text(
                            details,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
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
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Center(
                                child: Text(
                                  'Book Now',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
