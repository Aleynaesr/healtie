import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';

class TopSearchBar extends StatelessWidget {
  const TopSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: padding, right: padding, top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
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
                      hintText: 'Search on Healtie',
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
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Categories",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: subtitleSize),
          ),
        ],
      ),
    );
  }
}
