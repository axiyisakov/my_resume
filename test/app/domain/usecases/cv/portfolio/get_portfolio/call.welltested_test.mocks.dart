// Mocks generated by Mockito 5.4.4 from annotations
// in my_resume/test/app/domain/usecases/cv/portfolio/get_portfolio/call.welltested_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:my_resume/app/data/models/cv_model.dart' as _i6;
import 'package:my_resume/app/data/models/portfolio.dart' as _i7;
import 'package:my_resume/app/domain/repositories/cv_repository.dart' as _i3;
import 'package:my_resume/core/exception/failures.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CVRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockCVRepository extends _i1.Mock implements _i3.CVRepository {
  MockCVRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failures, _i6.CVModel>> getCV() =>
      (super.noSuchMethod(
        Invocation.method(
          #getCV,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failures, _i6.CVModel>>.value(
            _FakeEither_0<_i5.Failures, _i6.CVModel>(
          this,
          Invocation.method(
            #getCV,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failures, _i6.CVModel>>);

  @override
  _i4.Future<_i2.Either<_i5.Failures, _i7.Portfolio>> getPortfolio() =>
      (super.noSuchMethod(
        Invocation.method(
          #getPortfolio,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failures, _i7.Portfolio>>.value(
            _FakeEither_0<_i5.Failures, _i7.Portfolio>(
          this,
          Invocation.method(
            #getPortfolio,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failures, _i7.Portfolio>>);
}