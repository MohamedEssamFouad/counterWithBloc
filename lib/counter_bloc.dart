import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter=0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
     if(event is Inc){
       counter=counter+1;
       emit(counterChangeState(counter: counter));
     }
     else if(event is Dec){
       counter=counter-1;
       emit(counterChangeState(counter: counter));
     }
     else{
       counter=0;
       emit(counterChangeState(counter: counter));
     }
    });
  }
}
