import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/routing/page_routes_name.dart';

import '../../features/auth/presentation/view/forgot_password_view.dart';
import '../../features/auth/presentation/view/login_view.dart';
import '../../features/auth/presentation/view/reset_password_view.dart';
import '../../features/auth/presentation/view/sign_up_view.dart';
import '../../features/auth/presentation/view/verification_code_view.dart';

abstract class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesName.initial:
      case PageRoutesName.login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case PageRoutesName.signUp:
        return MaterialPageRoute(builder: (context) => const SignUpView());
      case PageRoutesName.forgotPassword:
        return MaterialPageRoute(
            builder: (context) => const ForgotPasswordView());
      case PageRoutesName.verificationCode:
        return MaterialPageRoute(
            builder: (context) => const VerificationCodeView());
      case PageRoutesName.resetPassword:
        return MaterialPageRoute(
            builder: (context) => const ResetPasswordView());
      default:
        return MaterialPageRoute(builder: (context) => const LoginView());
    }
  }
}