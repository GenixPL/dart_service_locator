import 'package:dart_service_locator/math_service.dart';
import 'package:get_it/get_it.dart';

late GetIt sl;

void main(List<String> arguments) {
  sl = GetIt.asNewInstance();
  sl.registerLazySingleton(() => MathService());

  print(sl.get<MathService>().add(1, 3));
}
