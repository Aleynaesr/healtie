import 'package:flutter/material.dart';
import 'package:healtie/core/models/articles_json.dart';
import 'package:healtie/core/utility/constants.dart';

class BuildArticleBody extends StatefulWidget {
  const BuildArticleBody({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  State<BuildArticleBody> createState() => _BuildArticleBodyState();
}

class _BuildArticleBodyState extends State<BuildArticleBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(padding),
            child: Text(
              articles[widget.index]["description"],
              style: const TextStyle(
                  wordSpacing: 1,
                  letterSpacing: 0.8,
                  height: 2.2,
                  color: black,
                  fontSize: 16),
            ),
          ),
          const Divider(
            color: lightBlack,
            height: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          articles[widget.index]["isLiked"] =
                              !articles[widget.index]["isLiked"];
                        });
                      },
                      icon: Icon(
                        articles[widget.index]["isLiked"]
                            ? Icons.favorite_border_rounded
                            : Icons.favorite,
                        color:
                            articles[widget.index]["isLiked"] ? black : primary,
                        size: 20,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                        size: 20,
                      )),
                ],
              ),
              IconButton(
                  onPressed: () {
                    articles[widget.index]["isMarked"] =
                    !articles[widget.index]["isMarked"];
                  },
                  icon: Icon(
                    articles[widget.index]["isMarked"] ? Icons.bookmark_border_rounded :Icons.bookmark,
                    color:  articles[widget.index]["isMarked"] ? black : primary,
                    size: 20,
                  ))
            ],
          ),
          const Divider(
            color: lightBlack,
            thickness: 1,
            height: 1,
          ),
        ],
      ),
    );
  }
}
