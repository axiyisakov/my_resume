// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/data/datasource/cv/local/local_data_source.dart' as _i6;
import '../../app/data/repositories/cv_repository_impl.dart' as _i12;
import '../../app/domain/repositories/cv_repository.dart' as _i11;
import '../../app/domain/usecases/cv/portfolio/get_portfolio.dart' as _i13;
import '../../app/domain/usecases/cv/resume/get_resume.dart' as _i14;
import '../../app/presentation/provider/cv/resume_provider.dart' as _i9;
import '../../app/presentation/provider/cv_provider.dart' as _i10;
import '../../app/presentation/provider/portfolio/portfolio_provider.dart'
    as _i7;
import '../../app/presentation/provider/preferences/preferences_provider.dart'
    as _i8;
import '../downloader_cv/downloader_cv.dart' as _i4;
import '../local/local_data_reader.dart' as _i5;
import '../theme/app_theme_data.dart' as _i3;

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
    gh.lazySingleton<_i3.AppDarkThemeData>(() => _i3.AppDarkThemeData());
    gh.lazySingleton<_i3.AppLightThemeData>(() => _i3.AppLightThemeData());
    gh.lazySingleton<_i4.DownloaderCV>(() => _i4.DownloaderCV());
    gh.lazySingleton<_i5.LocalDataReader>(() => _i5.LocalDataReader());
    gh.lazySingleton<_i6.LocalDataSource>(
        () => _i6.LocalDataSourceImpl(reader: gh<_i5.LocalDataReader>()));
    gh.factory<_i7.PortfolioProvider>(() => _i7.PortfolioProvider());
    gh.factory<_i8.PreferencesProvider>(() => _i8.PreferencesProvider());
    gh.factory<_i9.ResumeProvider>(() => _i9.ResumeProvider());
    gh.factory<_i10.CVProvider>(
        () => _i10.CVProvider(downloader: gh<_i4.DownloaderCV>()));
    gh.lazySingleton<_i11.CVRepository>(() =>
        _i12.CVRespositoryImpl(localDataSource: gh<_i6.LocalDataSource>()));
    gh.lazySingleton<_i13.GetPortfolio>(
        () => _i13.GetPortfolio(repository: gh<_i11.CVRepository>()));
    gh.lazySingleton<_i14.GetResume>(
        () => _i14.GetResume(repository: gh<_i11.CVRepository>()));
    return this;
  }
}
