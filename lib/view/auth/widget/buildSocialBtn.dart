import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healtie/core/utility/constants.dart';

class CustomWidgets {
  static Widget socialButtonCircle(color, icon, {iconColor, Function? onTap}) {
    return InkWell(
      splashColor: primary,
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Icon(
              icon,
              color: iconColor,
            )),
      ), //
    );
  }
}

Widget buildSocialBtn() {
  return  Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomWidgets.socialButtonCircle(
            googleColor, FontAwesomeIcons.google, iconColor: white,
            onTap: () {
          print("Entered with Google");
        }),
        CustomWidgets.socialButtonCircle(
            facebookColor, FontAwesomeIcons.facebookF, iconColor: white,
            onTap: () {
              print("Entered with Facebook");
            }),
      ],
    );
}
