import 'package:flutter/material.dart';
import 'package:healtie/core/models/doctors_json.dart';
import 'package:healtie/core/utility/constants.dart';

class BuildCertificates extends StatefulWidget {
  final int index;

  const BuildCertificates({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<BuildCertificates> createState() => _BuildCertificatesState();
}

class _BuildCertificatesState extends State<BuildCertificates> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: padding, right: padding, bottom: padding),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
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
                    Icons.anchor_rounded,
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
              Expanded(
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 120,
                        height: 50,
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          child: Image.network(
                            doctors[widget.index]["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        padding: const EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(15)),
                          child: Image.network(
                            doctors[widget.index]["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        padding: const EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(15)),
                          child: Image.network(
                            doctors[widget.index]["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        padding: const EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(15)),
                          child: Image.network(
                            doctors[widget.index]["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        padding: const EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(15)),
                          child: Image.network(
                            doctors[widget.index]["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
