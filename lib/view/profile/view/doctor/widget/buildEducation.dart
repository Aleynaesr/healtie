import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healtie/core/models/doctors_json.dart';
import 'package:healtie/core/utility/constants.dart';

class BuildEducation extends StatefulWidget {
  final int index;

  const BuildEducation({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<BuildEducation> createState() => _BuildEducationState();
}

class _BuildEducationState extends State<BuildEducation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: padding, right: padding, bottom: padding),
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
          padding: const EdgeInsets.only(left: padding, right: padding, top: 10, bottom: 10),
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const <Widget>[
                      Icon(
                        Icons.school,
                        color: primary,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "University",
                        style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  Container(
                    width: 120,
                    child: Expanded(
                      child: Text(
                        doctors[widget.index]["university"],
                        style: const TextStyle(
                          color: black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const VerticalDivider(color: lightBlack, thickness: 1),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const <Widget>[
                      Icon(
                        Icons.school,
                        color: primary,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Profession",
                        style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  Container(
                    width: 120,
                    child: Expanded(
                      child: Text(
                        doctors[widget.index]["university"],
                        style: const TextStyle(
                          color: black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
