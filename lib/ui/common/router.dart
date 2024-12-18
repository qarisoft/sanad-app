import 'package:flutter/material.dart';
import 'package:sanad/ui/pages/auth/user_details.dart';
import 'package:sanad/ui/pages/pages.dart';
import 'package:sanad/ui/pages/settings/companies.dart';
import 'package:sanad/ui/pages/task/task_page.dart';

class Routes {
  static const String splashRoute = "/";
  static const String authRoute = "/auth";
  static const String loginRoute = "/auth/login";
  static const String registerRoute = "/auth/register";
  static const String authUser = "/auth/user";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String onBoardingRoute = "/onBoarding";
  static const String mainRoute = "/main";
  static const String task = "/task";
  static const String companiesPage = "/settings/companies";
  static const String storeDetailsRoute = "/storeDetails";
}

// const
class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.task:
        return MaterialPageRoute(
          builder: (_) {
            final taskId = settings.arguments as int?;
            if (taskId is int) {
                return TaskPage(taskId);
            }
            return const Placeholder();
          },
        );
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.authUser:
        return MaterialPageRoute(builder: (_) => const UserDetailsPage());
      case Routes.companiesPage:
        return MaterialPageRoute(builder: (_) => const CompaniesPage());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
    // case Routes.mainRoute:
    //   return MaterialPageRoute(builder: (_) => const MainView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) =>
          Scaffold(
            appBar: AppBar(
              title: Text(''),
            ),
            body: Center(child: Text('unDefinedRoute')),
          ),
    );
  }
}
