// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'cv_subitem.freezed.dart';
// optional: Since our CVSubitem class is serializable, we must add this line.
// But if CVSubitem was not serializable, we could skip it.
part 'cv_subitem.g.dart';

@freezed
class CVSubitem with _$CVSubitem {
  const factory CVSubitem({
    required String name,
    String? year,
    required List<String> values,
  }) = _CVSubitem;

  factory CVSubitem.fromJson(Map<String, Object?> json) =>
      _$CVSubitemFromJson(json);
}
