import 'package:flutter/material.dart';
import 'package:healtie/core/models/articles_json.dart';
import 'package:healtie/core/utility/constants.dart';

import 'articleCard.dart';

class BuildArticles extends StatefulWidget {
  const BuildArticles({Key? key}) : super(key: key);

  @override
  _BuildArticlesState createState() => _BuildArticlesState();
}

class _BuildArticlesState extends State<BuildArticles> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Column(
          children: List.generate(articles.length, (index) {
            var store = articles[index];
            return Padding(
              padding: const EdgeInsets.only(
                  bottom: 8, left: padding, right: padding, top: 8),
              child: ArticleCard(
                store: store,
                index: index,
              ),
            );
          }),
        ),
      ],
    );
  }
}