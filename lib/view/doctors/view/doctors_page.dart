import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/doctors/widget/buildCatBar.dart';
import 'package:healtie/view/doctors/widget/buildDoctorsBar.dart';
import 'package:healtie/view/doctors/widget/buildDoctorsCard.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: white,
          body: ListView(
            children: [
              const BuildDoctorBar(),
              buildCatBar(),
              const BuildDoctorCard(),
            ],
          )),
    );
  }
}
