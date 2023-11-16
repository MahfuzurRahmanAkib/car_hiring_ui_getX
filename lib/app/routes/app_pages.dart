import 'package:get/get.dart';

import '../modules/bike/bindings/bike_binding.dart';
import '../modules/bike/views/bike_view.dart';
import '../modules/bottomNavBar/bindings/bottom_nav_bar_binding.dart';
import '../modules/bottomNavBar/views/bottom_nav_bar_view.dart';
import '../modules/car/bindings/car_binding.dart';
import '../modules/car/views/car_view.dart';
import '../modules/classicCarDetails/bindings/classic_car_details_binding.dart';
import '../modules/classicCarDetails/views/classic_car_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/motorHomeDetails/bindings/motor_home_details_binding.dart';
import '../modules/motorHomeDetails/views/motor_home_details_view.dart';
import '../modules/vaspa_details/bindings/vaspa_details_binding.dart';
import '../modules/vaspa_details/views/vaspa_details_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.CAR,
      page: () => const CarView(),
      binding: CarBinding(),
    ),
    GetPage(
      name: _Paths.BIKE,
      page: () => const BikeView(),
      binding: BikeBinding(),
    ),
    GetPage(
      name: _Paths.CLASSIC_CAR_DETAILS,
      page: () => ClassicCarDetailsView(),
      binding: ClassicCarDetailsBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAV_BAR,
      page: () => BottomNavBarView(),
      binding: BottomNavBarBinding(),
    ),
    GetPage(
      name: _Paths.MOTOR_HOME_DETAILS,
      page: () => const MotorHomeDetailsView(),
      binding: MotorHomeDetailsBinding(),
    ),
    GetPage(
      name: _Paths.VASPA_DETAILS,
      page: () => const VaspaDetailsView(),
      binding: VaspaDetailsBinding(),
    ),
  ];
}
