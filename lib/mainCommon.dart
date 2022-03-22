import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healtie/view/auth/view/login_page.dart';
import 'package:healtie/view/home/view/home_page.dart';

import 'core/config/app_config.dart';
import 'core/utility/constants.dart';
import 'core/utility/router.dart';


void mainCommon() {

}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return _buildApp(config!.appDisplayName);
  }

  Widget _buildApp(String appName){
    return GetMaterialApp(
      title: appName,
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        primaryColorBrightness: Brightness.dark,
      ),
      home: const RouterPage(),
    );
  }
}