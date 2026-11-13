import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial/UI/login.dart';
import 'package:tutorial/bloc/login/bloc/login_bloc.dart';
import 'package:tutorial/exec/buttons.dart';
import 'package:tutorial/exec/floatingbutton.dart';
import 'package:tutorial/exec/home.dart';
import 'package:tutorial/exec/iconbuttton.dart';
import 'package:tutorial/exec/layout1.dart';
import 'package:tutorial/exec/new.dart';
import 'package:tutorial/exec/old.dart';
import 'package:tutorial/exec/formeg.dart';
// import 'package:tutorial/shop.dart';

import 'bloc/login/bloc/login_bloc.dart';
import 'UI/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tutorial BLoC App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}