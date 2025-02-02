import 'package:flutter/material.dart';
import 'package:medicina_direta/domain/entities/user.dart';

class UserAvatar extends StatelessWidget {
  final User user;
  final double size;

  const UserAvatar({super.key, required this.user, this.size = 16});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundColor: (user.avatarUrl == null) ? Colors.blue : null,
      child: (user.avatarUrl == null)
          ? Icon(
              Icons.person,
              color: Colors.white,
              size: size,
            )
          : Image.network(user.avatarUrl!),
    );
  }
}
