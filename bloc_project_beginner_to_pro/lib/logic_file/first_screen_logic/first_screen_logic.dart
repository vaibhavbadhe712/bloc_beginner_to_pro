import 'package:bloc/bloc.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/first_screen_logic/first_screen_event.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/first_screen_logic/first_screen_state.dart';
import 'package:flutter/material.dart';

class FirstScreenBloc extends Bloc<FirstScreenEvent, FirstScreenState> {
  FirstScreenBloc() : super(FirstScreenState()) {
    on<EnableOrDisableNotificaiton>(_enableOrDisableNotification);
    on<SliderEvent>(_slider);
  }
  void _enableOrDisableNotification(
      EnableOrDisableNotificaiton events, Emitter<FirstScreenState> emit) {
    emit(state.eCopyWith(isSwitch: !state.isSwitch));
  }

  void _slider(SliderEvent events, Emitter<FirstScreenState> emit) {
    emit(state.eCopyWith(Slider: events.Slider));
  }
}
