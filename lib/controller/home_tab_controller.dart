import 'package:get/get.dart';

class HomeTabController extends GetxController {
  List<String> categories = ["Hand bags", "Jewellery", "Footware", "Dresses","Shoes"];

  int selectedIndex = 0;

  void setSelectedIndex(int value) {
    selectedIndex = value;
    update();
  }
}
