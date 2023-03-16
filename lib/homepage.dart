import 'package:bloc2/cubit/counter_cubit.dart';
import 'package:bloc2/cubit/cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: const Text('Cubit Example'),
        ),
        body: BlocBuilder<CounterCubit, CubitState>(builder: (context, state) {
          return Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubit>().counterIncrease();
                },
                child: const Icon(Icons.add),
              ),
              (state is UpdateState)
                  ? Text(
                      state.count.toString(),
                      style: const TextStyle(fontSize: 24),
                    )
                  : const Text(
                      "0",
                      style: TextStyle(fontSize: 24),
                    ),
              FloatingActionButton(
                onPressed: () {
                 context.read<CounterCubit>().counterDecrease();
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ));
        }));
  }
}
