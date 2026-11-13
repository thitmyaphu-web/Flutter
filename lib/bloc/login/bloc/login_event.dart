abstract class LoginEvent {}

// Login  Event
class LoginSubmitEvent extends LoginEvent {
  final String email;
  final String password;

  LoginSubmitEvent({required this.email, required this.password});
}

// Register  Event
class RegisterSubmitEvent extends LoginEvent {
  final String name;
  final String email;
  final String password;

  RegisterSubmitEvent({
    required this.name,
    required this.email,
    required this.password,
  });
}

// Logout  Event
class LogoutEvent extends LoginEvent {}