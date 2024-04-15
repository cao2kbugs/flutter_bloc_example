import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/models/user_model.dart';

class UserInfo extends StatelessWidget {
  final UserModel userModel;

  const UserInfo({
    super.key,
    required this.userModel,
  });

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 30);
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "User ID: ${userModel.userId}",
              style: style,
            ),
            Text(
              "User Name: ${userModel.userName}",
              style: style,
            ),
            Text(
              "Followers: ${userModel.followers}",
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}
