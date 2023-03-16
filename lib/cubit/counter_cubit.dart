import 'package:bloc2/cubit/cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CubitState>{
  int count = 0;
  CounterCubit(): super(InitState());

  void counterIncrease() {
    count++;
    emit(UpdateState(count: count));
  }

  void counterDecrease() {
    if(count>0){
      count--;
    }
    emit(UpdateState(count: count));
  }
}