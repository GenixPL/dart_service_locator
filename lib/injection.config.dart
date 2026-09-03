// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dart_service_locator/cached_service.dart' as _i758;
import 'package:dart_service_locator/math_service.dart' as _i49;
import 'package:dart_service_locator/singleton_service.dart' as _i476;
import 'package:dart_service_locator/text_service.dart' as _i803;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factoryCached<_i758.CachedService>(() => _i758.CachedService());
    gh.lazySingleton<_i49.MathService>(() => _i49.MathService());
    gh.lazySingleton<_i476.SingletonService>(
      () => _i476.SingletonService(),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i803.TextService>(() => _i803.TextService());
    return this;
  }
}
