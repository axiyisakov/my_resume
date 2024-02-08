import 'package:freezed_annotation/freezed_annotation.dart';

enum PortfolioItemStatusEnum {
  @JsonValue('completed')
  completed,
  @JsonValue('inProgress')
  inProgress,
}
