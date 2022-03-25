import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/core/models/doctors_json.dart';
import 'package:healtie/core/utility/constants.dart';

class BuildDoctorAppBar extends StatefulWidget {
  final int index;
  const BuildDoctorAppBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<BuildDoctorAppBar> createState() => _BuildDoctorAppBarState();
}

class _BuildDoctorAppBarState extends State<BuildDoctorAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back, color: black)),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        doctors[widget.index]["name"],
        style: TextStyle(color: black, fontSize: subtitleSize),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded, color: black)),
      ],
    );
  }
}
