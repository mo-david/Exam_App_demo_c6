abstract class EndPoints {
  static const String signup ="api/v1/auth/signup";
  static const String signIn ="api/v1/auth/signin";
  static const String changePassword = "api/v1/auth/changePassword";
  static const String deleteMyAccount = "api/v1/auth/deleteMe";
  static const String editProfile = "api/v1/auth/editProfile";
  static const String logout = "api/v1/auth/logout";
  static const String getLoggedUserInfo ="api/v1/auth/profileData";
  static const String forgotPassword = "api/v1/auth/forgotPassword";
  static const String verifyResetCode ="api/v1/auth/verifyResetCode";
  static const String resetPassword = "api/v1/auth/resetPassword";
//Exams
  static const String exams = "api/v1/exams";
//Questions
  static const String questions = "api/v1/questions";
  static const String questionsHistory = "api/v1/questions/history";
  static const String checkQuestions = "api/v1/questions/check";
//Subjects
  static const String subjects = "api/v1/subjects";


}