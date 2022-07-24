import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../controller/product_detail_controller.dart';
import 'my_outlined_btn.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({
    Key? key,
    required this.productDetailControler,
  }) : super(key: key);

  final ProductDetailControler productDetailControler;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyOutlinedBtn(
          iconData: Icons.remove,
          press: () => productDetailControler.setBuyCount(false),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Obx(
            () => Text(
                "${productDetailControler.buyCount.toInt()}".padLeft(2, '0'),
                style: Theme.of(context).textTheme.headline6),
          ),
        ),
        MyOutlinedBtn(
          iconData: Icons.add,
          press: () => productDetailControler.setBuyCount(true),
        )
      ],
    );
  }
}
