import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:my_resume/core/di/locator.config.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: 'initLocator',
  preferRelativeImports: true,
  asExtension: true,
  generateForDir: ['lib', 'core', 'di'],
  externalPackageModules: [],
)
void configureDependencies() => sl.initLocator();
