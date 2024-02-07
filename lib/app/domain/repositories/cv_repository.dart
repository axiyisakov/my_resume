import 'package:dartz/dartz.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/core/exception/failures.dart';

abstract interface class CVRepository {
  Future<Either<Failures, CVModel>> getCV();
  Future<Either<Failures, Portfolio>> getPortfolio();
}
