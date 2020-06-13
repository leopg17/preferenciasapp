import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {

//Patron Singleton
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  //Lo podemos hacer privado para no leerlo de manera externa
  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }
  //Ninguna de estas propiedades se usa
  // bool    _colorSecundario;
  // int     _genero;
  // String  _nombre;

  //GET y SET del genero
  get genero {
    // Si no tiene valor le asignaremos el 1
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }

  //GET y SET del _colorSecundario
  get colorSecundario {
    // Si no tiene valor le asignaremos el 1
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  //GET y SET del nombre
  get nombreUsuario {
    // Si no tiene valor le asignaremos el 1
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value) {
    _prefs.setString('nombreUsuario', value);
  }

    //GET y SET del nombre
  get ultimaPagina {
    // Si no tiene valor le asignaremos el 1
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value) {
    _prefs.setString('ultimaPagina', value);
  }

  limpiar(){
    _prefs.clear();
  }
}
