import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class {{name.pascalCase()}}Repository {

Future<void> doSomething(){
 // todo: implement repository code
 throw UnimplementedError();
}
}

final {{name.camelCase()}}Repository = Provider<{{name.pascalCase()}}Repository>((ref) {
  return {{name.pascalCase()}}Repository();
});
