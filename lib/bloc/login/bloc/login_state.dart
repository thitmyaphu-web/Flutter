abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

//  Profile State
class UserLoggedinState extends LoginState {
  final String name;
  final String email;

  UserLoggedinState({required this.name, required this.email});
}

// show loginin failure State
class LoginFailureState extends LoginState {
  final String error;

  LoginFailureState(this.error);
}