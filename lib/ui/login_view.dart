import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginView extends StatelessWidget {
  const loginView({super.key});
  static String id = 'login_view';

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ///email
          SizedBox(
            width: Size.width * 0.8,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'email',
                labelStyle: TextStyle(
                    color: Color(0xFFBEBCBC), fontWeight: FontWeight.w700),
              ),
              onChanged: (value) {},
            ),
          ),

          ///password
          SizedBox(
            width: Size.width * 0.8,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'password',
                labelStyle: TextStyle(
                    color: Color(0xFFBEBCBC), fontWeight: FontWeight.w700),
              ),
              onChanged: (value) {},
            ),
          ),
          //button
          ElevatedButton(
              onPressed: () => {}, child: const Text('Inicio de sesion'))
        ],
      )),
    );
  }
}

