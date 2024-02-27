import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Segundo archivo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'CANTIDAD DE VECES PRESIONADOooo',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: ()=>_incrementar(),
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16.0), // Espaciado entre botones
          FloatingActionButton(
            onPressed: ()=> _decremento(),
            child: Icon(Icons.minimize),
          ),
          SizedBox(height: 16.0), // Espaciado entre botones
          FloatingActionButton(
            onPressed: () => _reset(),
            child: Icon(Icons.update),
          ),
        ],
      ),
    );
  }
  void _incrementar() {
    setState(() {
      _counter++;
    });
  }
  void _decremento() {
    setState(() {
      _counter--;
    });
  }
  void _reset() {
    setState(() {
      _counter=0;
    });
  }
}