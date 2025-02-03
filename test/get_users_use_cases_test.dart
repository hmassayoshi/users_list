import 'package:flutter_test/flutter_test.dart';
import 'package:users_list/domain/entities/user.dart';
import 'package:users_list/domain/use_cases/get_users_use_case.dart';
import 'package:mockito/mockito.dart';

import 'mocks/user_repository.mocks.dart';

void main() {
  late GetUsersUseCase getUsersUseCase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    getUsersUseCase = GetUsersUseCase(mockUserRepository);
  });

  test('Should return users list', () async {
    // Arrange
    final users = [
      User(
        id: 1,
        name: 'Leanne Graham',
        email: 'test@test.com',
        avatarUrl: 'https://image.com',
      ),
      User(
        id: 2,
        name: 'Ervin Howel',
        email: 'test@test.com',
        avatarUrl: 'https://image.com',
      ),
    ];
    when(mockUserRepository.getUsers()).thenAnswer((_) async => users);

    // Act
    final result = await getUsersUseCase.execute();

    // Assert
    expect(result, isA<List<User>>());
    expect(result.length, 2);
    expect(result[0].name, 'Leanne Graham');
    expect(result[1].email, 'test@test.com');
    verify(mockUserRepository.getUsers()).called(1);
  });

  test('Should throw exception if user list is empty', () async {
    // Arrange
    when(mockUserRepository.getUsers())
        .thenThrow(Exception('Erro ao buscar usuários'));

    // Act e Assert
    expect(() => getUsersUseCase.execute(), throwsException);
    verify(mockUserRepository.getUsers()).called(1);
  });
}
