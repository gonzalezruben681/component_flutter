import 'package:flutter/material.dart';
import 'package:componentflutter/models/models.dart';
import 'package:componentflutter/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    // TODO: Borrar home
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home_mini_outlined),
    MenuOption(
        route: 'listview1',
        name: 'listview tipo 1',
        screen: const ListviewScreen(),
        icon: Icons.list_alt_outlined),
    MenuOption(
        route: 'listview2',
        name: 'listview tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list_alt_outlined),
    MenuOption(
        route: 'alert',
        name: 'Alerts - Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Card - Tarjetas',
        screen: const CardScreen(),
        icon: Icons.card_giftcard_outlined),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animate',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_outlined),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs',
        screen: const InputScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'slider',
        name: 'Slider and Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_rounded),
    MenuOption(
        route: 'listviewbuilder',
        name: 'Infinite Scrol and Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({
      'home': (context) => const HomeScreen(),
    });
    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (context) => option.screen,
      });
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListviewScreen(),
  //   'listview2': (context) => const Listview2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
