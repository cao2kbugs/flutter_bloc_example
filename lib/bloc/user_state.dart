part of 'user_bloc.dart';

@immutable
sealed class UserState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class UserLoaded extends UserState {
  final UserModel user;

  UserLoaded(this.user);

  @override
  List<Object?> get props => [user];
}

final class UserError extends UserState {
  final String message;

  UserError(this.message);
}
