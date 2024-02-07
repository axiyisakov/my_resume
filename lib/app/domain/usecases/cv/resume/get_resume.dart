import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/app/domain/repositories/cv_repository.dart';
import 'package:my_resume/core/exception/failures.dart';
import 'package:my_resume/core/usecases/resume_usecase.dart';
import 'package:welltested_annotation/welltested_annotation.dart';

@Welltested()
@lazySingleton
class GetResume implements ResumeUseCase<CVModel, GetCVParams> {
  final CVRepository repository;

  GetResume({
    required this.repository,
  });

  @override
  Future<Either<Failures, CVModel>> call(GetCVParams params) async {
    return await repository.getCV();
  }
}

final class GetCVParams extends Equatable {
  const GetCVParams();

  @override
  List<Object?> get props => [];
}
