import 'package:injectable/injectable.dart';

@Injectable()
class ServiceFuture {
  ServiceFuture._() {
    print('creating future service');
  }

  @FactoryMethod()
  static Future<ServiceFuture> getInstance() async {
    await Future.delayed(Duration(milliseconds: 500));
    return ServiceFuture._();
  }

  void call() {
    print('call future service');
  }
}
