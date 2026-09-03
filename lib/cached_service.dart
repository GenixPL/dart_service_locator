import 'package:injectable/injectable.dart';

@Injectable(cache: true)
class CachedService {
  CachedService() {
    print('creating new cached service');
  }

  void printMsg() {
    print('cached service print ($hashCode)');
  }
}
