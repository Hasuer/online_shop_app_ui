import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../controller/product_detail_controller.dart';
import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
    required this.productDetailControler,
  }) : super(key: key);

  final ProductDetailControler productDetailControler;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(productDetailControler: productDetailControler),
        Container(
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffff6464),
          ),
          child: Container(
            padding: const EdgeInsets.all(7),
            child: SvgPicture.asset(
              "assets/icons/heart.svg",
            ),
          ),
        ),
      ],
    );
  }
}
