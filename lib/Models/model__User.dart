class User {
  String email;
  String password;
  String? dni;
  String? name;
  String? lastname;
  String? cellphone;
  String? birthdate;
  String? direction;
  int? city;
  String? sex;

  User(this.password, this.email, this.birthdate, this.cellphone, this.dni,
      this.lastname, this.name, this.city, this.direction, this.sex);

  ///login
  User.login({required this.email, required this.password});

//registro
  User.register(
      {required this.name,
      required this.password,
      required this.lastname,
      required this.email,
      required this.dni,
      required this.cellphone,
      required this.birthdate,
      required this.sex,
      required this.direction,
      required this.city});
}
