import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/app/domain/repositories/cv_repository.dart';
import 'package:my_resume/app/domain/usecases/cv/portfolio/get_portfolio.dart';
import 'package:my_resume/core/exception/failures.dart';

import '../../resume/get_resume/call.welltested_test.mocks.dart';
import 'call.welltested_test.mocks.dart';
import 'get_portfolio_test.mocks.dart';

@GenerateMocks([CVRepository])
void main() {
  late GetPortfolio getPortfolio;
  late MockCVRepository mockCVRepository;

  setUp(() {
    mockCVRepository = MockCVRepository();
    getPortfolio = GetPortfolio(repository: mockCVRepository);
  });

  final tPortfolio = Portfolio(); // Initialize with appropriate values
  final tNoParams = NoParams();

  test('should get portfolio from the repository', () async {
    // arrange
    when(mockCVRepository.getPortfolio())
        .thenAnswer((_) async => Right(tPortfolio));
    // act
    final result = await getPortfolio(tNoParams);
    // assert
    expect(result, equals(Right(tPortfolio)));
    verify(mockCVRepository.getPortfolio());
    verifyNoMoreInteractions(mockCVRepository);
  });

  test('should return failure when getting portfolio fails', () async {
    // arrange
    final tFailure = Failures(); // Initialize with appropriate values
    when(mockCVRepository.getPortfolio())
        .thenAnswer((_) async => Left(tFailure));
    // act
    final result = await getPortfolio(tNoParams);
    // assert
    expect(result, equals(Left(tFailure)));
    verify(mockCVRepository.getPortfolio());
    verifyNoMoreInteractions(mockCVRepository);
  });
}