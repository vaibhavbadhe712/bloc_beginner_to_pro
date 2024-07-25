import 'package:bloc_project_beginner_to_pro/logic_file/counter/counter_bloc.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/counter/counter_event.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                state.Counter.toString(),
                style: TextStyle(fontSize: 30),
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(Increment());
                  },
                  child: Text("Increment")),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(Decrement());
                  },
                  child: Text("Decrement")),
            ],
          )
        ],
      ),
    );
  }
}
