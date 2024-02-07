// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_subitem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CVSubitemImpl _$$CVSubitemImplFromJson(Map<String, dynamic> json) =>
    _$CVSubitemImpl(
      name: json['name'] as String,
      year: json['year'] as String?,
      values:
          (json['values'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CVSubitemImplToJson(_$CVSubitemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'year': instance.year,
      'values': instance.values,
    };
