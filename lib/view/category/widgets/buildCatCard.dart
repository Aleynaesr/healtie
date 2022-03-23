import 'package:flutter/material.dart';
import 'package:healtie/core/models/cat_json.dart';
import 'package:healtie/core/utility/constants.dart';

import 'categoryCard.dart';

class BuildCategories extends StatefulWidget {
  const BuildCategories({Key? key}) : super(key: key);

  @override
  _BuildCategoriesState createState() => _BuildCategoriesState();
}

class _BuildCategoriesState extends State<BuildCategories> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.only(left: padding, right: padding, top: 10,bottom: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: 120,
      ),
      children: List.generate(categories.length, (index) {
            var store = categories[index];
            return CategoryCard(
              store: store,
              index: index,
            );
          }),
    );
  }
}
