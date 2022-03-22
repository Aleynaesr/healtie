import 'package:flutter/material.dart';
import 'package:healtie/core/config/app_config.dart';

import '../../mainCommon.dart';


void main() {
  var configuredApp = AppConfig(
    appDisplayName: "Healtie Prod",
    appInternalId: 2,
    child: MyApp(),
  );

  mainCommon();

  runApp(configuredApp);
}