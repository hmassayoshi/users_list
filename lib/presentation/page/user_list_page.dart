import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:users_list/presentation/controller/user_controller.dart';
import 'package:users_list/presentation/page/user_details_page.dart';
import 'package:users_list/presentation/widgets/user_list_item.dart';

class UserListPage extends StatelessWidget {
  final UserController controller =
      Get.find();

  UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
      ),
      body: Obx(() {
        if (controller.isLoadingUserList.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return RefreshIndicator(
          onRefresh: () => controller.fetchUsers(),
          child: ListView.builder(
            itemCount: controller.users.length,
            itemBuilder: (context, index) {
              final user = controller.users[index];
              return UserListItem(
                user: user,
                onTap: () async {
                  await controller.fetchUserDetails(user.id);
                  Get.to(() =>
                      UserDetailsPage(user: controller.selectedUser.value));
                },
              );
            },
          ),
        );
      }),
    );
  }
}
