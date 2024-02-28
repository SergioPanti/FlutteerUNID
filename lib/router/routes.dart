import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/login_view.dart';

var customRoutes = <String, WidgetBuilder>{
  ///vistas de registro y login
  loginView.id: (_) => const loginView(),

  ///formulario
 // Formulario.id: (_) => const Formulario(),
};
