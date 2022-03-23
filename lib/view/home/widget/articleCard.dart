import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/core/models/comments_json.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/articles/view/article_page.dart';

class ArticleCard extends StatelessWidget {
  final store;
  final index;

  const ArticleCard({
    Key? key,
    required this.store,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 380,
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
        onTap: () => Get.to(() => ArticlePage(index: index,)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:5.0, right:5.0, top:5.0),
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
                          Text(
                            store["author"],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          Text(
                            store["cat"],
                            style: const TextStyle(color: black, fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_rounded))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                store["title"],
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  store["banner"],
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.only(left:10.0, right:10,top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(color: black, fontSize: 12),
                      children: <TextSpan>[
                        TextSpan(text: store["description"]),
                        TextSpan(
                            text: '...read more',
                            style:
                                const TextStyle(color: primary, fontSize: 12),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Clicked read more');
                              }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "#" + store["cat"],
                    style: const TextStyle(color: lightBlack, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        store["likes"] + " Likes",
                        style: const TextStyle(color: black, fontSize: 12),
                      ),
                      Text(
                        store["comments"] + " Comments",
                        style: const TextStyle(color: black, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              color: lightBlack,
              height: 0.5,
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_rounded, size: 20,)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border_rounded, size: 20,))
              ],
            ),
          ],

        ),
      ),
    );
  }
}
