// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cake_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CakeStateTearOff {
  const _$CakeStateTearOff();

  CakeStateData call(List<CategoryModel> categories) {
    return CakeStateData(
      categories,
    );
  }

  CakeStateLoading loading() {
    return const CakeStateLoading();
  }

  CakeStateError error(dynamic error) {
    return CakeStateError(
      error,
    );
  }
}

/// @nodoc
const $CakeState = _$CakeStateTearOff();

/// @nodoc
mixin _$CakeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CakeStateData value) $default, {
    required TResult Function(CakeStateLoading value) loading,
    required TResult Function(CakeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CakeStateData value)? $default, {
    TResult Function(CakeStateLoading value)? loading,
    TResult Function(CakeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CakeStateData value)? $default, {
    TResult Function(CakeStateLoading value)? loading,
    TResult Function(CakeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CakeStateCopyWith<$Res> {
  factory $CakeStateCopyWith(CakeState value, $Res Function(CakeState) then) =
      _$CakeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CakeStateCopyWithImpl<$Res> implements $CakeStateCopyWith<$Res> {
  _$CakeStateCopyWithImpl(this._value, this._then);

  final CakeState _value;
  // ignore: unused_field
  final $Res Function(CakeState) _then;
}

/// @nodoc
abstract class $CakeStateDataCopyWith<$Res> {
  factory $CakeStateDataCopyWith(
          CakeStateData value, $Res Function(CakeStateData) then) =
      _$CakeStateDataCopyWithImpl<$Res>;
  $Res call({List<CategoryModel> categories});
}

/// @nodoc
class _$CakeStateDataCopyWithImpl<$Res> extends _$CakeStateCopyWithImpl<$Res>
    implements $CakeStateDataCopyWith<$Res> {
  _$CakeStateDataCopyWithImpl(
      CakeStateData _value, $Res Function(CakeStateData) _then)
      : super(_value, (v) => _then(v as CakeStateData));

  @override
  CakeStateData get _value => super._value as CakeStateData;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(CakeStateData(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$CakeStateData implements CakeStateData {
  const _$CakeStateData(this.categories);

  @override
  final List<CategoryModel> categories;

  @override
  String toString() {
    return 'CakeState(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CakeStateData &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  $CakeStateDataCopyWith<CakeStateData> get copyWith =>
      _$CakeStateDataCopyWithImpl<CakeStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CakeStateData value) $default, {
    required TResult Function(CakeStateLoading value) loading,
    required TResult Function(CakeStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CakeStateData value)? $default, {
    TResult Function(CakeStateLoading value)? loading,
    TResult Function(CakeStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CakeStateData value)? $default, {
    TResult Function(CakeStateLoading value)? loading,
    TResult Function(CakeStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CakeStateData implements CakeState {
  const factory CakeStateData(List<CategoryModel> categories) = _$CakeStateData;

  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CakeStateDataCopyWith<CakeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CakeStateLoadingCopyWith<$Res> {
  factory $CakeStateLoadingCopyWith(
          CakeStateLoading value, $Res Function(CakeStateLoading) then) =
      _$CakeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CakeStateLoadingCopyWithImpl<$Res> extends _$CakeStateCopyWithImpl<$Res>
    implements $CakeStateLoadingCopyWith<$Res> {
  _$CakeStateLoadingCopyWithImpl(
      CakeStateLoading _value, $Res Function(CakeStateLoading) _then)
      : super(_value, (v) => _then(v as CakeStateLoading));

  @override
  CakeStateLoading get _value => super._value as CakeStateLoading;
}

/// @nodoc

class _$CakeStateLoading implements CakeStateLoading {
  const _$CakeStateLoading();

  @override
  String toString() {
    return 'CakeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CakeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CakeStateData value) $default, {
    required TResult Function(CakeStateLoading value) loading,
    required TResult Function(CakeStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CakeStateData value)? $default, {
    TResult Function(CakeStateLoading value)? loading,
    TResult Function(CakeStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CakeStateData value)? $default, {
    TResult Function(CakeStateLoading value)? loading,
    TResult Function(CakeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CakeStateLoading implements CakeState {
  const factory CakeStateLoading() = _$CakeStateLoading;
}

/// @nodoc
abstract class $CakeStateErrorCopyWith<$Res> {
  factory $CakeStateErrorCopyWith(
          CakeStateError value, $Res Function(CakeStateError) then) =
      _$CakeStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$CakeStateErrorCopyWithImpl<$Res> extends _$CakeStateCopyWithImpl<$Res>
    implements $CakeStateErrorCopyWith<$Res> {
  _$CakeStateErrorCopyWithImpl(
      CakeStateError _value, $Res Function(CakeStateError) _then)
      : super(_value, (v) => _then(v as CakeStateError));

  @override
  CakeStateError get _value => super._value as CakeStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CakeStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CakeStateError implements CakeStateError {
  const _$CakeStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'CakeState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CakeStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CakeStateErrorCopyWith<CakeStateError> get copyWith =>
      _$CakeStateErrorCopyWithImpl<CakeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<CategoryModel> categories)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CakeStateData value) $default, {
    required TResult Function(CakeStateLoading value) loading,
    required TResult Function(CakeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CakeStateData value)? $default, {
    TResult Function(CakeStateLoading value)? loading,
    TResult Function(CakeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CakeStateData value)? $default, {
    TResult Function(CakeStateLoading value)? loading,
    TResult Function(CakeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CakeStateError implements CakeState {
  const factory CakeStateError(dynamic error) = _$CakeStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CakeStateErrorCopyWith<CakeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
