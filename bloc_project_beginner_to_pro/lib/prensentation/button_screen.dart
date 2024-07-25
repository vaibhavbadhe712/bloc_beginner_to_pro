import 'package:bloc_project_beginner_to_pro/logic_file/button_logic/button_bloc.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/button_logic/button_event.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/button_logic/button_state.dart';
import 'package:bloc_project_beginner_to_pro/prensentation/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ButtonBloc, ButtonState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                state.isButton
                    ? _textFiledWidget(context)
                    : _textFiledWidget2(context),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    BlocBuilder<ButtonBloc, ButtonState>(
                      builder: (context, state) {
                        return Text(state.isButton ? "start" : "end");
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<ButtonBloc>(context)
                            .add(ToggleButtonEvent());
                      },
                      child: Text("Change"),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CounterScreen()),
                        );
                      },
                      child: Text("Next Page"),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _textFiledWidget(BuildContext context) {
    print("email active");

    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "email",
              labelText: "Email"),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "password",
              labelText: "Password"),
        ),
      ],
    );
  }

  _textFiledWidget2(BuildContext context) {
    print("password active");
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Phone Number",
              labelText: "enter phone number"),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter OTP",
              labelText: "enter OTP"),
        ),
      ],
    );
  }
}
