
import 'package:flutter/material.dart';
import 'package:preferenciasapp/src/pages/home_page.dart';

import 'package:preferenciasapp/src/pages/settings_page.dart';
import 'package:preferenciasapp/src/share_prefs/preferencias_usuario.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  //con este await le decimos a la aplicación que no se inicia hasta que tenga estos valores
  await prefs.initPrefs();
  //await prefs.limpiar();
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {

  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName      : (BuildContext context) => HomePage(),
        SettingsPage.routeName  : (BuildContext context) => SettingsPage(),
      },
    );
  }
}