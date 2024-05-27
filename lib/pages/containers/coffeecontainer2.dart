import 'package:coffee_borcelle/utils/colors.dart';
import 'package:coffee_borcelle/utils/constants.dart';
import 'package:coffee_borcelle/widgets/commonContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CofeeContainer2 extends StatefulWidget {
  const CofeeContainer2({Key? key}) : super(key: key);

  @override
  _CofeeContainer2State createState() => _CofeeContainer2State();
}

class _CofeeContainer2State extends State<CofeeContainer2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer5(),
      desktop: DesktopContainer5(),
    );
  }

  //================ MOBILE ===============

  Widget MobileContainer5() {
    return CommonContainerMobile(
        'USE ANYTIME',
        'Use anytime \nwhen you \nneed',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustrator2,
        true);
  }

  //============== DESKTOP =============

  Widget DesktopContainer5() {
    return CommonContainer(AppColors.Secondary, 'Discover Coffee Borcelle',
        'Elevating Your Coffee Experience', text2, illustrator2, true);
  }
}
