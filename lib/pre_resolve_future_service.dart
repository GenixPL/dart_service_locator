import 'package:injectable/injectable.dart';

@Injectable()
class PreResolveFutureService {
  PreResolveFutureService._() {
    print('creating pre resolved future service');
  }

  @FactoryMethod(preResolve: true)
  static Future<PreResolveFutureService> getInstance() async {
    await Future.delayed(Duration(milliseconds: 500));
    return PreResolveFutureService._();
  }

  void call() {
    print('call pre resolved future service');
  }
}
