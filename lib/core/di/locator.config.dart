// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/data/datasource/cv/local/local_data_source.dart' as _i4;
import '../../app/data/repositories/cv_repository_impl.dart' as _i6;
import '../../app/domain/repositories/cv_repository.dart' as _i5;
import '../../app/domain/usecases/cv/portfolio/get_portfolio.dart' as _i7;
import '../../app/domain/usecases/cv/resume/get_resume.dart' as _i8;
import '../local/local_data_reader.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initLocator({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.LocalDataReader>(() => _i3.LocalDataReader());
    gh.lazySingleton<_i4.LocalDataSource>(
        () => _i4.LocalDataSourceImpl(reader: gh<_i3.LocalDataReader>()));
    gh.lazySingleton<_i5.CVRepository>(() =>
        _i6.CVRespositoryImpl(localDataSource: gh<_i4.LocalDataSource>()));
    gh.lazySingleton<_i7.GetPortfolio>(
        () => _i7.GetPortfolio(repository: gh<_i5.CVRepository>()));
    gh.lazySingleton<_i8.GetResume>(
        () => _i8.GetResume(repository: gh<_i5.CVRepository>()));
    return this;
  }
}
