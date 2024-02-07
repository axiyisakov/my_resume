import 'readDataSecondWay.welltested_test.mocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:my_resume/core/exception/failures.dart';
import 'package:my_resume/core/local/local_data_reader.dart';

class MockBuildContext extends Mock implements BuildContext {}
class MockAssetBundle extends Mock implements AssetBundle {}

@GenerateMocks([LocalDataReader])
void main() {
  group('LocalDataReader', () {
    late LocalDataReader localDataReader;
    late MockBuildContext context;
    late MockAssetBundle assetBundle;

    setUp(() {
      context = MockBuildContext();
      assetBundle = MockAssetBundle();
      localDataReader = LocalDataReader();
    });

    test('returns Right when data is read successfully', () async {
      final path = 'test_path';
      final data = 'test_data';

      when(DefaultAssetBundle.of(context)).thenReturn(assetBundle);
      when(assetBundle.loadString(path)).thenAnswer((_) async => data);

      final result = await localDataReader.readDataSecondWay(context, path);

      expect(result, equals(Right(data)));
    });

    test('returns Left when an exception is thrown', () async {
      final path = 'test_path';

      when(DefaultAssetBundle.of(context)).thenReturn(assetBundle);
      when(assetBundle.loadString(path)).thenThrow(Exception());

      final result = await localDataReader.readDataSecondWay(context, path);

      expect(result, equals(Left(LocalDataReadFailure())));
    });
  });
}