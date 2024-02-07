import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_resume/app/data/datasource/cv/local/local_data_source.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/core/exception/exceptions.dart';
import 'package:my_resume/core/local/local_data_reader.dart';
import 'getPortfolio.welltested_test.mocks.dart';

@GenerateMocks([LocalDataReader])
void main() {
  late LocalDataSourceImpl localDataSourceImpl;
  late MockLocalDataReader mockLocalDataReader;

  setUp(() {
    mockLocalDataReader = MockLocalDataReader();
    localDataSourceImpl = LocalDataSourceImpl(reader: mockLocalDataReader);
  });

  group('getPortfolio', () {
    final tPortfolioJson = '{"key": "value"}'; // replace with actual json
    final tPortfolio = Portfolio.fromJson(tPortfolioJson); // replace with actual Portfolio object

    test('should return Portfolio when the call to LocalDataReader is successful', () async {
      // arrange
      when(mockLocalDataReader.readData(any))
          .thenAnswer((_) async => Right(tPortfolioJson));
      // act
      final result = await localDataSourceImpl.getPortfolio();
      // assert
      expect(result, equals(tPortfolio));
      verify(mockLocalDataReader.readData(any));
      verifyNoMoreInteractions(mockLocalDataReader);
    });

    test('should throw CacheException when the call to LocalDataReader is unsuccessful', () async {
      // arrange
      when(mockLocalDataReader.readData(any))
          .thenAnswer((_) async => Left(CacheException()));
      // act
      final call = localDataSourceImpl.getPortfolio;
      // assert
      expect(() => call(), throwsA(isA<CacheException>()));
      verify(mockLocalDataReader.readData(any));
      verifyNoMoreInteractions(mockLocalDataReader);
    });
  });
}