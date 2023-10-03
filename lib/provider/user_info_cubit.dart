import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senaecelik/data/model/static_user_model.dart';

import 'package:senaecelik/data/repository/user_repository.dart';
part 'user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit() : super(InitialState());

  final repository = UserRepository();
  Future<void> getUserInfo() async {
    emit(LoadingState());
    await Future.delayed(const Duration(seconds: 4));
    await repository.getUserInfo().then((value) {
      if (value != null) {
        StaticUserModel.user = value.first;
        emit(LoadedState());
      } else {
        emit(ErrorState(message: "Bulunamadı"));
      }
    }).onError(
      (error, stackTrace) {
        emit(ErrorState(message: error.toString()));
      },
    );
  }
}
