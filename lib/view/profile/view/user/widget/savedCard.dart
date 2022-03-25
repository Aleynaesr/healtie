import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/articles/view/article_page.dart';

class SavedCard extends StatelessWidget {
  final store;
  final index;

  const SavedCard({
    Key? key,
    required this.store,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height:100,
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius:7,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: GestureDetector(
        onTap: () => Get.to(() => ArticlePage(
              index: index,
            )),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.network(
                store["banner"] ?? "",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 5),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(store["title"] ?? "",
                  style: const TextStyle(
                      color: black, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text("#" + store["cat"],
                      style: const TextStyle(color: primary, fontSize: 12)),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text("By " + store["author"],
                      style: const TextStyle(color: black, fontSize: 9)),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
