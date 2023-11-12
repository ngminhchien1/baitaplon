import 'package:bloc/bloc.dart';
import 'package:btl/repository/user_repo_impl.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepositoryImplement userRepository;
  UserCubit(this.userRepository) : super(UserInitial());
  loginRequest(String username, String password) async {
    final int response = await userRepository.LoginRequest(username, password);
    // ignore: unrelated_type_equality_checks
    if (response == 1) {
      emit(LoginSuccess());
    } else {
      emit(LoginFailed());
    }
  }
}
