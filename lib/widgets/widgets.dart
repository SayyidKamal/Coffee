import 'package:coffee_borcelle/utils/colors.dart';
import 'package:coffee_borcelle/utils/constants.dart';
import 'package:flutter/material.dart';

class CommonWidgets {
  static Widget title(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );
  }

  static Widget subTitle(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
    );
  }

  static Widget bodyText(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.normal),
    );
  }

  static Widget primaryButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: AppColors.primary),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.Secondary),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  static Widget primaryCard(String content, String userName) {
    return Card(
      elevation: 3,
      clipBehavior: Clip.hardEdge,
      color: AppColors.Secondary,
      child: InkWell(
        splashColor: AppColors.Primarylighter,
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: SizedBox(
          width: 350,
          height: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
                child: Text(
                  content,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 30),
                child: Text(
                  userName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  static Widget secondaryButton(String text, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }

  static Widget Header(String header, String subHeader) {
    return Column(
      children: [
        Text(
          header,
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
        Text(
          subHeader,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  static Widget textField(
    String hint,
    TextEditingController controller,
    int minLines,
    int maxLines,
    BuildContext context,
  ) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        minLines: minLines,
        maxLines: maxLines,
        cursorColor: Colors.black,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          focusColor: AppColors.PrimaryLight,
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.blue), // Border color when focused
            borderRadius: BorderRadius.circular(8.0),
          ),
          hoverColor: AppColors.PrimaryLight,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red), // Default border color
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
