part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

class UserEventFetchData extends UserEvent{
  final int userId;

  UserEventFetchData(this.userId);

}
