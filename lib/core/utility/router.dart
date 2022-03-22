import 'package:flutter/material.dart';
import 'package:healtie/view/category/view/cat_page.dart';
import 'package:healtie/view/discover/view/discover_page.dart';
import 'package:healtie/view/home/view/home_page.dart';
import 'package:healtie/view/profile/view/profile_page.dart';

import 'constants.dart';

class RouterPage extends StatefulWidget {
  const RouterPage({Key? key}) : super(key: key);

  @override
  _RouterPageState createState() => _RouterPageState();
}

class _RouterPageState extends State<RouterPage> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage(),
    const DiscoverPage(),
    const CategoryPage(),
    const ProfilePage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15))),
                minWidth: 100,
                onPressed: () {
                  setState(() {
                    currentScreen = const HomePage();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      currentTab == 0 ? Icons.home :  Icons.home_outlined,
                      color: currentTab == 0 ? primary : black,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                minWidth: 100,
                onPressed: () {
                  setState(() {
                    currentScreen = const DiscoverPage();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      currentTab == 1 ? Icons.search_sharp: Icons.search,
                      color: currentTab == 1 ? primary : black,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                minWidth: 100,
                onPressed: () {
                  setState(() {
                    currentScreen = const CategoryPage();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      currentTab == 2 ? Icons.dashboard : Icons.dashboard_outlined,
                      color: currentTab == 2 ? primary : black,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                shape: const RoundedRectangleBorder(borderRadius:BorderRadius.only(bottomLeft:Radius.circular(15) ,topLeft: Radius.circular(15))),
                minWidth: 100,
                onPressed: () {
                  setState(() {
                    currentScreen = const ProfilePage();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      currentTab == 3 ? Icons.account_circle : Icons.account_circle_outlined,
                      color: currentTab == 3 ? primary : black,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
