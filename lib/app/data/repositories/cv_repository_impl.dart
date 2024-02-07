import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_resume/app/data/datasource/cv/local/local_data_source.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/app/domain/repositories/cv_repository.dart';
import 'package:my_resume/core/exception/exceptions.dart';
import 'package:my_resume/core/exception/failures.dart';
import 'package:welltested_annotation/welltested_annotation.dart';

@Welltested()
@LazySingleton(as: CVRepository)
class CVRespositoryImpl implements CVRepository {
  final LocalDataSource _localDataSource;
  CVRespositoryImpl({
    required LocalDataSource localDataSource,
  }) : _localDataSource = localDataSource;

  @override
  Future<Either<Failures, CVModel>> getCV() async {
    try {
      final localChatListPage = await _localDataSource.getCV();
      return Right(localChatListPage);
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failures, Portfolio>> getPortfolio() async {
    try {
      final localChatListPage = await _localDataSource.getPortfolio();
      return Right(localChatListPage);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}
