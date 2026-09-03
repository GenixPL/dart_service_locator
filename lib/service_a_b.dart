import 'package:injectable/injectable.dart';

@Injectable()
class ServiceA {
  ServiceA() {
    print('building service a');
  }

  void call() {
    print('call a');
  }
}

@Injectable()
class ServiceB(final ServiceA _serviceA) {
  this {
    print('building service b');
  }

  void call() {
    print('call b');
    _serviceA.call();
  }
}
