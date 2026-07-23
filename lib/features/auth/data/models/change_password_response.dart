class ChangePasswordResponse {
  ChangePasswordResponse({this.message, this.token, this.code});

ChangePasswordResponse.fromJson(dynamic json) {
  message = json["message"];
  token = json["token"];
  code = json["code"];
}

String? message;
String? token;
int? code;

Map<String, dynamic> toJson() {
  final Map<String, dynamic> map = new Map<String, dynamic>();
  map["message"] = this.message;
  map["token"] = this.token;
  map["code"] = this.code;
  return map;
}

AuthResult toEntity() {
  return AuthResult(
    message: message ?? '',
    token: token ?? '',
    user: UserEntity(
      name: '',
      email: '',
      role: 'user',
    ),
  );
}
}


//{
//     "message": "user not found",
//     "code": 401
// }
//{
//     "message": "success",
//     "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjZhNTdhYjhmZDJlYTA3MjY4ZmIyZDgzNCIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzg0NzE5ODUyfQ.VvaaEzb3oMTZr3NhOSxrOQeOFtp0KyD74fA-EJqyBE8"
// }