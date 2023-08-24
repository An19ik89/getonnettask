import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_get_on_net_task/application/dependency_injection.dart';
import 'package:flutter_get_on_net_task/presentation/resources/strings_manager.dart';
import 'package:flutter_get_on_net_task/presentation/ui/movie/movie_list_screen.dart';
import 'package:flutter_get_on_net_task/presentation/ui/splash/splash.dart';


class Routes {
   static const String splashRoute = "/";
   static const String onBoardingRoute = "/onBoarding";
   static const String movieListRoute = "/movieList";
   // static const String registerRoute = "/register";
   // static const String forgotPasswordRoute = "/forgotPassword";
   // static const String mainRoute = "/main";
   // static const String storDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case Routes.splashRoute:
      //   return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.movieListRoute:
        initMovieListModule();
        return MaterialPageRoute(builder: (_) => const MovieListView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text(AppStrings.noRouteFound).tr(),
          ),
          body: Center(child: const Text(AppStrings.noRouteFound).tr()),
        ));
  }
}