import '../../domain/repo/repo.dart';
import '../data_source/login_interface_data_source.dart';

class RepoImpl implements InterfaceRepo {
  final LoginInterfaceDataSource _dataSourceInterface;
  RepoImpl(this._dataSourceInterface);
  @override
  Future<void> getAllSources() async {
    return await _dataSourceInterface.login();
  }

}