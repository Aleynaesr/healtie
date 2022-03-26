import 'package:flutter/cupertino.dart';
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
      width: 210,
      height: 210,
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius:4,
            blurRadius: 6,
            offset: const Offset(3, 3),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 12, right: 8, top: 8, bottom: 5),
                width: 160,
                child: Text(store["description"],
                    style: const TextStyle(color: black, fontSize: 12)),
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text("By " + store["author"],
                    style: const TextStyle(color: primary, fontSize:10)),
              ),
            ],
          ),

        ]),
      ),
    );
  }
}
