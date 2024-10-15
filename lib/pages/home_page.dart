import 'dart:math';

import 'package:cheems_unlimited/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = context.read<CounterBloc>();
    const int counterValue = 1;
    const int resetValue = 0;

    return Scaffold(
      appBar: AppBar(title: const Text("Cheems Unlimited")),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                for (int i = 0; i < state.counter; i++)
                  Positioned(
                    left: Random().nextDouble() * MediaQuery.of(context).size.width,
                    top: Random().nextDouble() * MediaQuery.of(context).size.height,
                    child: Image.asset(
                      "assets/images/cheems.png",
                      width: Random().nextInt(200).toDouble(),
                      height: Random().nextInt(200).toDouble(),
                    ),
                  )
              ],
            );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 28.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                counterBloc.add(CounterReset(resetValue));
              },
              child: const Icon(Icons.delete),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    counterBloc.add(CounterIncrement(counterValue));
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 16),
                FloatingActionButton(
                  onPressed: () {
                    counterBloc.add(CounterDecrement(counterValue));
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
