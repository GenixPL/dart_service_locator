import 'package:injectable/injectable.dart';

@LazySingleton()
class SingletonService {
  SingletonService() {
    print('creating singleton... ($hashCode)');
  }

  @disposeMethod
  Future<void> dispose() async {
    print('disposing singleton... ($hashCode)');
    await Future.delayed(const Duration(seconds: 1));
  }

  void call() {
    print('singleton call... ($hashCode)');
  }
}
