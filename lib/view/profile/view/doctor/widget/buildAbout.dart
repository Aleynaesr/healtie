import 'package:flutter/material.dart';
import 'package:healtie/core/models/doctors_json.dart';
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
        height: 100,
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
        child: Padding(
          padding: const EdgeInsets.only(
              left: padding, right: padding, top: 10, bottom: 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const <Widget>[
                  Icon(
                    Icons.business_center,
                    color: primary,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "About",
                    style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  doctors[widget.index]["about"],
                  style: const TextStyle(
                      wordSpacing: 0.5,
                      letterSpacing: 0.2,
                      height: 1.3,
                      color: black,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
