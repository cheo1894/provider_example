import 'package:flutter/material.dart';

class Store extends ChangeNotifier {
  late String _nombre;

  late String _apellido;

  late String _edad;

  late String _correo;

  String get nombre => _nombre;
  String get apellido => _apellido;
  String get edad => _edad;
  String get correo => _correo;

  set nombre(String nombre) {
    _nombre = nombre;
    notifyListeners();
  }

  set apellido(String apellido) {
    _apellido = apellido;
    notifyListeners();
  }

  set edad(String edad) {
    _edad = edad;
    notifyListeners();
  }

  set correo(String correo) {
    _correo = correo;
    notifyListeners();
  }
}
