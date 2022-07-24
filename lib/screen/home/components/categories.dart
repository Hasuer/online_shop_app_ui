import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../controller/home_tab_controller.dart';

class Categries extends StatelessWidget {
  const Categries({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final HomeTabController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.categories.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GestureDetector(
              onTap: () => controller.setSelectedIndex(index),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.categories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: controller.selectedIndex == index
                          ? kTextColor
                          : kTextLightColor,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: kDefaultPaddin / 4),
                    height: 2,
                    width: 30,
                    color: controller.selectedIndex == index
                        ? Colors.black
                        : Colors.transparent,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
