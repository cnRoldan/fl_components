import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';


class AppRoutes {
  static const String initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'listview1', name: 'Listview Tipo 1', widget: const Listview1Screen(), icon: Icons.list_outlined),
    MenuOption(route: 'listview2', name: 'Listview Tipo 2', widget: const Listview2Screen(), icon: Icons.list_alt_sharp),
    MenuOption(route: 'alert', name: 'Alertas - Alerts', widget: const AlertScreen(), icon: Icons.alarm),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', widget: const CardScreen(), icon: Icons.card_giftcard),
    MenuOption(route: 'avatar', name: 'Avatar', widget: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated', widget: const AnimatedScreen(), icon: Icons.play_circle_fill_outlined),
    MenuOption(route: 'inputs', name: 'Text Inputs', widget: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'slider', name: 'Slider & Checks', widget: const SliderScreen(), icon: Icons.slideshow_rounded),
    MenuOption(route: 'listviewbuilder', name: 'InfiniteScroll & Pull to refresh', widget: const ListViewBuilderScreen(), icon: Icons.build_circle),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.widget});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}




/* Manera alternativa de generar routes */

/*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };
*/