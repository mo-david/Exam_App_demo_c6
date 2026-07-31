import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@lazySingleton
class TokenStorage {
  final FlutterSecureStorage _storage;
  static const String tokenKey = 'token';

  TokenStorage():_storage=const FlutterSecureStorage();

  Future<void> saveToken(String token) async {
    await _storage.write(key: tokenKey, value: token);
  }
  Future<String?> getToken() async {
    return await _storage.read(key: tokenKey);
  }
  Future<void> deleteToken() async {
    await _storage.delete(key: tokenKey);
  }
  Future<bool> hasToken() async {
    final token = await _storage.read(key: tokenKey);
    if (token != null) {
      return true;
    } else {
      return false;
    }
  }
}

