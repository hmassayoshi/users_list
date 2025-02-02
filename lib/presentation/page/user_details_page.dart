import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:medicina_direta/domain/entities/user.dart';
import 'package:medicina_direta/presentation/controller/user_controller.dart';
import 'package:medicina_direta/presentation/widgets/user_avatar.dart';

class UserDetailsPage extends StatelessWidget {
  final User user;
  final UserController controller = Get.find();

  UserDetailsPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do usuário'),
      ),
      body: Obx(() {
        if (controller.isLoadingUserDetails.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: UserAvatar(
                  user: user,
                  size: 64,
                ),
              ),
              const SizedBox(height: 16),
              Text('Nome: ${user.name}'),
              const SizedBox(height: 16),
              Text('Email: ${user.email}'),
              const SizedBox(height: 16),
            ],
          ),
        );
      }),
    );
  }
}
