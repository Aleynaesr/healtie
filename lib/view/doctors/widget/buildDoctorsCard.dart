import 'package:flutter/material.dart';
import 'package:healtie/core/models/articles_json.dart';
import 'package:healtie/core/models/doctors_json.dart';
import 'package:healtie/core/utility/constants.dart';

import 'doctorsCard.dart';

class BuildDoctorCard extends StatefulWidget {
  const BuildDoctorCard({Key? key}) : super(key: key);

  @override
  _BuildDoctorCardState createState() => _BuildDoctorCardState();
}

class _BuildDoctorCardState extends State<BuildDoctorCard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(doctors.length, (index) {
        var store = doctors[index];
        return Padding(
          padding: const EdgeInsets.only(
              bottom: 8, left: padding, right: padding, top: 8),
          child: DoctorCard(
            store: store,
            index: index,
          ),
        );
      }),
    );
  }
}
