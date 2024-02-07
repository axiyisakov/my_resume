import 'getPortfolio.welltested_test.mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:my_resume/app/data/datasource/cv/local/local_data_source.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/app/data/repositories/cv_repository_impl.dart';
import 'package:my_resume/core/exception/exceptions.dart';
import 'package:my_resume/core/exception/failures.dart';

@GenerateMocks([LocalDataSource, Portfolio])
void main() {
  late CVRespositoryImpl cvRepository;
  late MockLocalDataSource mockLocalDataSource;
  late MockPortfolio mockPortfolio;

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    mockPortfolio = MockPortfolio();
    cvRepository = CVRespositoryImpl(localDataSource: mockLocalDataSource);
  });

  group('getPortfolio', () {
    test('should return Portfolio when there is one in the cache', () async {
      when(mockLocalDataSource.getPortfolio())
          .thenAnswer((_) async => mockPortfolio);

      final result = await cvRepository.getPortfolio();

      expect(result, equals(Right(mockPortfolio)));
      verify(mockLocalDataSource.getPortfolio());
      verifyNoMoreInteractions(mockLocalDataSource);
    });

    test('should return CacheFailure when there is a CacheException', () async {
      when(mockLocalDataSource.getPortfolio()).thenThrow(CacheException());

      final result = await cvRepository.getPortfolio();

      expect(result, equals(Left(CacheFailure())));
      verify(mockLocalDataSource.getPortfolio());
      verifyNoMoreInteractions(mockLocalDataSource);
    });
  });
}