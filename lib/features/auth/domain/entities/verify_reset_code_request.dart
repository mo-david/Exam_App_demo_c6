class VerifyResetCodeRequest {
  final String resetCode;
  VerifyResetCodeRequest({required this.resetCode});
  Map<String, dynamic> toJson() {
    return {
      "resetCode": resetCode,
    };
  }

}