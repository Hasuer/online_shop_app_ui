import 'package:get/get.dart';

class ProductDetailControler extends GetxController {
  RxInt buyCount = 1.obs;

  void setBuyCount(bool plus) {
    if (plus) {
      buyCount += 1;
    } else if (buyCount > 1) {
      buyCount -= 1;
    }
    // update();
  }
}
