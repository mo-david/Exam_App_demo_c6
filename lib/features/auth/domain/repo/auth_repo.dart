import 'package:untitled/features/auth/domain/entities/sign_up_request.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/auth_result.dart';
import '../entities/change_password_request.dart';
import '../entities/edit_profile.dart';
import '../entities/forget_password_request.dart';
import '../entities/reset_password_request.dart';
import '../entities/sign_in_request.dart';
import '../entities/verify_reset_code_request.dart';

abstract class AuthRepo {

  Future<Either<Failure,AuthResult>> signUp({required SignUpRequest request});
  Future <Either<Failure,AuthResult>> signIn({required SignInRequest request});
  Future <Either<Failure,AuthResult>> changePassword({required ChangePasswordRequest request});
  Future <Either<Failure,AuthResult>> deleteMyAccount();
   Future <Either<Failure,AuthResult>> editProfile({required EditProfileRequest request});
   Future <Either<Failure,AuthResult>> logout();
   Future <Either<Failure,AuthResult>> getLoggedUserInfo();
   Future <Either<Failure,AuthResult>> forgetPassword({required ForgetPasswordRequest request});
   Future <Either<Failure,AuthResult>> verifyResetCode({required VerifyResetCodeRequest request});
   Future <Either<Failure,AuthResult>> resetPassword({required ResetPasswordRequest request});
}

