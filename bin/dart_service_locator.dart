import 'package:dart_service_locator/cached_service.dart';
import 'package:dart_service_locator/force_gc.dart';
import 'package:dart_service_locator/injection.dart';
import 'package:dart_service_locator/math_service.dart';
import 'package:dart_service_locator/service_a_b.dart';
import 'package:dart_service_locator/singleton_service.dart';
import 'package:get_it/get_it.dart';

late GetIt sl = GetIt.instance;

void main(List<String> arguments) async {
  configureDependencies(sl);
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
  configureDependencies(sl);
  sl.get<SingletonService>().call();
  print('--------------------');

  sl.get<ServiceB>().call();
  print('--------------------');
}
