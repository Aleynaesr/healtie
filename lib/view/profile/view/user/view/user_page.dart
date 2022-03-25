import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/profile/view/user/widget/buildUserBody.dart';
import 'package:healtie/view/profile/view/user/widget/buildUserTop.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
          body: ListView(
            children: [
              buildUserTop(),
              const SizedBox(
                height: 15,
              ),
              const BuildUserBody(),
            ],
          )
      ),
    );
  }
}
