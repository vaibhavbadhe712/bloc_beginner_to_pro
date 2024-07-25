import 'package:equatable/equatable.dart';
class FirstScreenState extends Equatable{
  bool isSwitch;
  double Slider;
  FirstScreenState
  ({this.isSwitch =false,this.Slider=1.0});

  FirstScreenState eCopyWith ({bool? isSwitch,double? Slider}){
    return FirstScreenState(
    isSwitch : isSwitch ??  this.isSwitch,
    Slider:Slider ?? this.Slider
  );}
  @override
  List<Object> get props=>[isSwitch,Slider];
}