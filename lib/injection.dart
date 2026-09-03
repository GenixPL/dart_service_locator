import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

// WARNING
// Using `preResolve` at least once requires this function to be Future and awaited.
@InjectableInit()
Future<void> configureDependencies(GetIt getIt) => getIt.init();
