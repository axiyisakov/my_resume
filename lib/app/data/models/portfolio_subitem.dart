// This file is "portfolio_subitem.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_resume/app/data/models/portfolio_item_status_enum.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'portfolio_subitem.freezed.dart';
// optional: Since our PortfolioSubitem class is serializable, we must add this line.
// But if PortfolioSubitem was not serializable, we could skip it.
part 'portfolio_subitem.g.dart';

@freezed
class PortfolioSubitem with _$PortfolioSubitem {
  const factory PortfolioSubitem({
    required String name,
    required String description,
    required String image,
    String? link,
    @Default(PortfolioItemStatusEnum.completed) PortfolioItemStatusEnum status,
  }) = _PortfolioSubitem;

  factory PortfolioSubitem.fromJson(Map<String, Object?> json) =>
      _$PortfolioSubitemFromJson(json);
}
