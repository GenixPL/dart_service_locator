import 'package:injectable/injectable.dart';

@Injectable()
class ServiceFactory {
  ServiceFactory(this.value);

  @FactoryMethod()
  ServiceFactory.defaultValue() : value = 4;

  final int value;

  void call() {
    print('call, value: $value');
  }
}
