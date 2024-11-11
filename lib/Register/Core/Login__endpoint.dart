import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled3/Home/Home__Page.dart';
import 'package:untitled3/Models/model__User.dart';

Future<void> Login(User user, BuildContext context) async {
  var url = Uri.parse('http://localhost:3000/api/login');

  var body =
      jsonEncode({'correo_electronico': user.email, 'password': user.password});
  try {
    var response = await http.post(url,
        headers: {'Content-Type': 'application/json'}, body: body);
    if (response.statusCode == 200) {
      var responseData = jsonDecode(response.body);
      print('inicio de sesion exitoso: $responseData');
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Home__Page(),
          ));
    } else {
      var errorResponse = jsonDecode(response.body);
      print('cuenta no encontrada');
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('ocurrio un error'),
            content: Text(errorResponse['message']),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Ok'))
            ],
          );
        },
      );
    }
  } catch (e) {
    print('error en el servidor $e');
  }
}
