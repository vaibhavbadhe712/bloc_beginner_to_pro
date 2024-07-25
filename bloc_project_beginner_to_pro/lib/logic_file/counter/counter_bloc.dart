import 'package:bloc/bloc.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/counter/counter_event.dart';
import 'package:bloc_project_beginner_to_pro/logic_file/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{

  CounterBloc() :super (CounterState()){
       on<Increment>(_increment);
        on<Decrement>(_decrement);
  }

  void _increment(Increment events, Emitter <CounterState> emit ){
 emit(state.copyWith(Counter: state.Counter +1 ));
  }

  void _decrement(Decrement events, Emitter<CounterState> emit ){
 emit(state.copyWith(Counter: state.Counter -1 ));
  }
}