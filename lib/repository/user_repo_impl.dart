// ignore_for_file: non_constant_identifier_names

import 'package:btl/repository/user_repository.dart';
import 'package:dio/dio.dart';

class UserRepositoryImplement implements UserRepository {
  final Dio dio = Dio(BaseOptions(
      connectTimeout: Duration(milliseconds: 3000),
      receiveTimeout: Duration(milliseconds: 3000)));

  @override
  Future<int> LoginRequest(String username, String password) async {
    final response = await dio.get("54.251.217.59:8080/api/login",
        data: {"username": username, "password": password});
    try {
      if (response.statusCode == 200) {
        return 1;
      } else {
        return 0;
      }
    } catch (e) {
      return 0;
    }
  }
}
