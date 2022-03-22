import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/auth/widget/buildDivider.dart';
import 'package:healtie/view/auth/widget/buildLogTitle.dart';
import 'package:healtie/view/auth/widget/buildLoginForm.dart';
import 'package:healtie/view/auth/widget/buildSocialBtn.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                buildTitle(),
                const SizedBox(
                  height: 16,
                ),
                const BuildLoginForm(),
                const SizedBox(
                  height: 32,
                ),
                buildSocialBtn(),
                const SizedBox(
                  height: 16,
                ),
                buildDivider(),
                const SizedBox(
                  height: 4,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
