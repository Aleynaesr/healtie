import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/category/widgets/buildCatCard.dart';
import 'package:healtie/view/category/widgets/buildTopBar.dart';
import 'package:healtie/view/home/widgets/buildHomeAppBar.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: white,
          body: ListView(
            children: const [
              TopSearchBar(),
              BuildCategories(),
            ],
          )),
    );
  }
}
