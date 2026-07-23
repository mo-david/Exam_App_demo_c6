class GetLoggedUserInfoResponse {GetLoggedUserInfoResponse({this.message, this.user, this.code});

GetLoggedUserInfoResponse.fromJson(dynamic json) {
  message = json["message"];
  user = json["user"] != null ? UserModel.fromJson(json["user"]) : null;
  code = json["code"];
}

String? message;
UserModel? user;
int? code;

Map<String, dynamic> toJson() {
  final Map<String, dynamic> map = new Map<String, dynamic>();
  map["message"] = this.message;
  if (this.user != null) {
    map["user"] = this.user!.toJson();
  }
  map["code"] = this.code;
  return map;
}

AuthResult toEntity() {
  return AuthResult(
    message: message ?? '',
    token: '',
    user: user?.toEntity() ?? UserEntity(
      name: '',
      email: '',
      role: 'user',
    ),
  );
}}
//{
//     "message": "success",
//     "user": {
//         "_id": "6a57ab8fd2ea07268fb2d834",
//         "username": "bob67",
//         "firstName": "bob",
//         "lastName": "Tech1",
//         "email": "overall.bobolink.ykxi@hidepost.net",
//         "phone": "01061060011",
//         "role": "user",
//         "isVerified": false,
//         "createdAt": "2026-07-15T15:47:27.810Z",
//         "passwordChangedAt": "2026-07-22T11:30:52.539Z"
//     }
// }
//{
//     "message": "token not provided",
//     "code": 401
//}