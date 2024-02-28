import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final options = const['Megaman','Mario Bros','Metal Gear','kof'];
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('List View Screen'),
      ),
      body: ListView(
       /* children:const [
          ListTile(title: Text('data'),
          subtitle: Text("sub data"),
          leading: CircleAvatar( 
            child: Icon(Icons.person),
          ),)
        ] 
      )*/
      children: [
        ...options.map((game) =>
         ListTile(title: Text(game),
          subtitle: const Text("sub data"),
          leading: const CircleAvatar( 
            child: Icon(Icons.person),
          ),
          trailing:  const Icon(Icons.arrow_forward)
          ,
          onTap: (){
            print(game);
          },
          ),
          ).toList()
      ],
      )
      );
    
  }
}