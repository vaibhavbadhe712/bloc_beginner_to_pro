import 'package:equatable/equatable.dart';


class CounterState extends Equatable{
  final int Counter;
  const CounterState({
    this.Counter=0
  });

CounterState copyWith({int? Counter}){
  return CounterState(
    Counter:  Counter ?? this.Counter
  );
}

@override
  
  List<Object> get props => [Counter];
}