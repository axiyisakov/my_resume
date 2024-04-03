// This file is "cv.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

import 'cv_subitem.dart';

part 'cv_model.freezed.dart';
part 'cv_model.g.dart';

@Freezed()
class CVModel with _$CVModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CVModel({
    required String name,
    required String position,
    required String imagePath,
    required List<CVSubitem> contact,
    required List<CVSubitem> education,
    required List<CVSubitem> certificates,
    required List<CVSubitem> skills,
    required List<CVSubitem> workingExperience,
    required List<CVSubitem> professionalSummary,
  }) = _CVModel;

  factory CVModel.fromJson(Map<String, Object?> json) =>
      _$CVModelFromJson(json);
}
