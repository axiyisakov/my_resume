import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/core/exception/exceptions.dart';
import 'package:my_resume/core/local/local_data_reader.dart';
import 'package:my_resume/gen/assets.gen.dart';

abstract interface class LocalDataSource {
  Future<CVModel> getCV();
  Future<Portfolio> getPortfolio();
}

@LazySingleton(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  final LocalDataReader _reader;

  LocalDataSourceImpl({
    required LocalDataReader reader,
  }) : _reader = reader;

  @override
  Future<CVModel> getCV() async {
    final responseOrError = await _reader.readData(Assets.cv);
    final data = responseOrError.fold((error) => error, (data) => data);

    if (responseOrError.isRight() && data is String) {
      return CVModel.fromJson(jsonDecode(data));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<Portfolio> getPortfolio() async {
    final responseOrError = await _reader.readData(Assets.portfolio);
    final data = responseOrError.fold((error) => error, (data) => data);

    if (responseOrError.isRight() && data is String) {
      return Portfolio.fromJson(jsonDecode(data));
    } else {
      throw CacheException();
    }
  }
}
