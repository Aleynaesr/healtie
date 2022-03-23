import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healtie/core/models/articles_json.dart';
import 'package:healtie/core/models/comments_json.dart';
import 'package:healtie/core/utility/constants.dart';

import 'buildArticleComs.dart';

class BuildArticleComment extends StatelessWidget {
  final int index;

  const BuildArticleComment({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(articles[index]["comments"] + " Comments", style: const TextStyle(color:black, fontWeight: FontWeight.bold, fontSize: subtitleSize),),
          const SizedBox(height: 16,),
          ListView(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(comments.length, (inx) {
              var store = comments[index];
              if (articles[index]["id"] == comments[inx]["id"]) {
                return Padding(
                  padding: const EdgeInsets.only(
                      bottom: 8, top: 8),
                  child: CommentCard(
                    store: store,
                    index: inx,
                  ),
                );
              } else {
                return Container();
              }
            }),
          ),
        ],
      ),
    );
  }
}