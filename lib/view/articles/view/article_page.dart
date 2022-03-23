import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/articles/widget/buildArticleBody.dart';
import 'package:healtie/view/articles/widget/buildArticleTop.dart';
import 'package:healtie/view/articles/widget/commentCard.dart';

class ArticlePage extends StatelessWidget {
  final int index;

  const ArticlePage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: ListView(
          children: [
            BuildArticleTop(index: index),
            BuildArticleBody(index: index),
            BuildArticleComment(index:index)
          ],
        ),
      ),
    );
  }
}

