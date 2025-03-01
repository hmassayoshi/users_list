import 'package:flutter/material.dart';
import 'package:users_list/domain/entities/user.dart';
import 'package:users_list/presentation/widgets/user_avatar.dart';

class UserListItem extends StatelessWidget {
  final User user;
  final VoidCallback onTap;

  const UserListItem({super.key, required this.user, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: UserAvatar(user: user),
      title: Text(user.name),
      subtitle: Text(user.email),
      onTap: onTap,
    );
  }
}
