import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    // 1. Login Logic
    on<LoginSubmitEvent>((event, emit) async {
      emit(LoginLoadingState());
      await Future.delayed(const Duration(seconds: 1));

      if (event.email.isNotEmpty && event.password.length >= 4) {
        emit(UserLoggedinState(name: "Ah Thit", email: event.email));
      } else {
        emit(LoginFailureState("Email Or Password Wrong (Enter atleast 4 numbers!)"));
      }
    });

    // 2. Register Logic
    on<RegisterSubmitEvent>((event, emit) async {
      emit(LoginLoadingState());
      await Future.delayed(const Duration(seconds: 1));

      if (event.name.isNotEmpty && event.email.isNotEmpty && event.password.length >= 4) {
        emit(UserLoggedinState(name: event.name, email: event.email));
      } else {
        emit(LoginFailureState("Fill complete"));
      }
    });

    // 3. Logout Logic
    on<LogoutEvent>((event, emit) {
      emit(LoginInitialState());
    });
  }
}
