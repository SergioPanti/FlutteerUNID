import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  const Formulario({super.key});
  static String id = 'Formularios';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body:  SingleChildScrollView(
        child: Form(
          child: Column(children: <Widget>[
            _crearinput1(),
            SizedBox(
              height: 20,
            ),
            _crearinput2(),
            SizedBox(
              height: 20,
            ),
            _crearinput3(),
            FlatButton(
                onPressed: () {},
                color: Colors.blue,
                child: Text(
                  'Enviar',
                  style: TextStyle(color: Colors.white),
                ))
          ]),
        ),
      ),
    );
  }

  Widget _crearinput1() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Nombre Completo', hintText: 'Nombre'),
      ),
    );
  }

  Widget _crearinput3() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Email', icon: Icon(Icons.email), hintText: 'Email'),
      ),
    );
  }

  Widget _crearinput2() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
            labelText: 'Contraseña', hintText: 'Contraseña'),
      ),
    );
  }
}

FlatButton(
    {required Null Function() onPressed,
    required MaterialColor color,
    required Text child}) {}
