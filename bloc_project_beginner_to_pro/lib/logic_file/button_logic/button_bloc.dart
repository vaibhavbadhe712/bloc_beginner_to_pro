import 'package:flutter_bloc/flutter_bloc.dart';
import 'button_event.dart';
import 'button_state.dart';

class ButtonBloc extends Bloc<ButtonEvent, ButtonState> {
  ButtonBloc() : super(ButtonState()){
on<ToggleButtonEvent>(_toggleButton);
  }
  void _toggleButton(
    ToggleButtonEvent events, Emitter<ButtonState> emit){
      emit(state.copyWith(isButton: !state.isButton));

    }
  


}
