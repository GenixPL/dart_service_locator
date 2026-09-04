// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dart_service_locator/auto_register_service.dart' as _i61;
import 'package:dart_service_locator/cached_service.dart' as _i758;
import 'package:dart_service_locator/env_service.dart' as _i502;
import 'package:dart_service_locator/math_service.dart' as _i49;
import 'package:dart_service_locator/param_service.dart' as _i759;
import 'package:dart_service_locator/pre_resolve_future_service.dart' as _i891;
import 'package:dart_service_locator/scope_service.dart' as _i585;
import 'package:dart_service_locator/service_a_b.dart' as _i340;
import 'package:dart_service_locator/service_factory.dart' as _i196;
import 'package:dart_service_locator/service_future.dart' as _i313;
import 'package:dart_service_locator/service_i_impl.dart' as _i632;
import 'package:dart_service_locator/singleton_service.dart' as _i476;
import 'package:dart_service_locator/text_service.dart' as _i803;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

const String _dupa_env = 'dupa_env';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i61.AutoRegisterService>(() => _i61.AutoRegisterService());
    gh.factoryCached<_i758.CachedService>(() => _i758.CachedService());
    await gh.factoryAsync<_i891.PreResolveFutureService>(
      () => _i891.PreResolveFutureService.getInstance(),
      preResolve: true,
    );
    gh.factory<_i340.ServiceA>(() => _i340.ServiceA());
    gh.factory<_i196.ServiceFactory>(() => _i196.ServiceFactory.defaultValue());
    gh.factoryAsync<_i313.ServiceFuture>(
      () => _i313.ServiceFuture.getInstance(),
    );
    gh.lazySingleton<_i49.MathService>(() => _i49.MathService());
    gh.lazySingleton<_i476.SingletonService>(
      () => _i476.SingletonService(),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i803.TextService>(() => _i803.TextService());
    gh.factory<_i502.EnvService>(
      () => _i502.EnvService(),
      registerFor: {_dupa_env},
    );
    gh.factory<_i632.ServiceI>(
      () => _i632.ServiceImpl1(),
      instanceName: 'first',
    );
    gh.factory<_i632.ServiceI>(
      () => _i632.ServiceImpl3(),
      instanceName: 'ServiceImpl3',
    );
    gh.factory<_i340.ServiceB>(() => _i340.ServiceB(gh<_i340.ServiceA>()));
    gh.factoryParam<_i759.ParamService, String, dynamic>(
      (value, _) => _i759.ParamService(value),
    );
    gh.factory<_i632.ServiceI>(
      () => _i632.ServiceImpl2(gh<_i632.ServiceI>(instanceName: 'first')),
    );
    return this;
  }

  // initializes the registration of scope-scope dependencies inside of GetIt
  _i174.GetIt initScopeScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'scope',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.factory<_i585.ScopeService>(() => _i585.ScopeService());
      },
    );
  }
}
