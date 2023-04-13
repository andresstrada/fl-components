import 'package:fl_components/Models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';



class AppRoutes {
  
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    //MenuOption(route: 'home', icon: Icons.home_outlined, name: 'Home Screen', screen: const HomeScreen()),

    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt,
        name: 'listview1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt,
        name: 'listview2',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert,
        name: 'alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        name: 'card',
        screen: const CardScreen()),
        MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
         MenuOption(
        route: 'animated',
        icon: Icons.animation,
        name: 'Animated Container',
        screen:  const AnimatedScreen()),
         MenuOption(
        route: 'inputs',
        icon: Icons.inbox,
        name: 'Text Inputs',
        screen: const  InputsScreen()),
        MenuOption(
        route: 'slider',
        icon: Icons.slideshow_rounded,
        name: 'Slider && Checks',
        screen: const  SliderScreen()),
         MenuOption(
        route: 'listviewbuilder',
        icon: Icons.build_circle_outlined,
        name: 'Infinity Scroll',
        screen: const  ListViewBuilderScreen()),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

     appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

/*
    static Map<String, Widget Function(BuildContext)> routes = {
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
    'home': (BuildContext context) => const HomeScreen(),
  };
*/
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print(settings);
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
