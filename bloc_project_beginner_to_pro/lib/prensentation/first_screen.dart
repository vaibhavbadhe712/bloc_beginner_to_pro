import 'package:bloc_project_beginner_to_pro/logic_file/first_screen_logic/first_screen_event.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/first_screen_logic/first_screen_logic.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/first_screen_logic/first_screen_state.dart';
import 'package:bloc_project_beginner_to_pro/prensentation/button_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<FirstScreenBloc, FirstScreenState>(
            buildWhen: (previous, current) =>
                previous.isSwitch != current.isSwitch,
            builder: (context, state) {
              return Switch(
                  value: state.isSwitch,
                  onChanged: (value) {
                    print(value);
                    context.read<FirstScreenBloc>().add(
                          EnableOrDisableNotificaiton(),
                        );
                  });
            },
          ),
          SizedBox(
            height: 40,
          ),
          BlocBuilder<FirstScreenBloc, FirstScreenState>(
            buildWhen: (previous, current) => previous.Slider != current.Slider,
            builder: (context, state) {
              return Slider(
                  value: state.Slider,
                  onChanged: (value) {
                    print(value);
                    context
                        .read<FirstScreenBloc>()
                        .add(SliderEvent(Slider: value));
                  });
            },
          ),
          SizedBox(
            height: 40,
          ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ButtonScreen()),
                );
              },
              child: Text("Next"),
            ),
        ],
      ),
    );
  }
}
