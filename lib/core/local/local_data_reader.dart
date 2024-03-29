import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:my_resume/core/exception/failures.dart';
import 'package:welltested_annotation/welltested_annotation.dart';

@Welltested()
@lazySingleton
class LocalDataReader {
  Future<Either<Failures, String>> readData(String path) async {
    try {
      final data = await rootBundle.loadString(path);
      return Right(data);
    } catch (e) {
      return Left(LocalDataReadFailure());
    }
  }

  Future<Either<Failures, String>> readDataSecondWay(
      BuildContext context, String path) async {
    try {
      final data = await DefaultAssetBundle.of(context).loadString(path);
      return Right(data);
    } catch (e) {
      return Left(LocalDataReadFailure());
    }
  }
}
