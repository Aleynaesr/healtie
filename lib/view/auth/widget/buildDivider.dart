import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/auth/view/register_page.dart';

Widget buildDivider() {
  return Builder(
      builder: (context) {
        return Row(
          children: <Widget>[
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: const Divider(
                    color: lightBlack,
                    height: 36,
                  )),
            ),
            const Text(
              "Don't have an account? ",
              style: TextStyle(color:lightBlack),
            ),
            TextButton(
              onPressed: () => Get.to(() => const RegisterPage()),
              child: const Text(
                  'Sign up',
                  style: TextStyle(color:primary)
              ),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: const Divider(
                    color: lightBlack,
                    height: 36,
                  )),
            ),
          ],
        );
      }
  );
}