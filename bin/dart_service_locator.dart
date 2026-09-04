import 'package:dart_service_locator/cached_service.dart';
import 'package:dart_service_locator/env_service.dart';
import 'package:dart_service_locator/force_gc.dart';
import 'package:dart_service_locator/injection.dart';
import 'package:dart_service_locator/math_service.dart';
import 'package:dart_service_locator/param_service.dart';
import 'package:dart_service_locator/pre_resolve_future_service.dart';
import 'package:dart_service_locator/service_a_b.dart';
import 'package:dart_service_locator/service_factory.dart';
import 'package:dart_service_locator/service_future.dart';
import 'package:dart_service_locator/service_i_impl.dart';
import 'package:dart_service_locator/singleton_service.dart';
import 'package:get_it/get_it.dart';

late GetIt sl = GetIt.instance;

void main(List<String> arguments) async {
  await configureDependencies(sl);
  print('--------------------');

  print(sl.get<MathService>().add(1, 3));
  print('--------------------');

  sl.get<CachedService>().printMsg();
  await forceGC();
  sl.get<CachedService>().printMsg();
  print('--------------------');

  sl.get<SingletonService>().call();
  sl.get<SingletonService>().call();
  await sl.reset();
  await configureDependencies(sl);
  sl.get<SingletonService>().call();
  print('--------------------');

  sl.get<ServiceB>().call();
  print('--------------------');

  sl.get<ServiceFactory>().call();
  print('--------------------');

  (await sl.getAsync<ServiceFuture>()).call();
  print('--------------------');

  // WARNING
  // Use `get` not `getAsync`, it's pre-resolved.
  (await sl.get<PreResolveFutureService>()).call();
  print('--------------------');

  sl.get<ParamService>(param1: 'DUPA').call();
  print('--------------------');

  sl.get<ServiceI>().call();
  sl.get<ServiceI>(instanceName: 'first').call();
  sl.get<ServiceI>(instanceName: 'ServiceImpl3').call();
  print('--------------------');

  try {
    sl.get<EnvService>().call();
  } catch (_) {
    print('env service not registered');
    await sl.reset();
    await configureDependencies(sl, env: 'dupa_env');
  }
  sl.
  sl.get<EnvService>().call();
  await sl.reset();
  await configureDependencies(sl);
  print('--------------------');
}
