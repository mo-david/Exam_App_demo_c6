import 'package:untitled/features/auth/data/models/user_model.dart';
import 'package:untitled/features/auth/domain/entities/auth_result.dart';

class SignUpResponse {
  SignUpResponse({this.message, this.token, this.user});

  SignUpResponse.fromJson(dynamic json){
    message = json["message"];
    user = json["user"] != null ? UserModel.fromJson(json["user"]) : null;
    token = json["token"];
  }

  String? message;
  UserModel? user;
  String? token;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = new Map<String, dynamic>();
    map["message"] = this.message;
    if (this.user != null) {
      map["user"] = this.user!.toJson();
    }
    map["token"] = this.token;
    return map;
  }

  AuthResult toEntity() {
    return AuthResult(
      message: message ?? '',
      token: token ?? '',
      user: user?.toEntity()?? UserEntity(
        name: '',
        email: '',
        role: 'user',
      ),
    );
  }
}


// "message": "success",
//     "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjZhNTIzZWU2ZDJlYTA3MjY4ZmIyZDExMCIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzgzNzc0OTUwfQ.tFHOS0JIM5Q73qR04xeK90jkTplqp13HzSCF6Tugqjk",
//     "user": {
//         "username": "elejwifjeijv",
//         "firstName": "Eleve",
//         "lastName": "Teh",
//         "email": "kasha.schor@mycreativeinbox.com",
//         "phone": "01061060011",
//         "role": "user",
//         "isVerified": false,
//         "_id": "6a523ee6d2ea07268fb2d110",
//         "createdAt": "2026-07-11T13:02:30.251Z"
//     }
// }