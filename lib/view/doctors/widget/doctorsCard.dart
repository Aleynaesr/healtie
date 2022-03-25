import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/doctors/view/doctors_page.dart';
import 'package:healtie/view/profile/view/doctor/view/doctor_page.dart';

class DoctorCard extends StatelessWidget {
  final store;
  final index;

  const DoctorCard({
    Key? key,
    required this.store,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: GestureDetector(
          onTap: () => Get.to(() => DoctorPage(index: index,)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 130,
                height: 120,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  child: Image.network(
                    store["image"] ?? "",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top:15,left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            store["name"] ?? "",
                            style: const TextStyle(
                                color: black,
                                fontWeight: FontWeight.bold,
                                fontSize: subtitleSize),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            store["tag"] ?? "",
                            style: const TextStyle(color: black, fontSize: 12),
                          )
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Icon(
                                Icons.location_on,
                                color: primary,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                store["hospital"] ?? "",
                                style:
                                    const TextStyle(color: black, fontSize: 12),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: black,
                              onPrimary: white,
                              shadowColor: primary,
                              elevation: 1,
                              minimumSize: const Size(25, 25),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35.0)),
                            ),
                            onPressed: () => Get.to(() => DoctorPage(index: index,)),
                            child: const Text('Visit',style:
                            TextStyle(color:  white, fontSize: 12),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
