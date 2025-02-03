import 'package:users_list/data/repositories/user_repository.dart';
import 'package:users_list/domain/entities/user.dart';

class GetUsersUseCase {
  final UserRepository repository;

  GetUsersUseCase(this.repository);

  Future<List<User>> execute() async {
    return await repository.getUsers();
  }
}
