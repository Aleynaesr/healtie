import 'package:flutter/material.dart';
import 'package:healtie/core/models/articles_json.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/profile/view/user/widget/savedCard.dart';

class BuildDocArticles extends StatefulWidget {
  const BuildDocArticles({Key? key}) : super(key: key);

  @override
  State<BuildDocArticles> createState() => _BuildDocArticlesState();
}

class _BuildDocArticlesState extends State<BuildDocArticles> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: padding, right: padding, bottom: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Articles",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: subtitleSize),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  "View All",
                  style: TextStyle(
                      color: lightBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(articles.length, (index) {
                var store = articles[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: SavedCard(
                    store: store,
                    index: index,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
