import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod_model.g.dart';

class RiverpodModel extends ChangeNotifier {
  int counter;

  RiverpodModel({
    required this.counter,
  });

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }
}

@riverpod
class RiverpodModelNotifier extends _$RiverpodModelNotifier {
  @override
  int build() => 0;

  void increment() => state++;

  void decrement() => state--;
}
