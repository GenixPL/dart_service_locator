import 'package:injectable/injectable.dart';

@Injectable(scope: 'scope')
class ScopeService {
  void call() {
    print('call scope service');
  }
}
