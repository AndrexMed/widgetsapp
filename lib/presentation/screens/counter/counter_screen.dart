import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
//need a easy app counter.

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: const _CounterView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class _CounterView extends StatelessWidget {
  const _CounterView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Contador',
          ),
          Text('5', style: Theme.of(context).textTheme.displayMedium),
        ],
      ),
    );
  }
}
