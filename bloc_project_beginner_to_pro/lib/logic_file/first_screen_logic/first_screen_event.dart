import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


abstract class FirstScreenEvent {
  FirstScreenEvent();

  @override
 List<Object> get props =>[];
}

class EnableOrDisableNotificaiton extends FirstScreenEvent{}

class SliderEvent extends FirstScreenEvent{
  double Slider;
  SliderEvent({required this.Slider});

  @override
  List<Object> get props => [Slider];
}