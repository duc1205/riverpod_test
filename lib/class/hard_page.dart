import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/class/riverpod.dart';

class HardPage extends ConsumerWidget {
  const HardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Hard Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(riverpodHardLevel).counter.toString(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodHardLevel).increment();
              },
              label: const Text('Add'),
              icon: const Icon(Icons.add),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodHardLevel).decrement();
              },
              label: const Text('Remove'),
              icon: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
