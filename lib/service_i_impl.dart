import 'package:injectable/injectable.dart';

abstract class ServiceI {
  void call();
}

@Named('first')
@Injectable(as: ServiceI)
class ServiceImpl1 extends ServiceI {
  @override
  void call() {
    print('call impl 1');
  }
}

@Injectable(as: ServiceI)
class ServiceImpl2(@Named('first') ServiceI service) extends ServiceI {
  @override
  void call() {
    print('call impl 2');
  }
}

@named // auto tags with the class name (dangerous with renames)
@Injectable(as: ServiceI)
class ServiceImpl3 extends ServiceI {
  @override
  void call() {
    print('call impl 3');
  }
}
