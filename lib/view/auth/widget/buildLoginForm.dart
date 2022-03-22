import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/home/view/home_page.dart';



class BuildLoginForm extends StatelessWidget {
  const BuildLoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(left:30, right:30, bottom:padding ),
      child: Column(
        children: [
          TextField(
            cursorColor: primary,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0.0),
              labelText: 'E-mail',
              hintText: 'E-mail',
              labelStyle: const TextStyle(
                color: lightBlack,
                fontSize: fontSize,
                fontWeight: FontWeight.w400,
              ),
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: iconFormSize,
              ),
              prefixIcon: const Icon(
                Icons.mail,
                color: primary,
                size: 18,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                borderRadius: BorderRadius.circular(15.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: lightBlack, width: 1.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          const SizedBox(
            height: padding,
          ),
          TextField(
            cursorColor: lightBlack,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0.0),
              labelText: 'Password',
              hintText: 'Password',
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
              labelStyle: const TextStyle(
                color: lightBlack,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: const Icon(
                Icons.remove_red_eye_rounded,
                color: primary,
                size: iconFormSize,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                borderRadius: BorderRadius.circular(15.0),
              ),
              // floatingLabelStyle: TextStyle(
              //   color: Colors.black,
              //   fontSize: 18.0,
              // ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: lightBlack, width: 1.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:   [
              TextButton(
                onPressed: () {},
                child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color:primary)
                ),
              ),
            ],
          ),
          const SizedBox(
            height: padding,
          ),
          MaterialButton(
            minWidth: double.infinity,
            height: 45,
            onPressed: () => Get.to(() =>  HomePage()),
            color: primary,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)),
            child: const Text(
              "Login",
              style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: white),
            ),
          ),
        ],
      ),
    );
  }
}