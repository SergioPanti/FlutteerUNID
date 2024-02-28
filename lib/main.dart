import 'package:flutter/material.dart';
import 'package:flutter_application_2/router/app_routes.dart';

/*void main() {
  runApp(const MyApp());
}*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 21, 213, 0)),
        useMaterial3: true,
      ),
      //home: const ListViewScreen(),
      //initialRoute: 'home',
      initialRoute: AppRoutes.initialroute,
      /*routes: {
        'home':(BuildContext context ) => const HomeScreen(),
        'listviewScreen':(BuildContext context ) => const ListViewScreen(),
        'alert':(BuildContext context ) => const AlertScreen(),
        'card':(BuildContext context ) => const CardScreen(),
      }*/
      routes:AppRoutes.routes,
      //routes: AppRoutes.getAppRoutes()
    );
  }
}