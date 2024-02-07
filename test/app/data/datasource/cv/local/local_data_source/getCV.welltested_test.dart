import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_resume/app/data/datasource/cv/local/local_data_source.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/core/exception/exceptions.dart';
import 'package:my_resume/core/local/local_data_reader.dart';
import 'getCV.welltested_test.mocks.dart';

@GenerateMocks([LocalDataReader])
void main() {
  late LocalDataSourceImpl localDataSourceImpl;
  late MockLocalDataReader mockLocalDataReader;

  setUp(() {
    mockLocalDataReader = MockLocalDataReader();
    localDataSourceImpl = LocalDataSourceImpl(reader: mockLocalDataReader);
  });

  group('getCV', () {
    test('should return CVModel when the call to LocalDataReader is successful', () async {
      final tCVModel = CVModel.fromJson({
        // Add the necessary fields here
      });

      final tCVJson = jsonEncode({
        // Add the necessary fields here
      });

      when(mockLocalDataReader.readData(any))
          .thenAnswer((_) async => Right(tCVJson));

      final result = await localDataSourceImpl.getCV();

      expect(result, equals(tCVModel));
      verify(mockLocalDataReader.readData(any));
      verifyNoMoreInteractions(mockLocalDataReader);
    });

    test('should throw CacheException when the call to LocalDataReader is unsuccessful', () async {
      when(mockLocalDataReader.readData(any))
          .thenAnswer((_) async => Left(CacheException()));

      final call = localDataSourceImpl.getCV;

      expect(() => call(), throwsA(isA<CacheException>()));
      verify(mockLocalDataReader.readData(any));
      verifyNoMoreInteractions(mockLocalDataReader);
    });
  });
}