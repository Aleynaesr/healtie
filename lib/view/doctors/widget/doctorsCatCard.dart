import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';

class DoctorCategoryCard extends StatelessWidget {
  final store;
  final index;

  const DoctorCategoryCard({
    Key? key,
    required this.store,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: primary,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(5, 7),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: GestureDetector(
        onTap: () {},
        child: SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Positioned(
                  top: 14,
                  left: 12,
                  child: Container(
                    width: 20,
                    height:20,
                    child: Image.network(
                      store["icon"],
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 25,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(store["name"],
                        style: const TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10 )),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Text(
                    store["articles"] + " Articles",  style: const TextStyle(fontSize: 9, color: white ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
