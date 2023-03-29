// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:useless_trivia/application/database/database_bloc.dart' as _i5;
import 'package:useless_trivia/application/form/textfield_bloc.dart' as _i9;
import 'package:useless_trivia/application/request/request_bloc.dart' as _i8;
import 'package:useless_trivia/domain/wikipedia/i_wikipedia_repository.dart'
    as _i6;
import 'package:useless_trivia/infrastructure/database/database.dart' as _i3;
import 'package:useless_trivia/infrastructure/wikipedia/wikipedia_repository.dart'
    as _i7;
import 'package:useless_trivia/presentation/routes/router.dart' as _i4;

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
  gh.singleton<_i3.AppDatabase>(_i3.AppDatabase());
  gh.singleton<_i4.AppRouter>(_i4.AppRouter());
  gh.singleton<_i5.DatabaseBloc>(_i5.DatabaseBloc(gh<_i3.AppDatabase>()));
  gh.lazySingleton<_i6.IWikipediaRepository>(() => _i7.WikipediaRepository());
  gh.singleton<_i8.RequestBloc>(_i8.RequestBloc(
    gh<_i6.IWikipediaRepository>(),
    gh<_i3.AppDatabase>(),
    gh<_i5.DatabaseBloc>(),
  ));
  gh.singleton<_i9.TextFieldBloc>(_i9.TextFieldBloc());
  return getIt;
}
