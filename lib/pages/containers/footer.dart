import 'package:coffee_borcelle/utils/colors.dart';
import 'package:coffee_borcelle/utils/constants.dart';
import 'package:coffee_borcelle/widgets/commonContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
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
    return Container(
      color: AppColors.Secondary,
      padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Center(
          child: Text("Copyright 2020 All Rights Reserved Company Name.")),
    );
  }
}
