import 'package:injectable/injectable.dart';

@Injectable()
class ParamService {
  ParamService(@factoryParam this.value);

  final String value;

  void call() {
    print('call param: $value');
  }
}
