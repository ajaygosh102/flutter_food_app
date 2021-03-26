import 'package:auto_route/auto_route_annotations.dart';import 'package:flutter_food_app/presentation/home/home_screen.dart';import 'package:flutter_food_app/presentation/start_screens/login_screen.dart';import 'package:flutter_food_app/presentation/start_screens/splash_screen.dart';@MaterialAutoRouter(generateNavigationHelperExtension: true, routes: [  MaterialRoute(page: SplashScreen, initial: true),  MaterialRoute(page: LoginScreen),  MaterialRoute(page: HomeScreen),])class $Router {}