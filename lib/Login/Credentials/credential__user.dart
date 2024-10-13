import 'package:shared_preferences/shared_preferences.dart';

Future<void> SaveCredentials(String email, String password, String name,
    String lastname, String dni, String cellphone, String id) async {

  final prefs=await  SharedPreferences.getInstance();
  await prefs.setString('email', email);
  await prefs.setString('password', password);
  await prefs.setString('name', name);
  await prefs.setString('lastname', lastname);

}
