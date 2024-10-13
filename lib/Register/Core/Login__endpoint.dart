import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled3/Home/Home__Page.dart';
import 'package:untitled3/Models/model__User.dart';

Future<void> login(User _user, BuildContext context) async {
  var url = Uri.parse('http://localhost:3000/api/login');
  var body = json.encode({
    'correo_electronico': _user.email,
    'password': _user.password,
  });

  try {
    var response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: body,
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print('Respuesta del servidor: $data');

      if (data['token'] != null) {
        String token = data['token'];
        print('Inicio de sesión exitoso. Token: $token');
        print('Mensaje: ${data['message']}');

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home__Page()),
        );
      } else {
        print('Error al iniciar sesión o credenciales incorrectas');
      }
    } else {
      print('Algo salió mal con el servidor: ${response.statusCode}');
      if (response.statusCode == 401) {
        print('Credenciales incorrectas');
      } else {
        print('Error del servidor: ${response.body}');
      }
    }
  } catch (e) {
    print('El error es: $e');
  }
}
