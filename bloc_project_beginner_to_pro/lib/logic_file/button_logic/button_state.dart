import 'package:equatable/equatable.dart';

 class ButtonState extends Equatable {
 final bool isButton;

  ButtonState({this.isButton = false});

  ButtonState copyWith ({bool? isButton}) {
    return ButtonState(
      isButton: isButton ?? this.isButton
      );
  }

  @override
  List<Object> get props => [isButton];
}

