import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_example/controller/user_controller.dart';
import 'package:flutter_bloc_example/exceptions/api_exception.dart';
import 'package:flutter_bloc_example/models/user_model.dart';
import 'package:flutter_bloc_example/service/user_service.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    final controller = UserController(UserService());
    on<UserEventFetchData>((event, emit) async {
      emit(UserLoading());
      try {
        final userData = await controller.fetchUserdata(event.userId);
        emit(UserLoaded(userData));
      } on ApiException catch (e) {
        emit(UserError(e.message));
      }
    });
  }
}
