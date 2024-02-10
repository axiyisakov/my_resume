// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/data/datasource/cv/local/local_data_source.dart' as _i7;
import '../../app/data/repositories/cv_repository_impl.dart' as _i13;
import '../../app/domain/repositories/cv_repository.dart' as _i12;
import '../../app/domain/usecases/cv/portfolio/get_portfolio.dart' as _i14;
import '../../app/domain/usecases/cv/resume/get_resume.dart' as _i15;
import '../../app/presentation/provider/cv/resume_provider.dart' as _i10;
import '../../app/presentation/provider/cv_provider.dart' as _i11;
import '../../app/presentation/provider/portfolio/portfolio_provider.dart'
    as _i8;
import '../../app/presentation/provider/preferences/preferences_provider.dart'
    as _i9;
import '../local/local_data_reader.dart' as _i6;
import '../services/downloader_cv.dart' as _i5;
import '../services/launcher.dart' as _i4;
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
    gh.lazySingleton<_i4.AppUrlLauncher>(() => _i4.AppUrlLauncher());
    gh.lazySingleton<_i5.DownloaderCV>(() => _i5.DownloaderCV());
    gh.lazySingleton<_i6.LocalDataReader>(() => _i6.LocalDataReader());
    gh.lazySingleton<_i7.LocalDataSource>(
        () => _i7.LocalDataSourceImpl(reader: gh<_i6.LocalDataReader>()));
    gh.factory<_i8.PortfolioProvider>(() => _i8.PortfolioProvider());
    gh.factory<_i9.PreferencesProvider>(() => _i9.PreferencesProvider());
    gh.factory<_i10.ResumeProvider>(() => _i10.ResumeProvider());
    gh.factory<_i11.CVProvider>(
        () => _i11.CVProvider(downloader: gh<_i5.DownloaderCV>()));
    gh.lazySingleton<_i12.CVRepository>(() =>
        _i13.CVRespositoryImpl(localDataSource: gh<_i7.LocalDataSource>()));
    gh.lazySingleton<_i14.GetPortfolio>(
        () => _i14.GetPortfolio(repository: gh<_i12.CVRepository>()));
    gh.lazySingleton<_i15.GetResume>(
        () => _i15.GetResume(repository: gh<_i12.CVRepository>()));
    return this;
  }
}
