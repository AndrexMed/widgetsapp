import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetsapp/presentation/providers/counter_provider.dart';
import 'package:widgetsapp/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clickCounter = ref.watch(counterProvider);
    final isDarkMode = ref.watch(isDarkModeProv);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDarkModeProv.notifier).update((state) => !state);
              },
              icon: isDarkMode
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode))
        ],
      ),
      body: _CounterView(clickCounter: clickCounter),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          //ref.read(counterProvider.notifier).state++;
          //Otra forma de cambiar el estado
          ref.read(counterProvider.notifier).update(
                (value) => value + 1,
              );
        },
      ),
    );
  }
}

class _CounterView extends StatelessWidget {
  final int clickCounter;
  const _CounterView({
    required this.clickCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Contador',
          ),
          Text(clickCounter.toString(),
              style: Theme.of(context).textTheme.displayMedium),
        ],
      ),
    );
  }
}
