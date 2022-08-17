import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/{{name.snakeCase()}}_repositories.dart';

class {{name.pascalCase()}}Provider extends StateNotifier<AsyncValue<bool>> {
  {{name.pascalCase()}}Provider(this.ref) : super(const AsyncLoading());
  final Ref ref;

  void something() async {
    try {
      state = const AsyncLoading();
      await ref.read({{name.camelCase()}}Repository).doSomething();
      state = const AsyncData(true);
    } catch (e, s) {
      state = AsyncValue.error(e, stackTrace: s);
    }
  }
}

final {{name.camelCase()}}Provider = StateNotifierProvider<{{name.pascalCase()}}Provider, AsyncValue<bool>>((ref) {
  return {{name.pascalCase()}}Provider(ref);
});
