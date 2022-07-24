import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

import '../../constants.dart';
import '../../models/Product.dart';
import '../../size_config.dart';
import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Product product = Get.arguments;
    return Scaffold(
      backgroundColor: product.color,
      appBar: BuildAppBar(product),
      body: Body(product: product),
    );
  }

  AppBar BuildAppBar(Product product) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        splashRadius: getProportionateScreenWidth(20),
        onPressed: () => Get.back(),
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          height: getProportionateScreenWidth(18),
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          splashRadius: getProportionateScreenWidth(25),
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            height: getProportionateScreenWidth(18),
          ),
        ),
        IconButton(
          splashRadius: getProportionateScreenWidth(25),
          onPressed: () {},
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              SvgPicture.asset(
                "assets/icons/cart.svg",
                height: getProportionateScreenWidth(18),
              ),
              Positioned(
                top: -2,
                right: 0,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: kDefaultPaddin / 2,
        ),
      ],
    );
  }
}
