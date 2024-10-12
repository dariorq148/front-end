import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled3/Home/Home__Page.dart';

class User {
  String email;
  String password;

  User(this.password, this.email);
}

Future<void> login(User _user, BuildContext context) async {
  var url = Uri.parse('http://localhost:3000/api/auth/login');
  var body = json.encode({
    'email': _user.email,
    'password': _user.password,
  });
  try {
    var response = await http.post(url,
        headers: {'Content-Type': 'application/json'}, body: body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print('Respuesta del servidor: $data');
      if (data['token'] != null) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home__Page(),
            ));
        print('Inicio de sesión exitoso. Token: ${data['token']}');
        print('Rol: ${data['role']}');
        print('Mensaje: ${data['message']}');
      } else {
        print('Error al iniciar sesión o credenciales incorrectas');
      }
    } else {
      print('Algo salió mal con el servidor: ${response.statusCode}');
    }
  } catch (e) {
    print('El error es: $e');
  }
}
