import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String authRoute = "/auth";
  static const String loginRoute = "/auth/login";
  static const String registerRoute = "/auth/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String onBoardingRoute = "/onBoarding";
  static const String mainRoute = "/main";
  static const String task = "/task";
  static const String storeDetailsRoute = "/storeDetails";
}
// const 
class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        // return MaterialPageRoute(builder: (_) => const SplashPage2());
      // case Routes.loginRoute:
      //   return MaterialPageRoute(builder: (_) => const LoginPage());
      // case Routes.registerRoute:
      //   return MaterialPageRoute(builder: (_) => const RegisterPage());
      // case Routes.mainRoute:
      //   return MaterialPageRoute(builder: (_) => const MainView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(child: Text('unDefinedRoute')),
      ),
    );
  }
}
