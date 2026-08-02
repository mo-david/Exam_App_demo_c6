import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/routing/page_routes_name.dart';

import '../../config/di/di.dart';

import '../../features/auth/presentation/view/forgot_password_view.dart';
import '../../features/auth/presentation/view/sign_in_view.dart';
import '../../features/auth/presentation/view/reset_password_view.dart';
import '../../features/auth/presentation/view/sign_up_view.dart';
import '../../features/auth/presentation/view/verification_code_view.dart';


import '../../features/auth/presentation/view_model/sign_in_view_model.dart';


abstract class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      case PageRoutesName.initial:
      case PageRoutesName.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<SignInViewModel>(),
            child: const SignInView(),
          ),
        );

      case PageRoutesName.signUp:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => getIt<SignInViewModel>(),
               child: const SignUpView()),
        );

      case PageRoutesName.forgotPassword:
        return MaterialPageRoute(
            builder: (context) => const ForgotPasswordView()); // Update with BlocProvider when ready

      case PageRoutesName.verificationCode:
        return MaterialPageRoute(
            builder: (context) => const VerificationCodeView()); // Update with BlocProvider when ready

      case PageRoutesName.resetPassword:
        return MaterialPageRoute(
            builder: (context) => const ResetPasswordView()); // Update with BlocProvider when ready

      default:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<SignInViewModel>(),
            child: const SignInView(),
          ),
        );
    }
  }
}