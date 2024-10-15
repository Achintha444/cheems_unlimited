part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

final class CounterIncrement extends CounterEvent {
  final int value;

  CounterIncrement(this.value);
}

final class CounterDecrement extends CounterEvent {
  final int value;

  CounterDecrement(this.value);
}

final class CounterReset extends CounterEvent {
  final int value;

  CounterReset(this.value);
}
