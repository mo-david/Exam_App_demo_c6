import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:untitled/features/auth/domain/entities/change_password_request.dart';
import 'package:untitled/features/auth/domain/entities/edit_profile.dart';
import 'package:untitled/features/auth/domain/entities/reset_password_request.dart';

import '../../../../config/dio/dio_module.dart';
import '../../../../core/network/end_points.dart';
import '../../domain/entities/forget_password_request.dart';
import '../../domain/entities/sign_in_request.dart';
import '../../domain/entities/sign_up_request.dart';
import '../../domain/entities/verify_reset_code_request.dart';
import 'auth_remote_data_source.dart';

@Injectable(
as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
final NetworkDioHandler _dioHandler;
AuthRemoteDataSourceImpl(this._dioHandler);

@override
Future<Response> signUp({required SignUpRequest request}) async {
return await _dioHandler.publicDio.post(
EndPoints.signup,
data: request.toJson(),
);
}

@override
Future<Response> signIn({required SignInRequest request}) async {
return await _dioHandler.publicDio.post(
EndPoints.signIn,
data: request.toJson(),
);
}

@override
Future<Response> forgetPassword({required ForgetPasswordRequest request}) async {
return await _dioHandler.publicDio.post(
EndPoints.forgotPassword,
data: request.toJson(),
);
}
@override
Future<Response> verifyResetCode({required VerifyResetCodeRequest request}) async {
return await _dioHandler.publicDio.post(
EndPoints.verifyResetCode,
data: request.toJson(),
);
}

@override
Future<Response> changePassword({required ChangePasswordRequest request}) async{
return await _dioHandler.publicDio.patch(
EndPoints.changePassword,
data: request.toJson());
}

@override
Future<Response> resetPassword({required ResetPasswordRequest request}) async{
return await _dioHandler.publicDio.put(
EndPoints.resetPassword,
data: request.toJson());
}
@override
Future<Response> editProfile({required EditProfileRequest request}) async{
  return await _dioHandler.publicDio.put(
  EndPoints.editProfile,
data: request.toJson()

  );
}
@override
Future<Response> deleteMyAccount()async{
  return await _dioHandler.publicDio.delete(EndPoints.deleteMyAccount);
}

@override
Future<Response> logout()async{
return await _dioHandler.publicDio.get(EndPoints.logout);
}

@override
Future<Response> getLoggedUserInfo()async{
return await _dioHandler.publicDio.get(EndPoints.getLoggedUserInfo);
}
}
