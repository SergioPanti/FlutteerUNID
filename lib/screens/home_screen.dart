import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/models.dart';
import 'package:flutter_application_2/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final menuOption = AppRoutes.menuOption;

    return  Scaffold(
      appBar: AppBar(
         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Pantalla de Inicio'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index)=> ListTile(
          //leading: const Icon(Icons.wrong_location),
          leading:  Icon(menuOption[index].icon),
          //title: const Text('data'),
          title: Text(menuOption[index].name),
          onTap: () {
          
           // final route = MaterialPageRoute(builder:(context)=> const ListViewScreen());
//            Navigator.push(context, route);
             Navigator.pushNamed(context, 'card');
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
       // itemCount: 50
       itemCount: menuOption.length,
        ),
    );
  }
}