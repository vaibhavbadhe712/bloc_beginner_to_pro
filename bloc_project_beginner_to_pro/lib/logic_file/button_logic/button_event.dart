import 'package:equatable/equatable.dart';

abstract class ButtonEvent extends Equatable {
  ButtonEvent();
  @override
  List<Object> get props => [];
}

class ToggleButtonEvent extends ButtonEvent {}

