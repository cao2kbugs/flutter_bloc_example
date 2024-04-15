import 'package:equatable/equatable.dart';

class UserModel extends Equatable{
  final int userId;
  final String userName;
  final int followers;

  const UserModel({
    required this.userId,
    required this.userName,
    required this.followers,
  });

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
    userId: json["user_id"],
    userName: json["user_name"],
    followers: json["followers"],
  );

  Map<String, dynamic> toMap() => {
    "user_id": userId,
    "user_name": userName,
    "followers": followers,
  };

  @override
  List<Object?> get props => [userId, userName, followers];
}
