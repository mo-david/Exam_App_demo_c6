import 'package:untitled/features/auth/domain/entities/sign_in_request.dart';
import 'package:untitled/features/auth/domain/entities/auth_result.dart';
import 'package:untitled/core/error/failures.dart';
import 'package:untitled/features/auth/domain/repo/auth_repo.dart';
import 'package:dartz/dartz.dart';

class SignInUseCase {
  final AuthRepo _repo;
  SignInUseCase(this._repo);

  Future<Either<Failure, AuthResult>> execute({required SignInRequest request}) async {
    return await _repo.signIn(request: request);
  }
}
