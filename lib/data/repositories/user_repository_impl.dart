import 'package:users_list/data/data_sources/user_remote_data_source.dart';
import 'package:users_list/data/repositories/user_repository.dart';
import 'package:users_list/domain/entities/user.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<User>> getUsers() async {
    return await remoteDataSource.getUsers();
  }

  @override
  Future<User> getUserDetails(int userId) async {
    return await remoteDataSource.getUserDetails(userId);
  }
}
