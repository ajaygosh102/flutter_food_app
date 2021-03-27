import 'package:flutter/material.dart';
import 'package:flutter_food_app/config/locator.dart';
import 'package:flutter_food_app/config/router.gr.dart' as router;
import 'package:stacked_services/stacked_services.dart';

import 'config/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: AppTheme.of(context),
      navigatorKey: StackedService.navigatorKey,
      initialRoute: router.Routes.splashScreen,
      onGenerateRoute: router.Router().onGenerateRoute,
    );
  }
}
