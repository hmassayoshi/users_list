import 'package:flutter_test/flutter_test.dart';
import 'package:users_list/domain/entities/user.dart';
import 'package:users_list/domain/use_cases/get_users_details_use_case.dart';
import 'package:mockito/mockito.dart';

import 'mocks/user_repository.mocks.dart';


void main() {
  late GetUserDetailsUseCase getUserDetailsUseCase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    getUserDetailsUseCase = GetUserDetailsUseCase(mockUserRepository);
  });

  test('Should return user details', () async {
    // Arrange
    final user = User(
      id: 1,
      name: 'Leanne Graham',
      email: 'test@test.com',
      avatarUrl: 'https://image.com',
    );
    when(mockUserRepository.getUserDetails(1)).thenAnswer((_) async => user);

    // Act
    final result = await getUserDetailsUseCase.execute(1);

    // Assert
    expect(result, isA<User>());
    expect(result.name, 'Leanne Graham');
    expect(result.email, 'test@test.com');
    verify(mockUserRepository.getUserDetails(1)).called(1);
  });

  test('Should throw exception when user not found', () async {
    // Arrange
    when(mockUserRepository.getUserDetails(1))
        .thenThrow(Exception('Usuário não encontrado'));

    // Act e Assert
    expect(() => getUserDetailsUseCase.execute(1), throwsException);
    verify(mockUserRepository.getUserDetails(1)).called(1);
  });
}
