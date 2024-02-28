import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialroute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listviewScreen',
        name: 'List View 1',
        screen: ListViewScreen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: AlertScreen(),
        icon: Icons.alarm),
    MenuOption(
        route: 'card',
        name: 'Tarjetas',
        screen: CardScreen(),
        icon: Icons.card_membership),
  ];

   static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes={};
    
    for  (var option in menuOption) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }

    return appRoutes;
   }
    

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listviewScreen': (BuildContext context) => const ListViewScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
  // ignore: unnecessary_null_comparison
}
