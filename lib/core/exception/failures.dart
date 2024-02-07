import 'package:equatable/equatable.dart';

sealed class Failures extends Equatable {
  const Failures([List properties = const <dynamic>[]]);
}

class CacheFailure extends Failures {
  @override
  List<Object?> get props => [];
}

class LocalDataReadFailure extends Failures {
  @override
  List<Object?> get props => [];
}
