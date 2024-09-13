import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/class/riverpod_model.dart';

final riverpodEasyLevel = StateProvider<int>((ref) {
  return 0;
});

final riverpodHardLevel = ChangeNotifierProvider<RiverpodModel>((ref) {
  return RiverpodModel(counter: 0);
});
