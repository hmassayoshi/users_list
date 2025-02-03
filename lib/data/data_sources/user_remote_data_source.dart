import 'package:dio/dio.dart';

import 'package:users_list/data/models/user_model.dart';
import 'package:users_list/domain/entities/user.dart';

class UserRemoteDataSource {
  final Dio dio;

  UserRemoteDataSource(this.dio);

  Future<List<User>> getUsers() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/users');
    return (response.data as List)
        .map((user) => UserModel.fromJson(user).toEntity())
        .toList();
  }

  Future<User> getUserDetails(int userId) async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/users/$userId');
    return UserModel.fromJson(response.data).toEntity();
  }
}
