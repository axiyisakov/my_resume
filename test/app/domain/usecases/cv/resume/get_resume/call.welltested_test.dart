import 'call.welltested_test.mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/app/domain/repositories/cv_repository.dart';
import 'package:my_resume/app/domain/usecases/cv/resume/get_resume.dart';
import 'package:my_resume/core/exception/failures.dart';

import 'get_resume_test.mocks.dart';

@GenerateMocks([CVRepository])
void main() {
  late GetResume getResume;
  late MockCVRepository mockCVRepository;

  setUp(() {
    mockCVRepository = MockCVRepository();
    getResume = GetResume(repository: mockCVRepository);
  });

  final tCVModel = CVModel(); // Assuming CVModel has a parameterless constructor
  final tFailure = Failures(); // Assuming Failures has a parameterless constructor

  test('should get resume from the repository', () async {
    when(mockCVRepository.getCV())
        .thenAnswer((_) async => Right(tCVModel));

    final result = await getResume(GetCVParams());

    expect(result, equals(Right(tCVModel)));
    verify(mockCVRepository.getCV());
    verifyNoMoreInteractions(mockCVRepository);
  });

  test('should return failure when getting resume fails', () async {
    when(mockCVRepository.getCV())
        .thenAnswer((_) async => Left(tFailure));

    final result = await getResume(GetCVParams());

    expect(result, equals(Left(tFailure)));
    verify(mockCVRepository.getCV());
    verifyNoMoreInteractions(mockCVRepository);
  });
}