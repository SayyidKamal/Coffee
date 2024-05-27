import 'package:coffee_borcelle/utils/colors.dart';
import 'package:coffee_borcelle/utils/constants.dart';
import 'package:coffee_borcelle/widgets/commonContainer.dart';
import 'package:coffee_borcelle/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CofeeContainer3 extends StatefulWidget {
  const CofeeContainer3({Key? key}) : super(key: key);

  @override
  _CofeeContainer3State createState() => _CofeeContainer3State();
}

class _CofeeContainer3State extends State<CofeeContainer3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer3(),
      desktop: DesktopContainer3(),
    );
  }

  //================ MOBILE ===============

  Widget MobileContainer3() {
    return CommonContainerMobile(
        'USE ANYTIME',
        'Use anytime \nwhen you \nneed',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustrator2,
        true);
  }

  //============== DESKTOP =============

  Widget DesktopContainer3() {
    return Container(
      color: AppColors.SecondaryLight,
      padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Reviews',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: w! / 40,
                height: 1.1,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'What other people are saying!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonWidgets.primaryCard(
                    "The best coffee ever don't let anyone tell you otherwise",
                    "kamal"),
                CommonWidgets.primaryCard(
                    "Its bold aroma and robust flavor transported me to a cozy café in Italy.",
                    "Moh"),
                CommonWidgets.primaryCard(
                    " Each cup is like a warm hug, infusing me with energy and joy.",
                    "Ahmad")
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
