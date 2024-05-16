import 'package:coffee_borcelle/utils/colors.dart';
import 'package:coffee_borcelle/utils/constants.dart';
import 'package:coffee_borcelle/widgets/commonContainer.dart';
import 'package:coffee_borcelle/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CofeeContainer4 extends StatefulWidget {
  const CofeeContainer4({Key? key}) : super(key: key);

  @override
  _CofeeContainer4State createState() => _CofeeContainer4State();
}

class _CofeeContainer4State extends State<CofeeContainer4> {
  final TextEditingController _controllerFullName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer4(),
      desktop: DesktopContainer4(),
    );
  }

  //================ MOBILE ===============

  Widget MobileContainer4() {
    return CommonContainerMobile(
        'USE ANYTIME',
        'Use anytime \nwhen you \nneed',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustrator2,
        true);
  }

  //============== DESKTOP =============

  Widget DesktopContainer4() {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(horizontal: w! / 30, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonWidgets.Header("Contact us", "Send us a message"),
              SizedBox(
                  width: 350,
                  child: CommonWidgets.textField(
                      "Full name", _controllerFullName, 1, 1, context)),
              SizedBox(height: 20),
              SizedBox(
                  width: 350,
                  child: CommonWidgets.textField(
                      "Your Email", _controllerEmail, 1, 1, context)),
              SizedBox(height: 20),
              SizedBox(
                  width: 350,
                  child: CommonWidgets.textField(
                      "Message", _controllerMessage, 3, 5, context)),
              SizedBox(height: 20),
              CommonWidgets.primaryButton("Submit", () {})

              /* CommonWidgets.textField("Email", _controllerEmail, context),
              CommonWidgets.textField("Message", _controllerMessage, context),*/
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CommonWidgets.Header("Sitemap", "All our pages"),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonWidgets.bodyText("- Home"),
                  SizedBox(height: 6),
                  CommonWidgets.bodyText("- About Us"),
                  SizedBox(height: 6),
                  CommonWidgets.bodyText("- Feature"),
                  SizedBox(height: 6),
                  CommonWidgets.bodyText("- Pricing"),
                  SizedBox(height: 6),
                  CommonWidgets.bodyText("- Contact us"),
                ],
              ),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                  image: AssetImage(logo),
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain)
            ],
          )
        ],
      ),
    );
  }
}
