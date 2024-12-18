import 'package:bloc/bloc.dart';

class CounterController extends Cubit<int> {
  CounterController() : super(5);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
