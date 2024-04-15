import 'package:flutter_bloc_example/exceptions/api_exception.dart';
import 'package:flutter_bloc_example/models/user_model.dart';
import 'package:flutter_bloc_example/service/user_service.dart';

class UserController{
  late final UserService _service;

  UserController(UserService service){
    _service = service;
  }

  Future<UserModel> fetchUserdata(int userId) async {
    await Future.delayed(const Duration(seconds: 2));
    if(userId.isEven){
      throw ApiException("Fetch Data Error");
    }
    final json = _service.getUserData(userId);
    return UserModel.fromMap(json);
  }
}