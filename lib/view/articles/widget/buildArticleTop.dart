import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/core/models/articles_json.dart';
import 'package:healtie/core/utility/constants.dart';

class BuildArticleTop extends StatelessWidget {
  final int index;
  const BuildArticleTop({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(55), bottomRight: Radius.circular(55)),
        image: DecorationImage(
          image: NetworkImage(articles[index]["banner"]),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon:const Icon(Icons.arrow_back, color: white,),
                  onPressed: () {
                    Get.back();
                  },
                ),
              IconButton(
                 icon:const Icon(Icons.more_vert_rounded, color: white,),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(articles[index]["date"],
                    style: const TextStyle(color: white, fontSize: 12)),
                const SizedBox(
                  height: 6,
                ),
                FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(articles[index]["title"],
                        style: const TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35)),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text("#" + articles[index]["cat"],
                    style: const TextStyle(color: white, fontSize: 12)),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: white,
                      backgroundImage: NetworkImage(
                        articles[index]["author_img"],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                         "By " + articles[index]["author"],
                          style: const TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const SizedBox(height: 4,),
                        Text(
                          articles[index]["cat"],
                          style: const TextStyle(color: white, fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
