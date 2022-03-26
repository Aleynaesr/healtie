import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/profile/view/doctor/widget/buildAbout.dart';
import 'package:healtie/view/profile/view/doctor/widget/buildCertificates.dart';
import 'package:healtie/view/profile/view/doctor/widget/buildDocArticles.dart';
import 'package:healtie/view/profile/view/doctor/widget/buildDoctorAppBar.dart';
import 'package:healtie/view/profile/view/doctor/widget/buildDoctorTop.dart';
import 'package:healtie/view/profile/view/doctor/widget/buildEducation.dart';
import 'package:healtie/view/profile/view/doctor/widget/buildJobs.dart';

class DoctorPage extends StatelessWidget {
  final int index;

  const DoctorPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: BuildDoctorAppBar(index: index),
        ),
        backgroundColor: white,
        body: ListView(
          children: [
            BuildDoctorTop(index: index),
            BuildAbout(index: index),
            BuildCertificates(index: index),
            BuildEducation(index: index),
            BuildJobs(index: index),
            const BuildDocArticles()
          ],
        ),
      ),
    );
  }
}
