import 'package:flutter/material.dart';
import 'package:healtie/core/utility/constants.dart';
import 'package:healtie/view/home/widgets/buildHomeAppBar.dart';
import 'package:healtie/view/home/widgets/buildArticleCard.dart';
import 'package:healtie/view/home/widgets/buildTopDoctors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: buildHomeAppBar(),
        body: ListView(
          children: [
            buildTopDoctors(),
            const SizedBox(
              height: 4,
            ),
            const BuildArticles(),
          ],
        )
      ),
    );
  }
}
