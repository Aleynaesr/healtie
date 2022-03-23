import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/articles/view/article_page.dart';

class CommentCard extends StatelessWidget {
  final store;
  final index;

  const CommentCard({
    Key? key,
    required this.store,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => ArticlePage(
            index: index,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: black,
                      backgroundImage: NetworkImage(
                        store["author_img"],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              store["name"],
                              style: const TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(store["comment"],
                                style: const TextStyle(
                                    color: black, fontSize: 15)),
                          ],
                        ),
                        const SizedBox(height: 12,),
                        Row(
                          children: [
                            Text(
                            store["liked"] + " Likes",
                              style: TextStyle(color: black, fontSize: 12),
                            ),
                            SizedBox(width: 12,),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                "Reply",
                                style: TextStyle(color: black, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_rounded))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
