import 'package:flutter/material.dart';
import 'package:healtie/core/models/cat_json.dart';
import 'package:healtie/core/utility/constants.dart';

import 'doctorsCatCard.dart';

Widget buildCatBar() {
  return Builder(builder: (context) {
    return Padding(
      padding: const EdgeInsets.all(10), 
      child: Container(
          height: 120,
          width: MediaQuery
              .of(context)
              .size
              .width,
          color: white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: subtitleSize),
                ),
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(categories.length, (index) {
                    var store = categories[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: DoctorCategoryCard(
                        store: store,
                        index: index,
                      ),
                    );
                  }),
                ),
              )
            ],
          )),
    );
  });
}
