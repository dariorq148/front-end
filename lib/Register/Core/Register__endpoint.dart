import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled3/Home/Home__Page.dart';
import 'package:untitled3/Models/model__User.dart';
import 'package:http/http.dart' as http;

Future<void> register(User user, BuildContext context) async {
  var url = Uri.parse('http://localhost:3000/api/usuario');
  var body = jsonEncode(
    //cambiar la ciudad a primer lugar
      {
        "nombre": user.name,
        "apellido": user.lastname,
        "dni": user.dni,
        "fecha_nacimiento": user.birthdate,
        "sexo": user.sex,
        "direccion": user.direction,
        "telefono": user.cellphone,
        "correo_electronico": user.email,
        "id_ciudad": user.city,
        "password": user.password
      }
  );
  try {
    var response = await http.post(url,
        headers: {'Content-Type': 'application/json'}, body: body);

    if (response.statusCode == 201) {
      var data = jsonDecode(response.body);
      if (data != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Home__Page()));
        print('Registro exitoso: $data');
      } else {
        print('Datos vacíos');
      }
    } else {
      print('Error del servidor: ${response.statusCode}');
      print('Cuerpo de la respuesta: ${response.body}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
