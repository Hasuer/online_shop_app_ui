import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/size_config.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        splashRadius: getProportionateScreenWidth(20),
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/back.svg",
        height: getProportionateScreenWidth(18),
        ),
      ),
      actions: [
        IconButton(
          splashRadius: getProportionateScreenWidth(25),
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
            height: getProportionateScreenWidth(18),
          ),
        ),
        IconButton(
          splashRadius: getProportionateScreenWidth(25),
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
            height: getProportionateScreenWidth(18),
          ),
        ),
        const SizedBox(width: kDefaultPaddin/2,),
      ],
    );
  }
}
