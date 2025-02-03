import 'package:users_list/data/repositories/user_repository.dart';
import 'package:users_list/domain/entities/user.dart';

class GetUserDetailsUseCase {
  final UserRepository repository;

  GetUserDetailsUseCase(this.repository);

  Future<User> execute(int userId) async {
    return await repository.getUserDetails(userId);
  }
}
