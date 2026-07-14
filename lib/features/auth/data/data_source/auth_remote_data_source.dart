import 'package:dio/dio.dart';
import 'package:untitled/features/auth/domain/entities/sign_up_request.dart';
import 'package:untitled/features/auth/domain/entities/sign_in_request.dart';
import 'package:untitled/features/auth/domain/entities/forget_password_request.dart';

import '../../domain/entities/change_password_request.dart';
import '../../domain/entities/edit_profile.dart';
import '../../domain/entities/reset_password_request.dart';
import '../../domain/entities/verify_reset_code_request.dart';

abstract class AuthRemoteDataSource {
  Future<Response> signUp({required SignUpRequest request});
  Future<Response> signIn({required SignInRequest request});
  Future<Response> forgetPassword({required ForgetPasswordRequest request});
  Future<Response> verifyResetCode({required VerifyResetCodeRequest request});
  Future<Response> resetPassword({required ResetPasswordRequest request});
  Future<Response> changePassword({required ChangePasswordRequest request});
  Future<Response> editProfile({required EditProfileRequest request});
  Future<Response> logout();
  Future<Response> getLoggedUserInfo();
Future<Response> deleteMyAccount();

}


