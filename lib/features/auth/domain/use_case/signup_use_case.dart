import 'package:untitled/features/auth/domain/entities/sign_up_request.dart';
import 'package:untitled/features/auth/domain/entities/auth_result.dart';
import 'package:untitled/core/error/failures.dart';
import 'package:untitled/features/auth/domain/repo/auth_repo.dart';
import 'package:dartz/dartz.dart';

class SignupUseCase {
  final AuthRepo _repo;
  SignupUseCase(this._repo);

  Future<Either<Failure, AuthResult>> execute({required SignUpRequest request}) async {
    return await _repo.signUp(request: request);
  }
}
