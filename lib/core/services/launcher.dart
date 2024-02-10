import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_resume/core/exception/failures.dart';
import 'package:url_launcher/url_launcher.dart' as urlLauncher;

@lazySingleton
class AppUrlLauncher {
  Future<Either<Failures, void>> launchUrl(String url) async {
    if (await urlLauncher.canLaunchUrl(Uri.parse(url))) {
      await urlLauncher.launchUrl(Uri.parse(url));
      return const Right(null);
    } else {
      return Right(NetworkFailure());
    }
  }
}
