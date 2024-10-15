import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counter: 0)) {
    on<CounterIncrement>((event, emit) {
      emit(CounterState(counter: state.counter + event.value));
    });
    on<CounterDecrement>((event, emit) {
      emit(CounterState(counter: state.counter - event.value));
    });
    on<CounterReset>((event, emit) {
      emit(CounterState(counter: event.value));
    });
  }
}
