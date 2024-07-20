part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class Inc extends CounterEvent{}
class Dec extends CounterEvent{}
class Re extends CounterEvent{}
