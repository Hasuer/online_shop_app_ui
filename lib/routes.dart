import 'package:get/get.dart';

import 'screen/detail/detail_screen.dart';
import 'screen/home/home_sreen.dart';



class Routes {
  static const homeScreen = '/homeScreen';
  static const detailScreen = '/detailScreen';
}

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.detailScreen,
      page: () => const DetailScreen(),
    ),
  ];
}
