import 'package:medicina_direta/data/repositories/user_repository.dart';
import 'package:medicina_direta/domain/entities/user.dart';

class GetUsersUseCase {
  final UserRepository repository;

  GetUsersUseCase(this.repository);

  Future<List<User>> execute() async {
    return await repository.getUsers();
  }
}
