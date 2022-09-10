import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_2/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Counter',
          style: (TextStyle(color: Colors.white, fontSize: 30)),
        ),
      ),
      body:  Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) => Text(
            '$state',
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                return context.read<CounterCubit>().increment();
              }),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                return context.read<CounterCubit>().decrement();
              }),
        ],
      ),
    );
  }
}
