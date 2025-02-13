import 'package:bloc_project_beginner_to_pro/logic_file/button_logic/button_bloc.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/counter/counter_bloc.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/counter/counter_event.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/first_screen_logic/first_screen_logic.dart';
import 'package:bloc_project_beginner_to_pro/prensentation/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FirstScreenBloc(),
        ),
        BlocProvider(
          create: (context) => ButtonBloc(),
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:FirstScreen() ,
      ),
    );}
}
