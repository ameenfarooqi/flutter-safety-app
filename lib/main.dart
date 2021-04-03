import 'package:flutter/material.dart';
import 'package:safety/app/locator.dart';
import 'package:safety/app/router.gr.dart' as RouterApp; 

import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}


  class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: RouterApp.Routes.startupView,
      onGenerateRoute: RouterApp.Router().onGenerateRoute,
      // ignore: deprecated_member_use
      navigatorKey: locator<NavigationService>().navigatorKey,
    
    );
  }
}
     


