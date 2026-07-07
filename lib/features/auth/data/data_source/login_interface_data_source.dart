abstract class LoginInterfaceDataSource {
  Future <void> login();
}

class RemoteLoginInterfaceDataSource implements LoginInterfaceDataSource{
  @override
  Future<void> login() {
    throw UnimplementedError();
  }
}