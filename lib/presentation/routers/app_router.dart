import 'package:flutter/material.dart';
import 'package:weather_app/presentation/routers/router_name.dart';
import 'package:weather_app/presentation/screens/home/home_screen.dart';
import 'package:weather_app/presentation/screens/search/search_Screen.dart';
import 'package:weather_app/presentation/screens/splash/splash_screen.dart';
import 'package:weather_app/presentation/screens/weather_city/weather_city_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    const initialWidget = SplashScreen();
    Widget routeWidget = initialWidget;
    final arguments = routeSettings.arguments;

    switch (routeSettings.name) {
      case RouterName.splash:
        break;
      case RouterName.home:
        routeWidget = const Home();
        break;
      case RouterName.search:
        routeWidget = const SearchScreen();
        break;
      case RouterName.weatherCity:
        routeWidget = const WeatherCity();
        break;
      default:
        routeWidget = initialWidget;
        break;
    }

    return MaterialPageRoute(builder: (_) => routeWidget, settings: routeSettings);
  }
}