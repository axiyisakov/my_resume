import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/app/domain/repositories/cv_repository.dart';
import 'package:my_resume/core/exception/failures.dart';
import 'package:my_resume/core/usecases/portfolio_usecase.dart';

@lazySingleton
class GetPortfolio implements PortfolioUseCase<Portfolio, NoParams> {
  final CVRepository repository;

  GetPortfolio({required this.repository});

  @override
  Future<Either<Failures, Portfolio>> call(NoParams params) async =>
      await repository.getPortfolio();
}

final class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}
