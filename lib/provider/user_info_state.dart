part of 'user_info_cubit.dart';

abstract class UserInfoState {}

class InitialState extends UserInfoState {}

class LoadingState extends UserInfoState {}

class LoadedState extends UserInfoState {

}

class ErrorState extends UserInfoState {
  final String message;

  ErrorState({required this.message});
}
