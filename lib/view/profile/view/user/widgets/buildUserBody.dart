import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/home/widget/buildArticleCard.dart';

class BuildUserBody extends StatelessWidget {
  const BuildUserBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
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
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(55), topRight: Radius.circular(55)),
      ),
      child:   const BuildArticles(),
    );
  }
}
