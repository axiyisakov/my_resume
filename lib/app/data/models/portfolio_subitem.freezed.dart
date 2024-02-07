// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_subitem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PortfolioSubitem _$PortfolioSubitemFromJson(Map<String, dynamic> json) {
  return _PortfolioSubitem.fromJson(json);
}

/// @nodoc
mixin _$PortfolioSubitem {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortfolioSubitemCopyWith<PortfolioSubitem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioSubitemCopyWith<$Res> {
  factory $PortfolioSubitemCopyWith(
          PortfolioSubitem value, $Res Function(PortfolioSubitem) then) =
      _$PortfolioSubitemCopyWithImpl<$Res, PortfolioSubitem>;
  @useResult
  $Res call({String name, String description, String image});
}

/// @nodoc
class _$PortfolioSubitemCopyWithImpl<$Res, $Val extends PortfolioSubitem>
    implements $PortfolioSubitemCopyWith<$Res> {
  _$PortfolioSubitemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PortfolioSubitemImplCopyWith<$Res>
    implements $PortfolioSubitemCopyWith<$Res> {
  factory _$$PortfolioSubitemImplCopyWith(_$PortfolioSubitemImpl value,
          $Res Function(_$PortfolioSubitemImpl) then) =
      __$$PortfolioSubitemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, String image});
}

/// @nodoc
class __$$PortfolioSubitemImplCopyWithImpl<$Res>
    extends _$PortfolioSubitemCopyWithImpl<$Res, _$PortfolioSubitemImpl>
    implements _$$PortfolioSubitemImplCopyWith<$Res> {
  __$$PortfolioSubitemImplCopyWithImpl(_$PortfolioSubitemImpl _value,
      $Res Function(_$PortfolioSubitemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_$PortfolioSubitemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioSubitemImpl implements _PortfolioSubitem {
  const _$PortfolioSubitemImpl(
      {required this.name, required this.description, required this.image});

  factory _$PortfolioSubitemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioSubitemImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String image;

  @override
  String toString() {
    return 'PortfolioSubitem(name: $name, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioSubitemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioSubitemImplCopyWith<_$PortfolioSubitemImpl> get copyWith =>
      __$$PortfolioSubitemImplCopyWithImpl<_$PortfolioSubitemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioSubitemImplToJson(
      this,
    );
  }
}

abstract class _PortfolioSubitem implements PortfolioSubitem {
  const factory _PortfolioSubitem(
      {required final String name,
      required final String description,
      required final String image}) = _$PortfolioSubitemImpl;

  factory _PortfolioSubitem.fromJson(Map<String, dynamic> json) =
      _$PortfolioSubitemImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$PortfolioSubitemImplCopyWith<_$PortfolioSubitemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
