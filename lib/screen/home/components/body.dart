import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Routes.dart';
import '../../../constants.dart';
import '../../../controller/home_tab_controller.dart';
import '../../../models/Product.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Woman",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        GetBuilder<HomeTabController>(
          init: HomeTabController(),
          builder: (controller) {
            return Categries(
              controller: controller,
            );
          },
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .75,
                  crossAxisSpacing: kDefaultPaddin,
                  mainAxisSpacing: kDefaultPaddin),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Get.toNamed(Routes.detailScreen,
                    arguments: products[index]),
              ),
            ),
          ),
        )
      ],
    );
  }
}
