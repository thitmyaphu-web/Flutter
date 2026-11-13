import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/login/bloc/login_bloc.dart';
import '../bloc/login/bloc/login_event.dart';
import '../bloc/login/bloc/login_state.dart';
import 'login.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "User Profile Details",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                if (state is UserLoggedinState) {
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 40,
                            child: Icon(Icons.person, size: 45),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            "Name: ${state.name}",
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Email: ${state.email}",
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            onPressed: () {
                              context.read<LoginBloc>().add(LogoutEvent());
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => const LoginScreen()),
                              );
                            },
                            child: const Text("Logout"),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                if (state is LoginLoadingState) {
                  return const CircularProgressIndicator();
                }
                return const Text("No User Logged In");
              },
            ),
          ],
        ),
      ),
    );
  }
}