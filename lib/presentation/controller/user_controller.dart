import 'package:get/get.dart';

import 'package:medicina_direta/domain/entities/user.dart';
import 'package:medicina_direta/domain/use_cases/get_users_details_use_case.dart';
import 'package:medicina_direta/domain/use_cases/get_users_use_case.dart';

class UserController extends GetxController {
  final GetUsersUseCase getUsersUseCase;
  final GetUserDetailsUseCase getUserDetailsUseCase;

  UserController(
    this.getUsersUseCase,
    this.getUserDetailsUseCase,
  );

  var users = <User>[].obs;
  var isLoadingUserList = true.obs;
  var isLoadingUserDetails = true.obs;
  var selectedUser = User(id: 0, name: '', email: '', avatarUrl: '').obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  Future<void> fetchUsers() async {
    isLoadingUserList.value = true;
    users.value = await getUsersUseCase.execute();
    isLoadingUserList.value = false;
  }

  Future<void> fetchUserDetails(int userId) async {
    isLoadingUserDetails.value = true;
    selectedUser.value = await getUserDetailsUseCase
        .execute(userId); // Usando o GetUserDetailsUseCase
    isLoadingUserDetails.value = false;
  }
}
