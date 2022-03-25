import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/core/models/doctors_json.dart';
import 'package:healtie/core/models/users_json.dart';
import 'package:healtie/core/utility/constants.dart';

class BuildDoctorTop extends StatefulWidget {
  final int index;

  const BuildDoctorTop({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<BuildDoctorTop> createState() => _BuildDoctorTopState();
}

class _BuildDoctorTopState extends State<BuildDoctorTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: padding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: black,
              backgroundImage: NetworkImage(
                doctors[widget.index]["image"],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 60,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                doctors[widget.index]["following"],
                                style: const TextStyle(color: black),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "Followers",
                                style: TextStyle(color: black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 22,
                    ),
                    Container(
                      width: 80,
                      height: 60,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                doctors[widget.index]["articles"],
                                style: const TextStyle(color: black),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "Articles",
                                style: TextStyle(color: black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  doctors[widget.index]["name"],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: subtitleSize),
                ),
              ],
            ),
            const SizedBox(
              width: 32,
            ),
          ],
        ),
      ),
    );
  }
}
