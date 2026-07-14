class AuthResult {
  final String? message;
  final String? token;
  final UserEntity? user;

  AuthResult({this.message, this.token, this.user});
}

class UserEntity {
  final String? name;
  final String? email;
  final String? role;


  UserEntity({this.name, this.email, this.role});
}
