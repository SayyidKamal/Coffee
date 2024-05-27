import 'package:coffee_borcelle/pages/containers/coffeecontainer4.dart';
import 'package:coffee_borcelle/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DeskTopNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Icon(Icons.menu), navLogo()],
    ),
  );
}

Widget DeskTopNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 130,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        navLogo(),
        Container(
          height: 64,
          decoration: BoxDecoration(
            color: AppColors.PrimaryLight, // Background color #6F4436
            borderRadius:
                BorderRadius.circular(10.0), // Adjust the value as needed
          ),
          // Example background color
          child: Row(
            children: [
              navButton('Home'),
              navButton('About Us'),
              navButton('Features'),
              navButton('Purchase'),
              navButton('Contact'),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextButton(
          onPressed: () {
            CofeeContainer4();
          },
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 18))));
}

Widget navLogo() {
  return Container(
    width: 150,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.contain)),
  );
}
