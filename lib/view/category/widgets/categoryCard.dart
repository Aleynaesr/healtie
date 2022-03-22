import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';

class CategoryCard extends StatelessWidget {
  final store;
  final index;

  const CategoryCard({
    Key? key,
    required this.store,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: primary,
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
        onTap: () {},
        child: SafeArea(
            child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 10,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 15,
              child: Container(
                width: 25,
                height: 25,
                child: Image.network(
                  store["icon"],
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 35,
              child: Text(
                store["name"],  style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color: white ),
              ),
              ),
            Positioned(
              left: 10,
              bottom: 15,
              child: Text(
                store["articles"] + " Articles",  style: const TextStyle(fontSize: 11, color: white ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
