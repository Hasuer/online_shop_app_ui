import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/Product.dart';

class AddToCard extends StatelessWidget {
  const AddToCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              overlayColor: MaterialStateProperty.all(Colors.grey[200])),
          onPressed: () {},
          child: SvgPicture.asset(
            "assets/icons/add_to_cart.svg",
            color: product.color,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18))),
                backgroundColor: MaterialStateProperty.all(product.color),
                overlayColor: MaterialStateProperty.all(
                  Colors.grey[100]!.withOpacity(.2),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Buy Now",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
