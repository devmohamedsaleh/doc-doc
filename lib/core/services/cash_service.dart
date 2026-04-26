import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  final FlutterSecureStorage secureStorage;

  TokenStorage(this.secureStorage);

  static const String _tokenKey = 'auth_token';

  Future<void> saveToken(String token) async {
    await secureStorage.write(key: _tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return await secureStorage.read(key: _tokenKey);
  }

  Future<void> clearToken() async {
    await secureStorage.delete(key: _tokenKey);
  }
}