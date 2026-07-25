import 'package:injectable/injectable.dart';
import '../entities/auth_result.dart';
import '../entities/edit_profile_request.dart';
import '../repo/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:untitled/core/error/failures.dart';


@injectable
class EditProfileUseCase {
  final AuthRepo _repo;
  EditProfileUseCase(this._repo);
  Future<Either<Failure, AuthResult>> execute({
    required EditProfileRequest request
  }) async {
    return await _repo.editProfile(request: request);
  }
}
