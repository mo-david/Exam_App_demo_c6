class EditProfileRequest {
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final String? phone;

  EditProfileRequest({
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.phone,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
      if (username != null) {
        data['username'] = username;
      }
      if (firstName != null) {
        data['firstName'] = firstName;
      }
      if (lastName != null) {
        data['lastName'] = lastName;
      }
      if (email != null) {
        data['email'] = email;
      }
      if (password != null) {
        data['password'] = password;
      }
      if (phone != null) {
        data['phone'] = phone;
      }
    return data;
  }

}

//{
//     "username":"elevate11233",
//     "firstName":"Elevate",
//     "lastName":"Tech",
//     "email": "admin133@1elevate.com",
//     "password":"Elevate@123",
//     "rePassword":"Elevate@123",
//     "phone":"01094155711"
// }
