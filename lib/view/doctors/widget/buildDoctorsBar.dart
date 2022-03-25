import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/core/utility/constants.dart';

class BuildDoctorBar extends StatelessWidget {
  const BuildDoctorBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10,right: 15, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon:const Icon(Icons.arrow_back, color: black,),
            onPressed: () {
              Get.back();
            },
          ),
          Container(
            height: 50,
            width:MediaQuery.of(context).size.width*0.84,
            decoration: BoxDecoration(
              color: white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(padding),
            ),
            padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Icon(
                    Icons.search,
                    color: primary,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: white,
                      hintText: 'Search doctors',
                      hintStyle: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 13,
                          color: lightBlack,
                          fontWeight: FontWeight.w700),
                    ),
                    cursorColor: primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}