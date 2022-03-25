import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/core/models/doctors_json.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/doctors/view/doctors_page.dart';

Widget buildTopDoctors() {
  return Builder(builder: (context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
          height: 120,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:   [
                    const Text(
                      "Top Doctors",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: subtitleSize),
                    ),
                    TextButton(
                      onPressed: () => Get.to(() => const DoctorsPage()),
                      child: const Text(
                        "View All",
                        style: TextStyle(color: lightBlack,
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: doctors.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: CircleAvatar(
                          radius: 32,
                          backgroundColor: black,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: black,
                            backgroundImage: NetworkImage(
                              doctors[index]["image"],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          )),
    );
  });
}
