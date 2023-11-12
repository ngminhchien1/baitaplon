part of 'user_cubit.dart';

abstract class UserState {}

final class UserInitial extends UserState {}

class LoginSuccess extends UserState {}

class LoginFailed extends UserState {}
