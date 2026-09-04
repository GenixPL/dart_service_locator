import 'package:injectable/injectable.dart';

@Injectable(env: const ['dupa_env'])
class EnvService {
  void call() {
    print('call env service');
  }
}
