import 'package:untitled/features/auth/domain/repo/repo.dart';

class  ForgetPasswordUseCase {
  final InterfaceRepo _repo;
  ForgetPasswordUseCase(this._repo);
  Future<void> execute() async {
    return await _repo.getAllSources();
  }
}