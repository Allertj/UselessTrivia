// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:useless_trivia/application/database_watcher.dart' as _i7;
import 'package:useless_trivia/application/request_watcher.dart' as _i8;
import 'package:useless_trivia/domain/i_wikipedia_client.dart' as _i3;
import 'package:useless_trivia/presentation/request_bloc.dart' as _i6;
import 'package:useless_trivia/repository/database/database.dart' as _i5;
import 'package:useless_trivia/repository/retrofit/wikipedia_repository.dart'
    as _i4;

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
  gh.lazySingleton<_i3.IWikipediaRepository>(() => _i4.WikipediaRepository());
  gh.singleton<_i5.MyDatabase>(_i5.MyDatabase());
  gh.factory<_i6.TriviaBloc>(() => _i6.TriviaBloc(
        gh<_i3.IWikipediaRepository>(),
        gh<_i5.MyDatabase>(),
      ));
  gh.factory<_i7.DatabaseWatcher>(
      () => _i7.DatabaseWatcher(gh<_i5.MyDatabase>()));
  gh.factory<_i8.RequestBloc>(() => _i8.RequestBloc(
        gh<_i3.IWikipediaRepository>(),
        gh<_i5.MyDatabase>(),
        gh<_i7.DatabaseWatcher>(),
      ));
  return getIt;
}
