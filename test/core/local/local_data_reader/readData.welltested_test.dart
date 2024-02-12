import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_resume/core/exception/failures.dart';
import 'package:my_resume/core/local/local_data_reader.dart';

import 'readData.welltested_test.mocks.dart';

import 'readDataSecondWay.welltested_test.dart';

@GenerateMocks([AssetBundle])
void main() {
  group("LocalDataReader", () {
    late LocalDataReader localDataReader;
    late MockAssetBundle mockAssetBundle;

    setUp(() {
      mockAssetBundle = MockAssetBundle();
      localDataReader = LocalDataReader();
    });

    test("returns Right when data is read successfully", () async {
      const path = "test_path";
      const data = "test_data";

      when(mockAssetBundle.loadString(path))
          .thenAnswer((_) => Future.value(data));

      final result = await localDataReader.readData(path);

      expect(result, equals(Right(data)));
    });

    test("returns Left when an exception is thrown", () async {
      const path = "test_path";
      final expectedError = Left(LocalDataReadFailure());

      when(mockAssetBundle.loadString(path)).thenThrow(Exception());

      final result = await localDataReader.readData(path);

      expect(result, equals(expectedError));
    });
  });
}