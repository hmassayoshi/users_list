import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:users_list/data/data_sources/user_remote_data_source.dart';
import 'package:users_list/data/repositories/user_repository_impl.dart';
import 'package:users_list/domain/use_cases/get_users_details_use_case.dart';
import 'package:users_list/domain/use_cases/get_users_use_case.dart';
import 'package:users_list/presentation/controller/user_controller.dart';
import 'package:users_list/presentation/page/user_list_page.dart';

void main() {
  final Dio dio = Dio();
  final UserRemoteDataSource remoteDataSource = UserRemoteDataSource(dio);
  final UserRepositoryImpl repository = UserRepositoryImpl(remoteDataSource);

  final GetUsersUseCase getUsersUseCase = GetUsersUseCase(repository);
  final GetUserDetailsUseCase getUserDetailsUseCase =
      GetUserDetailsUseCase(repository);

  Get.put(getUsersUseCase);
  Get.put(getUserDetailsUseCase);

  Get.put(
    UserController(
      getUsersUseCase,
      getUserDetailsUseCase,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'User List App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: UserListPage(),
    );
  }
}
