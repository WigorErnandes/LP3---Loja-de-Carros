class UserLocal {
  String? id;
  String? name;
  String? email;
  String? password;
  String? confirmPassword;
  UserLocal({
    this.id,
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
  });
  //metodo para converter algum objeto para uma estrutura de dados compativel com a estrutura do firebase
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'confirmPassord': confirmPassword
    };
  }

  //metodo para converter formato Json para objeto (desserializando o Map)
  factory UserLocal.fromMap(Map<String, dynamic> map) {
    return UserLocal(
        id: map['id'],
        name: map['name'],
        email: map['email'],
        password: map['password'],
        confirmPassword: map['confirmPassword']);
  }
}
