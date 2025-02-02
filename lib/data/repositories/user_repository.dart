import 'package:medicina_direta/domain/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getUsers();

  Future<User> getUserDetails(int userId);
}
