import 'package:untitled/features/auth/domain/entities/change_password_request.dart';

import 'package:injectable/injectable.dart';
import '../entities/auth_result.dart';
import '../repo/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:untitled/core/error/failures.dart';


@injectable
class ChangePasswordUseCase {
  final AuthRepo _repo;
  ChangePasswordUseCase(this._repo);
  Future<Either<Failure, AuthResult>> execute({
    required ChangePasswordRequest request}) async {
    return await _repo.changePassword(request: request);
  }
}
