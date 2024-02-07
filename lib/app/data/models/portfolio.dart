// This file is "cv.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

import 'portfolio_subitem.dart';

// required: associates our `cv.dart` with the code generated by Freezed
part 'portfolio.freezed.dart';
// optional: Since our PORTFOLIOModel class is serializable, we must add this line.
// But if PORTFOLIOModel was not serializable, we could skip it.
part 'portfolio.g.dart';

@freezed
class Portfolio with _$Portfolio {
  const factory Portfolio({
    required String name,
    required List<PortfolioSubitem> projects,
  }) = _Portfolio;

  factory Portfolio.fromJson(Map<String, Object?> json) =>
      _$PortfolioFromJson(json);
}
