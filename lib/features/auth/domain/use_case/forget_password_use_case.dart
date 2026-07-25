import 'package:injectable/injectable.dart';
import 'package:untitled/features/auth/domain/entities/forget_password_request.dart';
import 'package:untitled/features/auth/domain/entities/auth_result.dart';
import 'package:untitled/core/error/failures.dart';
import 'package:untitled/features/auth/domain/repo/auth_repo.dart';
import 'package:dartz/dartz.dart';

@injectable
class ForgetPasswordUseCase {
  final AuthRepo _repo;
  ForgetPasswordUseCase(this._repo);

  Future<Either<Failure, AuthResult>> execute({
    required ForgetPasswordRequest request
  }) async {
    return await _repo.forgetPassword(request: request);
  }
}
