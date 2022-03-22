import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/auth/widget/buildRegTitle.dart';
import 'package:healtie/view/auth/widget/buildRegisterForm.dart';
import 'package:healtie/view/auth/widget/buildSocialBtn.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                buildRegTitle(),
                const SizedBox(
                  height: 8,
                ),
                const BuildRegisterForm(),
                const SizedBox(
                  height: 16,
                ),
                buildSocialBtn(),
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
