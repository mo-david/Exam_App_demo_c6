import 'package:injectable/injectable.dart';
import 'package:untitled/features/auth/domain/entities/reset_password_request.dart';
import '../entities/auth_result.dart';
import '../repo/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:untitled/core/error/failures.dart';

@injectable
class ResetPasswordUseCase {
  final AuthRepo _repo;
  ResetPasswordUseCase(this._repo);

  Future<Either<Failure,AuthResult>> execute({
    required ResetPasswordRequest request
}) async
  {
    return await _repo.resetPassword(request: request);
  }
}