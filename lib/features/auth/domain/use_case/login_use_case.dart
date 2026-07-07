import 'package:untitled/features/auth/domain/repo/repo.dart';

class LoginUseCase {
  final InterfaceRepo _repo;
  LoginUseCase(this._repo);
  Future<void> execute() async {
    return await _repo.getAllSources();
  }
}