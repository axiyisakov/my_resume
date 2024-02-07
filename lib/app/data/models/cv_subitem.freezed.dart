// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_subitem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CVSubitem _$CVSubitemFromJson(Map<String, dynamic> json) {
  return _CVSubitem.fromJson(json);
}

/// @nodoc
mixin _$CVSubitem {
  String get name => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  List<String> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CVSubitemCopyWith<CVSubitem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CVSubitemCopyWith<$Res> {
  factory $CVSubitemCopyWith(CVSubitem value, $Res Function(CVSubitem) then) =
      _$CVSubitemCopyWithImpl<$Res, CVSubitem>;
  @useResult
  $Res call({String name, String? year, List<String> values});
}

/// @nodoc
class _$CVSubitemCopyWithImpl<$Res, $Val extends CVSubitem>
    implements $CVSubitemCopyWith<$Res> {
  _$CVSubitemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? year = freezed,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CVSubitemImplCopyWith<$Res>
    implements $CVSubitemCopyWith<$Res> {
  factory _$$CVSubitemImplCopyWith(
          _$CVSubitemImpl value, $Res Function(_$CVSubitemImpl) then) =
      __$$CVSubitemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? year, List<String> values});
}

/// @nodoc
class __$$CVSubitemImplCopyWithImpl<$Res>
    extends _$CVSubitemCopyWithImpl<$Res, _$CVSubitemImpl>
    implements _$$CVSubitemImplCopyWith<$Res> {
  __$$CVSubitemImplCopyWithImpl(
      _$CVSubitemImpl _value, $Res Function(_$CVSubitemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? year = freezed,
    Object? values = null,
  }) {
    return _then(_$CVSubitemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CVSubitemImpl implements _CVSubitem {
  const _$CVSubitemImpl(
      {required this.name, this.year, required final List<String> values})
      : _values = values;

  factory _$CVSubitemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CVSubitemImplFromJson(json);

  @override
  final String name;
  @override
  final String? year;
  final List<String> _values;
  @override
  List<String> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'CVSubitem(name: $name, year: $year, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CVSubitemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, year, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CVSubitemImplCopyWith<_$CVSubitemImpl> get copyWith =>
      __$$CVSubitemImplCopyWithImpl<_$CVSubitemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CVSubitemImplToJson(
      this,
    );
  }
}

abstract class _CVSubitem implements CVSubitem {
  const factory _CVSubitem(
      {required final String name,
      final String? year,
      required final List<String> values}) = _$CVSubitemImpl;

  factory _CVSubitem.fromJson(Map<String, dynamic> json) =
      _$CVSubitemImpl.fromJson;

  @override
  String get name;
  @override
  String? get year;
  @override
  List<String> get values;
  @override
  @JsonKey(ignore: true)
  _$$CVSubitemImplCopyWith<_$CVSubitemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
