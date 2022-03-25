import 'package:flutter/material.dart';
import 'package:healtie/core/models/articles_json.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/profile/view/user/widget/savedCard.dart';

class BuildUserBody extends StatelessWidget {
  const BuildUserBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: padding, right: padding,top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Saved Articles",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: subtitleSize),
          ),
          const SizedBox(height: 12,),
          GridView(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              mainAxisExtent: 160,
            ),
            children: List.generate(articles.length, (index) {
              var store = articles[index];
              return SavedCard(
                store: store,
                index: index,
              );
            }),
          ),
        ],
      ),
    );
  }
}
