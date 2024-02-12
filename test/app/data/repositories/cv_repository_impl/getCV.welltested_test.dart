import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:my_resume/app/data/datasource/cv/local/local_data_source.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/app/data/repositories/cv_repository_impl.dart';
import 'package:my_resume/core/exception/failures.dart';
import 'package:my_resume/core/exception/exceptions.dart';

import 'getCV.welltested_test.mocks.dart';

@GenerateMocks([LocalDataSource, CVModel])
void main() {
  late CVRespositoryImpl cvRepository;
  late MockLocalDataSource mockLocalDataSource;
  late MockCVModel mockCVModel;

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    mockCVModel = MockCVModel();
    cvRepository = CVRespositoryImpl(localDataSource: mockLocalDataSource);
  });

  group('getCV', () {
    test('should return CVModel when getCV is successful', () async {
      when(mockLocalDataSource.getCV()).thenAnswer((_) async => mockCVModel);

      final result = await cvRepository.getCV();

      expect(result, equals(Right(mockCVModel)));
      verify(mockLocalDataSource.getCV());
      verifyNoMoreInteractions(mockLocalDataSource);
    });

    test('should return CacheFailure when getCV fails', () async {
      when(mockLocalDataSource.getCV()).thenThrow(CacheException());

      final result = await cvRepository.getCV();

      expect(result, equals(Left(CacheFailure())));
      verify(mockLocalDataSource.getCV());
      verifyNoMoreInteractions(mockLocalDataSource);
    });
  });
}