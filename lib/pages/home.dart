import 'package:coffee_borcelle/pages/containers/coffeecontainer2.dart';
import 'package:coffee_borcelle/pages/containers/coffeecontainer4.dart';
import 'package:coffee_borcelle/widgets/navBar.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'containers/coffeecontainer3.dart';
import 'containers/container1.dart';
import 'containers/footer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xFF2F1F14),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                NavBar(),
                SizedBox(
                  height: 20,
                ),
                Container1(),
                CofeeContainer2(),
                CofeeContainer3(),
                CofeeContainer4(),
                Footer()
              ],
            ),
          ),
        ));
  }
}
