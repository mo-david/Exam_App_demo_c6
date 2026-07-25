import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled/core/error/failures.dart';
import 'package:untitled/features/auth/domain/entities/auth_result.dart';
import 'package:untitled/features/auth/domain/entities/verify_reset_code_request.dart';
import 'package:untitled/features/auth/domain/repo/auth_repo.dart';

@injectable
class VerifyResetCodeUseCase {
  final AuthRepo _repo;
  VerifyResetCodeUseCase(this._repo);
  Future<Either<Failure,AuthResult>> execute ({
    required VerifyResetCodeRequest request
})async {
    return await _repo.verifyResetCode(request: request);
  }
}