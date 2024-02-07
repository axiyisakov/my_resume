// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CVModelImpl _$$CVModelImplFromJson(Map<String, dynamic> json) =>
    _$CVModelImpl(
      name: json['name'] as String,
      imagePath: json['image_path'] as String,
      contact: (json['contact'] as List<dynamic>)
          .map((e) => CVSubitem.fromJson(e as Map<String, dynamic>))
          .toList(),
      education: (json['education'] as List<dynamic>)
          .map((e) => CVSubitem.fromJson(e as Map<String, dynamic>))
          .toList(),
      certificates: (json['certificates'] as List<dynamic>)
          .map((e) => CVSubitem.fromJson(e as Map<String, dynamic>))
          .toList(),
      workingExperience: (json['working_experience'] as List<dynamic>)
          .map((e) => CVSubitem.fromJson(e as Map<String, dynamic>))
          .toList(),
      professionalSummary: (json['professional_summary'] as List<dynamic>)
          .map((e) => CVSubitem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CVModelImplToJson(_$CVModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image_path': instance.imagePath,
      'contact': instance.contact,
      'education': instance.education,
      'certificates': instance.certificates,
      'working_experience': instance.workingExperience,
      'professional_summary': instance.professionalSummary,
    };
