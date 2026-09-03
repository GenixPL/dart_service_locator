import 'package:injectable/injectable.dart';

@Injectable()
class ServiceFuture {
  ServiceFuture._();

  @FactoryMethod()
  static Future<ServiceFuture> getInstance() async {
    await Future.delayed(Duration(milliseconds: 500));
    return ServiceFuture._();
  }

  void call() {
    print('call future service');
  }
}
