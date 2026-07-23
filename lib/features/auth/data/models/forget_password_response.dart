class ForgetPasswordResponse {
  ForgetPasswordResponse({this.message, this.code});

  ForgetPasswordResponse.fromJson(dynamic json) {
    message = json["message"];
    code = json["code"];
  }

  String? message;
  int? code;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = new Map<String, dynamic>();
    map["message"] = this.message;
    map["code"] = this.code;
    return map;
  }

  AuthResult toEntity() {
    return AuthResult(
      message: message ?? '',
      token: '',
      user: UserEntity(
        name: '',
        email: '',
        role: 'user',
      ),
    );
  }
}
//{
//     "message": "There was an error sending the email. Try again later!",
//     "code": 500
// }