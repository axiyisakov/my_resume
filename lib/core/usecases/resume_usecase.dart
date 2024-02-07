import 'package:dartz/dartz.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/core/exception/failures.dart';

abstract interface class ResumeUseCase<Type, Params> {
  Future<Either<Failures, CVModel>> call(Params params);
}
