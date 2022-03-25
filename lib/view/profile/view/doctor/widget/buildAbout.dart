import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';

class BuildAbout extends StatefulWidget {
  final int index;

  const BuildAbout({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<BuildAbout> createState() => _BuildAboutState();
}

class _BuildAboutState extends State<BuildAbout> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
