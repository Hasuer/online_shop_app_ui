import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/controller/product_detail_controller.dart';
import 'package:online_shop_app_ui/models/Product.dart';
import 'package:online_shop_app_ui/size_config.dart';

import 'add_to_cart.dart';
import 'color_and_row.dart';
import 'counter_with_fav_btn.dart';
import 'discription.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    ProductDetailControler productDetailControler =
        Get.put(ProductDetailControler());
    return SingleChildScrollView(
      child: SizedBox(
        height: SizeConfig.screenHeight,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                  top: SizeConfig.screenHeight * .12,
                  left: kDefaultPaddin,
                  right: kDefaultPaddin),
              margin: EdgeInsets.only(top: SizeConfig.screenHeight * .35),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: Colors.white),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ColorAndSize(),
                  const SizedBox(height: kDefaultPaddin/2,),
                  Discription(product: product),
                  const SizedBox(
                    height: kDefaultPaddin / 2,
                  ),
                  CounterWithFavBtn(
                      productDetailControler: productDetailControler),
                  const SizedBox(
                    height: kDefaultPaddin / 2,
                  ),
                  AddToCard(product: product),
                ],
              ),
            ),
            ProductTitleWithImage(product: product)
          ],
        ),
      ),
    );
  }
}
