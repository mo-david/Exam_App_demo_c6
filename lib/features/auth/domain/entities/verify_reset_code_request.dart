class VerifyResetCodeRequest {
  final String restCode;
  VerifyResetCodeRequest({required this.restCode});
  Map<String, dynamic> toJson() {
    return {
      "restCode": restCode,
    };
  }

}