// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_persons_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocPersonsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loadedNoData,
    required TResult Function(
            List<AppPerson> persons, Map<String, String> cards)
        loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loadedNoData,
    TResult? Function(List<AppPerson> persons, Map<String, String> cards)?
        loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loadedNoData,
    TResult Function(List<AppPerson> persons, Map<String, String> cards)?
        loadedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocPersonsStateInit value) init,
    required TResult Function(BlocPersonsStateLoadedNoData value) loadedNoData,
    required TResult Function(BlocPersonsStateLoaded value) loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocPersonsStateInit value)? init,
    TResult? Function(BlocPersonsStateLoadedNoData value)? loadedNoData,
    TResult? Function(BlocPersonsStateLoaded value)? loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocPersonsStateInit value)? init,
    TResult Function(BlocPersonsStateLoadedNoData value)? loadedNoData,
    TResult Function(BlocPersonsStateLoaded value)? loadedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocPersonsStateCopyWith<$Res> {
  factory $BlocPersonsStateCopyWith(
          BlocPersonsState value, $Res Function(BlocPersonsState) then) =
      _$BlocPersonsStateCopyWithImpl<$Res, BlocPersonsState>;
}

/// @nodoc
class _$BlocPersonsStateCopyWithImpl<$Res, $Val extends BlocPersonsState>
    implements $BlocPersonsStateCopyWith<$Res> {
  _$BlocPersonsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocPersonsStateInitCopyWith<$Res> {
  factory _$$BlocPersonsStateInitCopyWith(_$BlocPersonsStateInit value,
          $Res Function(_$BlocPersonsStateInit) then) =
      __$$BlocPersonsStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocPersonsStateInitCopyWithImpl<$Res>
    extends _$BlocPersonsStateCopyWithImpl<$Res, _$BlocPersonsStateInit>
    implements _$$BlocPersonsStateInitCopyWith<$Res> {
  __$$BlocPersonsStateInitCopyWithImpl(_$BlocPersonsStateInit _value,
      $Res Function(_$BlocPersonsStateInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocPersonsStateInit implements BlocPersonsStateInit {
  const _$BlocPersonsStateInit();

  @override
  String toString() {
    return 'BlocPersonsState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlocPersonsStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loadedNoData,
    required TResult Function(
            List<AppPerson> persons, Map<String, String> cards)
        loadedData,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loadedNoData,
    TResult? Function(List<AppPerson> persons, Map<String, String> cards)?
        loadedData,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loadedNoData,
    TResult Function(List<AppPerson> persons, Map<String, String> cards)?
        loadedData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocPersonsStateInit value) init,
    required TResult Function(BlocPersonsStateLoadedNoData value) loadedNoData,
    required TResult Function(BlocPersonsStateLoaded value) loadedData,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocPersonsStateInit value)? init,
    TResult? Function(BlocPersonsStateLoadedNoData value)? loadedNoData,
    TResult? Function(BlocPersonsStateLoaded value)? loadedData,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocPersonsStateInit value)? init,
    TResult Function(BlocPersonsStateLoadedNoData value)? loadedNoData,
    TResult Function(BlocPersonsStateLoaded value)? loadedData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class BlocPersonsStateInit implements BlocPersonsState {
  const factory BlocPersonsStateInit() = _$BlocPersonsStateInit;
}

/// @nodoc
abstract class _$$BlocPersonsStateLoadedNoDataCopyWith<$Res> {
  factory _$$BlocPersonsStateLoadedNoDataCopyWith(
          _$BlocPersonsStateLoadedNoData value,
          $Res Function(_$BlocPersonsStateLoadedNoData) then) =
      __$$BlocPersonsStateLoadedNoDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocPersonsStateLoadedNoDataCopyWithImpl<$Res>
    extends _$BlocPersonsStateCopyWithImpl<$Res, _$BlocPersonsStateLoadedNoData>
    implements _$$BlocPersonsStateLoadedNoDataCopyWith<$Res> {
  __$$BlocPersonsStateLoadedNoDataCopyWithImpl(
      _$BlocPersonsStateLoadedNoData _value,
      $Res Function(_$BlocPersonsStateLoadedNoData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocPersonsStateLoadedNoData implements BlocPersonsStateLoadedNoData {
  const _$BlocPersonsStateLoadedNoData();

  @override
  String toString() {
    return 'BlocPersonsState.loadedNoData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocPersonsStateLoadedNoData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loadedNoData,
    required TResult Function(
            List<AppPerson> persons, Map<String, String> cards)
        loadedData,
  }) {
    return loadedNoData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loadedNoData,
    TResult? Function(List<AppPerson> persons, Map<String, String> cards)?
        loadedData,
  }) {
    return loadedNoData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loadedNoData,
    TResult Function(List<AppPerson> persons, Map<String, String> cards)?
        loadedData,
    required TResult orElse(),
  }) {
    if (loadedNoData != null) {
      return loadedNoData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocPersonsStateInit value) init,
    required TResult Function(BlocPersonsStateLoadedNoData value) loadedNoData,
    required TResult Function(BlocPersonsStateLoaded value) loadedData,
  }) {
    return loadedNoData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocPersonsStateInit value)? init,
    TResult? Function(BlocPersonsStateLoadedNoData value)? loadedNoData,
    TResult? Function(BlocPersonsStateLoaded value)? loadedData,
  }) {
    return loadedNoData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocPersonsStateInit value)? init,
    TResult Function(BlocPersonsStateLoadedNoData value)? loadedNoData,
    TResult Function(BlocPersonsStateLoaded value)? loadedData,
    required TResult orElse(),
  }) {
    if (loadedNoData != null) {
      return loadedNoData(this);
    }
    return orElse();
  }
}

abstract class BlocPersonsStateLoadedNoData implements BlocPersonsState {
  const factory BlocPersonsStateLoadedNoData() = _$BlocPersonsStateLoadedNoData;
}

/// @nodoc
abstract class _$$BlocPersonsStateLoadedCopyWith<$Res> {
  factory _$$BlocPersonsStateLoadedCopyWith(_$BlocPersonsStateLoaded value,
          $Res Function(_$BlocPersonsStateLoaded) then) =
      __$$BlocPersonsStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppPerson> persons, Map<String, String> cards});
}

/// @nodoc
class __$$BlocPersonsStateLoadedCopyWithImpl<$Res>
    extends _$BlocPersonsStateCopyWithImpl<$Res, _$BlocPersonsStateLoaded>
    implements _$$BlocPersonsStateLoadedCopyWith<$Res> {
  __$$BlocPersonsStateLoadedCopyWithImpl(_$BlocPersonsStateLoaded _value,
      $Res Function(_$BlocPersonsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persons = null,
    Object? cards = null,
  }) {
    return _then(_$BlocPersonsStateLoaded(
      null == persons
          ? _value._persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<AppPerson>,
      null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$BlocPersonsStateLoaded implements BlocPersonsStateLoaded {
  const _$BlocPersonsStateLoaded(
      final List<AppPerson> persons, final Map<String, String> cards)
      : _persons = persons,
        _cards = cards;

  final List<AppPerson> _persons;
  @override
  List<AppPerson> get persons {
    if (_persons is EqualUnmodifiableListView) return _persons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_persons);
  }

  final Map<String, String> _cards;
  @override
  Map<String, String> get cards {
    if (_cards is EqualUnmodifiableMapView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cards);
  }

  @override
  String toString() {
    return 'BlocPersonsState.loadedData(persons: $persons, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocPersonsStateLoaded &&
            const DeepCollectionEquality().equals(other._persons, _persons) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_persons),
      const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocPersonsStateLoadedCopyWith<_$BlocPersonsStateLoaded> get copyWith =>
      __$$BlocPersonsStateLoadedCopyWithImpl<_$BlocPersonsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loadedNoData,
    required TResult Function(
            List<AppPerson> persons, Map<String, String> cards)
        loadedData,
  }) {
    return loadedData(persons, cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loadedNoData,
    TResult? Function(List<AppPerson> persons, Map<String, String> cards)?
        loadedData,
  }) {
    return loadedData?.call(persons, cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loadedNoData,
    TResult Function(List<AppPerson> persons, Map<String, String> cards)?
        loadedData,
    required TResult orElse(),
  }) {
    if (loadedData != null) {
      return loadedData(persons, cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocPersonsStateInit value) init,
    required TResult Function(BlocPersonsStateLoadedNoData value) loadedNoData,
    required TResult Function(BlocPersonsStateLoaded value) loadedData,
  }) {
    return loadedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocPersonsStateInit value)? init,
    TResult? Function(BlocPersonsStateLoadedNoData value)? loadedNoData,
    TResult? Function(BlocPersonsStateLoaded value)? loadedData,
  }) {
    return loadedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocPersonsStateInit value)? init,
    TResult Function(BlocPersonsStateLoadedNoData value)? loadedNoData,
    TResult Function(BlocPersonsStateLoaded value)? loadedData,
    required TResult orElse(),
  }) {
    if (loadedData != null) {
      return loadedData(this);
    }
    return orElse();
  }
}

abstract class BlocPersonsStateLoaded implements BlocPersonsState {
  const factory BlocPersonsStateLoaded(
          final List<AppPerson> persons, final Map<String, String> cards) =
      _$BlocPersonsStateLoaded;

  List<AppPerson> get persons;
  Map<String, String> get cards;
  @JsonKey(ignore: true)
  _$$BlocPersonsStateLoadedCopyWith<_$BlocPersonsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
