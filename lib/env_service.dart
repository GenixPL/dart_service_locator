import 'package:injectable/injectable.dart';

@Injectable(env: ['dupa_env'])
class EnvService {
  void call() {
    print('call env service');
  }
}
