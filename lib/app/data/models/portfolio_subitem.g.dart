// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_subitem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PortfolioSubitemImpl _$$PortfolioSubitemImplFromJson(
        Map<String, dynamic> json) =>
    _$PortfolioSubitemImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      link: json['link'] as String?,
      status: $enumDecodeNullable(
              _$PortfolioItemStatusEnumEnumMap, json['status']) ??
          PortfolioItemStatusEnum.completed,
    );

Map<String, dynamic> _$$PortfolioSubitemImplToJson(
        _$PortfolioSubitemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'link': instance.link,
      'status': _$PortfolioItemStatusEnumEnumMap[instance.status]!,
    };

const _$PortfolioItemStatusEnumEnumMap = {
  PortfolioItemStatusEnum.completed: 'completed',
  PortfolioItemStatusEnum.inProgress: 'inProgress',
};
