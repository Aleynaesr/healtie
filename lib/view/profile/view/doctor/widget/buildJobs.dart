import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healtie/core/models/doctors_json.dart';
import 'package:healtie/core/utility/constants.dart';

class BuildJobs extends StatefulWidget {
  final int index;

  const BuildJobs({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<BuildJobs> createState() => _BuildJobsState();
}

class _BuildJobsState extends State<BuildJobs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: padding, right: padding, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
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
              left: padding, right: padding, top: 10, bottom: padding),
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
                    "Experiences",
                    style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      color: primary,
                      size: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "  " + doctors[widget.index]["university"],
                          style: const TextStyle(color: black, fontSize: 15),
                        ),
                        Text(
                          "   " + doctors[widget.index]["date"],
                          style:
                              const TextStyle(color: lightBlack, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      color: primary,
                      size: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "  " + doctors[widget.index]["university"],
                          style: const TextStyle(color: black, fontSize: 15),
                        ),
                        Text(
                          "   " + doctors[widget.index]["date"],
                          style:
                          const TextStyle(color: lightBlack, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
