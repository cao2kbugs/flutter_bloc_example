import 'package:flutter_bloc_example/exceptions/api_exception.dart';

class UserService {
  Map<String, dynamic> getUserData(int userId) {
    return {
      "user_id": userId,
      "user_name": "Cao 2k bugs",
      "followers": 100,
    };
  }
}
