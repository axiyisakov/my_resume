import 'package:dartz/dartz.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/core/exception/failures.dart';

abstract interface class PortfolioUseCase<Type, Params> {
  Future<Either<Failures, Portfolio>> call(Params params);
}
