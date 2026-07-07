import 'package:untitled/features/auth/domain/repo/repo.dart';

class RegisterUseCase {
  final InterfaceRepo _repo;
  RegisterUseCase(this._repo);
  Future<void> execute() async {
    return await _repo.getAllSources();
  }
}