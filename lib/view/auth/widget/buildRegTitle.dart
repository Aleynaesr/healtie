import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';

Widget buildRegTitle() {
  return Builder(builder: (context) {
    return Container(
      height: 150,
      child: const Center(
        child: Text(
          "Healtie",
          style: TextStyle(
            color: primary,
            fontSize: 55,
            fontFamily: 'Kalam',
          ),
        ),
      ),
    );
  });
}
