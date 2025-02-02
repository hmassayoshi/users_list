import 'package:medicina_direta/data/repositories/user_repository.dart';
import 'package:medicina_direta/domain/entities/user.dart';

class GetUserDetailsUseCase {
  final UserRepository repository;

  GetUserDetailsUseCase(this.repository);

  Future<User> execute(int userId) async {
    return await repository.getUserDetails(userId);
  }
}
