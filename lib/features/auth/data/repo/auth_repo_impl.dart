import 'package:injectable/injectable.dart';
import 'package:untitled/features/auth/data/models/sign_up_response.dart';
import 'package:untitled/features/auth/domain/repo/auth_repo.dart';
import 'package:untitled/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:untitled/features/auth/domain/entities/sign_up_request.dart';
import 'package:untitled/features/auth/domain/entities/sign_in_request.dart';
import 'package:untitled/features/auth/domain/entities/forget_password_request.dart';
import 'package:untitled/features/auth/domain/entities/auth_result.dart';
import 'package:untitled/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/entities/change_password_request.dart';
import '../../domain/entities/edit_profile.dart';
import '../../domain/entities/reset_password_request.dart';
import '../../domain/entities/verify_reset_code_request.dart';
import '../models/change_password_response.dart';
import '../models/delete_my_account_response.dart';
import '../models/edit_profile_response.dart';
import '../models/forget_password_response.dart';
import '../models/get_logged_user_info_response.dart';
import '../models/logout_response.dart';
import '../models/reset_password_response.dart';
import '../models/sign_in_response.dart';
import '../models/verify_reset_code_response.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepoImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, AuthResult>> signUp({
    required SignUpRequest request,
  }) async {
    try {
      final Response response = await _remoteDataSource.signUp(
        request: request,
      );
      if (response.statusCode == 200 && response.data["message"] == "success") {
        return Right(SignUpResponse.fromJson(response.data).toEntity());
      } else {
        return Left(ServerFailure(response.data["message"]));
      }
    } on DioException catch (error) {
      return Left(error.response?.data["message"]);
    }
  }

  @override
  Future<Either<Failure, AuthResult>> signIn({
    required SignInRequest request,
  }) async {
    try {
      final Response response = await _remoteDataSource.signIn(
        request: request,
      );
      if (response.statusCode == 200 && response.data["message"] == "success") {
        return Right(SignInResponse.fromJson(response.data).toEntity());
      } else {
        return Left(ServerFailure(response.data["message"]));
      }
    } on DioException catch (error) {
      return Left(error.response?.data["message"]);
    }
  }

  @override
  Future<Either<Failure, AuthResult>> forgetPassword({
    required ForgetPasswordRequest request,
  }) async {
    try {
      final Response response = await _remoteDataSource.forgetPassword(
        request: request,
      );
      if (response.statusCode == 200 && response.data["message"] == "success") {
        return Right(ForgetPasswordResponse.fromJson(response.data).toEntity());
      } else {
        return Left(ServerFailure(response.data["message"]));
      }
    } on DioException catch (error) {
      return Left(error.response?.data["message"]);
    }
  }

  @override
  Future<Either<Failure, AuthResult>> verifyResetCode({
    required VerifyResetCodeRequest request,
  }) async {
    try {
      final Response response = await _remoteDataSource.verifyResetCode(
        request: request,
      );
      if (response.statusCode == 200 && response.data["message"] == "success") {
        return Right(
            VerifyResetCodeResponse.fromJson(response.data).toEntity());
      } else {
        return Left(ServerFailure(response.data["message"]));
      }
    } on DioException catch (error) {
      return Left(error.response?.data["message"]);
    }
  }

  @override
  Future<Either<Failure, AuthResult>> resetPassword({
    required ResetPasswordRequest request,
  }) async {
    try {
      final Response response = await _remoteDataSource.resetPassword(
        request: request,
      );
      if (response.statusCode == 200 && response.data["message"] == "success") {
        return Right(ResetPasswordResponse.fromJson(response.data).toEntity());
      } else {
        return Left(ServerFailure(response.data["message"]));
      }
    } on DioException catch (error) {
      return Left(error.response?.data["message"]);
    }
  }

  @override
  Future<Either<Failure, AuthResult>> changePassword({
    required ChangePasswordRequest request,
  }) async {
    try {
      final Response response = await _remoteDataSource.changePassword(
        request: request,
      );
      if (response.statusCode == 200 && response.data["message"] == "success") {
        return Right(ChangePasswordResponse.fromJson(response.data).toEntity());
      } else {
        return Left(ServerFailure(response.data["message"]));
      }
    } on DioException catch (error) {
      return Left(error.response?.data["message"]);
    }
  }

  @override
  Future<Either<Failure, AuthResult>> editProfile({
    required EditProfileRequest request,
  }) async {
    try {
      final Response response = await _remoteDataSource.editProfile(
        request: request,
      );
      if (response.statusCode == 200 && response.data["message"] == "success") {
        return Right(EditProfileResponse.fromJson(response.data).toEntity());
      } else {
        return Left(ServerFailure(response.data["message"]));
      }}
      on DioException catch (error) {
      return Left(error.response?.data["message"]);
    }
  }

@override
Future<Either<Failure, AuthResult>> deleteMyAccount() async {
    try {
      final Response response = await _remoteDataSource.deleteMyAccount();
      if (response.statusCode == 200 && response.data["message"] == "success") {
        return Right(DeleteMyAccountResponse.fromJson(response.data).toEntity());
        } else {
        return Left(ServerFailure(response.data["message"]));
      }
    } on DioException catch (error) {
      return Left(error.response?.data["message"]);
    }
  }
@override
Future<Either<Failure, AuthResult>> logout() async {
    try {
      final Response response = await _remoteDataSource.logout();
      if (response.statusCode == 200 && response.data["message"] == "success") {
        return Right(LogoutResponse.fromJson(response.data).toEntity());
        } else {
        return Left(ServerFailure(response.data["message"]));
      }
    } on DioException catch (error) {
      return Left(error.response?.data["message"]);
    }
  }

@override
Future<Either<Failure, AuthResult>> getLoggedUserInfo() async {
    try {
      final Response response = await _remoteDataSource.getLoggedUserInfo();
      if (response.statusCode == 200 && response.data["message"] == "success") {
        return Right(GetLoggedUserInfoResponse.fromJson(response.data).toEntity());
        } else {
        return Left(ServerFailure(response.data["message"]));
      }
    } on DioException catch (error) {
      return Left(error.response?.data["message"]);
      }
}
}
