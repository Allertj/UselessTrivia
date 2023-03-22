// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:useless_trivia/application/database_watcher.dart' as _i7;
import 'package:useless_trivia/application/request_watcher.dart' as _i8;
import 'package:useless_trivia/domain/i_wikipedia_client.dart' as _i4;
import 'package:useless_trivia/presentation/routes/router.dart' as _i3;
import 'package:useless_trivia/repository/chopper/wikipedia_repository.dart'
    as _i5;
import 'package:useless_trivia/repository/database/database.dart' as _i6;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.lazySingleton<_i4.IWikipediaRepository>(() => _i5.WikipediaRepository());
  gh.singleton<_i6.MyDatabase>(_i6.MyDatabase());
  gh.singleton<_i7.DatabaseWatcher>(_i7.DatabaseWatcher(gh<_i6.MyDatabase>()));
  gh.singleton<_i8.RequestWatcher>(_i8.RequestWatcher(
    gh<_i4.IWikipediaRepository>(),
    gh<_i6.MyDatabase>(),
    gh<_i7.DatabaseWatcher>(),
  ));
  return getIt;
}
