// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'symptomps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SymptompsEventTearOff {
  const _$SymptompsEventTearOff();

// ignore: unused_element
  _AddSymptom addSymptom(SymptomType symptomType) {
    return _AddSymptom(
      symptomType,
    );
  }

// ignore: unused_element
  _ChangeCurrentIndex changeCurrentIndex(int index) {
    return _ChangeCurrentIndex(
      index,
    );
  }

// ignore: unused_element
  _ChangeSymptomLevel changeSymptomLevel(int level) {
    return _ChangeSymptomLevel(
      level,
    );
  }

// ignore: unused_element
  _UpdateSymptoms updateSymptoms() {
    return const _UpdateSymptoms();
  }
}

/// @nodoc
// ignore: unused_element
const $SymptompsEvent = _$SymptompsEventTearOff();

/// @nodoc
mixin _$SymptompsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addSymptom(SymptomType symptomType),
    @required TResult changeCurrentIndex(int index),
    @required TResult changeSymptomLevel(int level),
    @required TResult updateSymptoms(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addSymptom(SymptomType symptomType),
    TResult changeCurrentIndex(int index),
    TResult changeSymptomLevel(int level),
    TResult updateSymptoms(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addSymptom(_AddSymptom value),
    @required TResult changeCurrentIndex(_ChangeCurrentIndex value),
    @required TResult changeSymptomLevel(_ChangeSymptomLevel value),
    @required TResult updateSymptoms(_UpdateSymptoms value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addSymptom(_AddSymptom value),
    TResult changeCurrentIndex(_ChangeCurrentIndex value),
    TResult changeSymptomLevel(_ChangeSymptomLevel value),
    TResult updateSymptoms(_UpdateSymptoms value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SymptompsEventCopyWith<$Res> {
  factory $SymptompsEventCopyWith(
          SymptompsEvent value, $Res Function(SymptompsEvent) then) =
      _$SymptompsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SymptompsEventCopyWithImpl<$Res>
    implements $SymptompsEventCopyWith<$Res> {
  _$SymptompsEventCopyWithImpl(this._value, this._then);

  final SymptompsEvent _value;
  // ignore: unused_field
  final $Res Function(SymptompsEvent) _then;
}

/// @nodoc
abstract class _$AddSymptomCopyWith<$Res> {
  factory _$AddSymptomCopyWith(
          _AddSymptom value, $Res Function(_AddSymptom) then) =
      __$AddSymptomCopyWithImpl<$Res>;
  $Res call({SymptomType symptomType});
}

/// @nodoc
class __$AddSymptomCopyWithImpl<$Res> extends _$SymptompsEventCopyWithImpl<$Res>
    implements _$AddSymptomCopyWith<$Res> {
  __$AddSymptomCopyWithImpl(
      _AddSymptom _value, $Res Function(_AddSymptom) _then)
      : super(_value, (v) => _then(v as _AddSymptom));

  @override
  _AddSymptom get _value => super._value as _AddSymptom;

  @override
  $Res call({
    Object symptomType = freezed,
  }) {
    return _then(_AddSymptom(
      symptomType == freezed ? _value.symptomType : symptomType as SymptomType,
    ));
  }
}

/// @nodoc
class _$_AddSymptom implements _AddSymptom {
  const _$_AddSymptom(this.symptomType) : assert(symptomType != null);

  @override
  final SymptomType symptomType;

  @override
  String toString() {
    return 'SymptompsEvent.addSymptom(symptomType: $symptomType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddSymptom &&
            (identical(other.symptomType, symptomType) ||
                const DeepCollectionEquality()
                    .equals(other.symptomType, symptomType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(symptomType);

  @JsonKey(ignore: true)
  @override
  _$AddSymptomCopyWith<_AddSymptom> get copyWith =>
      __$AddSymptomCopyWithImpl<_AddSymptom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addSymptom(SymptomType symptomType),
    @required TResult changeCurrentIndex(int index),
    @required TResult changeSymptomLevel(int level),
    @required TResult updateSymptoms(),
  }) {
    assert(addSymptom != null);
    assert(changeCurrentIndex != null);
    assert(changeSymptomLevel != null);
    assert(updateSymptoms != null);
    return addSymptom(symptomType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addSymptom(SymptomType symptomType),
    TResult changeCurrentIndex(int index),
    TResult changeSymptomLevel(int level),
    TResult updateSymptoms(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addSymptom != null) {
      return addSymptom(symptomType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addSymptom(_AddSymptom value),
    @required TResult changeCurrentIndex(_ChangeCurrentIndex value),
    @required TResult changeSymptomLevel(_ChangeSymptomLevel value),
    @required TResult updateSymptoms(_UpdateSymptoms value),
  }) {
    assert(addSymptom != null);
    assert(changeCurrentIndex != null);
    assert(changeSymptomLevel != null);
    assert(updateSymptoms != null);
    return addSymptom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addSymptom(_AddSymptom value),
    TResult changeCurrentIndex(_ChangeCurrentIndex value),
    TResult changeSymptomLevel(_ChangeSymptomLevel value),
    TResult updateSymptoms(_UpdateSymptoms value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addSymptom != null) {
      return addSymptom(this);
    }
    return orElse();
  }
}

abstract class _AddSymptom implements SymptompsEvent {
  const factory _AddSymptom(SymptomType symptomType) = _$_AddSymptom;

  SymptomType get symptomType;
  @JsonKey(ignore: true)
  _$AddSymptomCopyWith<_AddSymptom> get copyWith;
}

/// @nodoc
abstract class _$ChangeCurrentIndexCopyWith<$Res> {
  factory _$ChangeCurrentIndexCopyWith(
          _ChangeCurrentIndex value, $Res Function(_ChangeCurrentIndex) then) =
      __$ChangeCurrentIndexCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$ChangeCurrentIndexCopyWithImpl<$Res>
    extends _$SymptompsEventCopyWithImpl<$Res>
    implements _$ChangeCurrentIndexCopyWith<$Res> {
  __$ChangeCurrentIndexCopyWithImpl(
      _ChangeCurrentIndex _value, $Res Function(_ChangeCurrentIndex) _then)
      : super(_value, (v) => _then(v as _ChangeCurrentIndex));

  @override
  _ChangeCurrentIndex get _value => super._value as _ChangeCurrentIndex;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_ChangeCurrentIndex(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_ChangeCurrentIndex implements _ChangeCurrentIndex {
  const _$_ChangeCurrentIndex(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'SymptompsEvent.changeCurrentIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeCurrentIndex &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$ChangeCurrentIndexCopyWith<_ChangeCurrentIndex> get copyWith =>
      __$ChangeCurrentIndexCopyWithImpl<_ChangeCurrentIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addSymptom(SymptomType symptomType),
    @required TResult changeCurrentIndex(int index),
    @required TResult changeSymptomLevel(int level),
    @required TResult updateSymptoms(),
  }) {
    assert(addSymptom != null);
    assert(changeCurrentIndex != null);
    assert(changeSymptomLevel != null);
    assert(updateSymptoms != null);
    return changeCurrentIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addSymptom(SymptomType symptomType),
    TResult changeCurrentIndex(int index),
    TResult changeSymptomLevel(int level),
    TResult updateSymptoms(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeCurrentIndex != null) {
      return changeCurrentIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addSymptom(_AddSymptom value),
    @required TResult changeCurrentIndex(_ChangeCurrentIndex value),
    @required TResult changeSymptomLevel(_ChangeSymptomLevel value),
    @required TResult updateSymptoms(_UpdateSymptoms value),
  }) {
    assert(addSymptom != null);
    assert(changeCurrentIndex != null);
    assert(changeSymptomLevel != null);
    assert(updateSymptoms != null);
    return changeCurrentIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addSymptom(_AddSymptom value),
    TResult changeCurrentIndex(_ChangeCurrentIndex value),
    TResult changeSymptomLevel(_ChangeSymptomLevel value),
    TResult updateSymptoms(_UpdateSymptoms value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeCurrentIndex != null) {
      return changeCurrentIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeCurrentIndex implements SymptompsEvent {
  const factory _ChangeCurrentIndex(int index) = _$_ChangeCurrentIndex;

  int get index;
  @JsonKey(ignore: true)
  _$ChangeCurrentIndexCopyWith<_ChangeCurrentIndex> get copyWith;
}

/// @nodoc
abstract class _$ChangeSymptomLevelCopyWith<$Res> {
  factory _$ChangeSymptomLevelCopyWith(
          _ChangeSymptomLevel value, $Res Function(_ChangeSymptomLevel) then) =
      __$ChangeSymptomLevelCopyWithImpl<$Res>;
  $Res call({int level});
}

/// @nodoc
class __$ChangeSymptomLevelCopyWithImpl<$Res>
    extends _$SymptompsEventCopyWithImpl<$Res>
    implements _$ChangeSymptomLevelCopyWith<$Res> {
  __$ChangeSymptomLevelCopyWithImpl(
      _ChangeSymptomLevel _value, $Res Function(_ChangeSymptomLevel) _then)
      : super(_value, (v) => _then(v as _ChangeSymptomLevel));

  @override
  _ChangeSymptomLevel get _value => super._value as _ChangeSymptomLevel;

  @override
  $Res call({
    Object level = freezed,
  }) {
    return _then(_ChangeSymptomLevel(
      level == freezed ? _value.level : level as int,
    ));
  }
}

/// @nodoc
class _$_ChangeSymptomLevel implements _ChangeSymptomLevel {
  const _$_ChangeSymptomLevel(this.level) : assert(level != null);

  @override
  final int level;

  @override
  String toString() {
    return 'SymptompsEvent.changeSymptomLevel(level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeSymptomLevel &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(level);

  @JsonKey(ignore: true)
  @override
  _$ChangeSymptomLevelCopyWith<_ChangeSymptomLevel> get copyWith =>
      __$ChangeSymptomLevelCopyWithImpl<_ChangeSymptomLevel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addSymptom(SymptomType symptomType),
    @required TResult changeCurrentIndex(int index),
    @required TResult changeSymptomLevel(int level),
    @required TResult updateSymptoms(),
  }) {
    assert(addSymptom != null);
    assert(changeCurrentIndex != null);
    assert(changeSymptomLevel != null);
    assert(updateSymptoms != null);
    return changeSymptomLevel(level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addSymptom(SymptomType symptomType),
    TResult changeCurrentIndex(int index),
    TResult changeSymptomLevel(int level),
    TResult updateSymptoms(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSymptomLevel != null) {
      return changeSymptomLevel(level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addSymptom(_AddSymptom value),
    @required TResult changeCurrentIndex(_ChangeCurrentIndex value),
    @required TResult changeSymptomLevel(_ChangeSymptomLevel value),
    @required TResult updateSymptoms(_UpdateSymptoms value),
  }) {
    assert(addSymptom != null);
    assert(changeCurrentIndex != null);
    assert(changeSymptomLevel != null);
    assert(updateSymptoms != null);
    return changeSymptomLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addSymptom(_AddSymptom value),
    TResult changeCurrentIndex(_ChangeCurrentIndex value),
    TResult changeSymptomLevel(_ChangeSymptomLevel value),
    TResult updateSymptoms(_UpdateSymptoms value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSymptomLevel != null) {
      return changeSymptomLevel(this);
    }
    return orElse();
  }
}

abstract class _ChangeSymptomLevel implements SymptompsEvent {
  const factory _ChangeSymptomLevel(int level) = _$_ChangeSymptomLevel;

  int get level;
  @JsonKey(ignore: true)
  _$ChangeSymptomLevelCopyWith<_ChangeSymptomLevel> get copyWith;
}

/// @nodoc
abstract class _$UpdateSymptomsCopyWith<$Res> {
  factory _$UpdateSymptomsCopyWith(
          _UpdateSymptoms value, $Res Function(_UpdateSymptoms) then) =
      __$UpdateSymptomsCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateSymptomsCopyWithImpl<$Res>
    extends _$SymptompsEventCopyWithImpl<$Res>
    implements _$UpdateSymptomsCopyWith<$Res> {
  __$UpdateSymptomsCopyWithImpl(
      _UpdateSymptoms _value, $Res Function(_UpdateSymptoms) _then)
      : super(_value, (v) => _then(v as _UpdateSymptoms));

  @override
  _UpdateSymptoms get _value => super._value as _UpdateSymptoms;
}

/// @nodoc
class _$_UpdateSymptoms implements _UpdateSymptoms {
  const _$_UpdateSymptoms();

  @override
  String toString() {
    return 'SymptompsEvent.updateSymptoms()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateSymptoms);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addSymptom(SymptomType symptomType),
    @required TResult changeCurrentIndex(int index),
    @required TResult changeSymptomLevel(int level),
    @required TResult updateSymptoms(),
  }) {
    assert(addSymptom != null);
    assert(changeCurrentIndex != null);
    assert(changeSymptomLevel != null);
    assert(updateSymptoms != null);
    return updateSymptoms();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addSymptom(SymptomType symptomType),
    TResult changeCurrentIndex(int index),
    TResult changeSymptomLevel(int level),
    TResult updateSymptoms(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSymptoms != null) {
      return updateSymptoms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addSymptom(_AddSymptom value),
    @required TResult changeCurrentIndex(_ChangeCurrentIndex value),
    @required TResult changeSymptomLevel(_ChangeSymptomLevel value),
    @required TResult updateSymptoms(_UpdateSymptoms value),
  }) {
    assert(addSymptom != null);
    assert(changeCurrentIndex != null);
    assert(changeSymptomLevel != null);
    assert(updateSymptoms != null);
    return updateSymptoms(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addSymptom(_AddSymptom value),
    TResult changeCurrentIndex(_ChangeCurrentIndex value),
    TResult changeSymptomLevel(_ChangeSymptomLevel value),
    TResult updateSymptoms(_UpdateSymptoms value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSymptoms != null) {
      return updateSymptoms(this);
    }
    return orElse();
  }
}

abstract class _UpdateSymptoms implements SymptompsEvent {
  const factory _UpdateSymptoms() = _$_UpdateSymptoms;
}

/// @nodoc
class _$SymptompsStateTearOff {
  const _$SymptompsStateTearOff();

// ignore: unused_element
  _SymptompsState call(
      {@required List<SymptomType> symptomsList,
      @required int currentIndex,
      @required List<int> symptomLevelList}) {
    return _SymptompsState(
      symptomsList: symptomsList,
      currentIndex: currentIndex,
      symptomLevelList: symptomLevelList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SymptompsState = _$SymptompsStateTearOff();

/// @nodoc
mixin _$SymptompsState {
  List<SymptomType> get symptomsList;
  int get currentIndex;
  List<int> get symptomLevelList;

  @JsonKey(ignore: true)
  $SymptompsStateCopyWith<SymptompsState> get copyWith;
}

/// @nodoc
abstract class $SymptompsStateCopyWith<$Res> {
  factory $SymptompsStateCopyWith(
          SymptompsState value, $Res Function(SymptompsState) then) =
      _$SymptompsStateCopyWithImpl<$Res>;
  $Res call(
      {List<SymptomType> symptomsList,
      int currentIndex,
      List<int> symptomLevelList});
}

/// @nodoc
class _$SymptompsStateCopyWithImpl<$Res>
    implements $SymptompsStateCopyWith<$Res> {
  _$SymptompsStateCopyWithImpl(this._value, this._then);

  final SymptompsState _value;
  // ignore: unused_field
  final $Res Function(SymptompsState) _then;

  @override
  $Res call({
    Object symptomsList = freezed,
    Object currentIndex = freezed,
    Object symptomLevelList = freezed,
  }) {
    return _then(_value.copyWith(
      symptomsList: symptomsList == freezed
          ? _value.symptomsList
          : symptomsList as List<SymptomType>,
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
      symptomLevelList: symptomLevelList == freezed
          ? _value.symptomLevelList
          : symptomLevelList as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$SymptompsStateCopyWith<$Res>
    implements $SymptompsStateCopyWith<$Res> {
  factory _$SymptompsStateCopyWith(
          _SymptompsState value, $Res Function(_SymptompsState) then) =
      __$SymptompsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SymptomType> symptomsList,
      int currentIndex,
      List<int> symptomLevelList});
}

/// @nodoc
class __$SymptompsStateCopyWithImpl<$Res>
    extends _$SymptompsStateCopyWithImpl<$Res>
    implements _$SymptompsStateCopyWith<$Res> {
  __$SymptompsStateCopyWithImpl(
      _SymptompsState _value, $Res Function(_SymptompsState) _then)
      : super(_value, (v) => _then(v as _SymptompsState));

  @override
  _SymptompsState get _value => super._value as _SymptompsState;

  @override
  $Res call({
    Object symptomsList = freezed,
    Object currentIndex = freezed,
    Object symptomLevelList = freezed,
  }) {
    return _then(_SymptompsState(
      symptomsList: symptomsList == freezed
          ? _value.symptomsList
          : symptomsList as List<SymptomType>,
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
      symptomLevelList: symptomLevelList == freezed
          ? _value.symptomLevelList
          : symptomLevelList as List<int>,
    ));
  }
}

/// @nodoc
class _$_SymptompsState implements _SymptompsState {
  const _$_SymptompsState(
      {@required this.symptomsList,
      @required this.currentIndex,
      @required this.symptomLevelList})
      : assert(symptomsList != null),
        assert(currentIndex != null),
        assert(symptomLevelList != null);

  @override
  final List<SymptomType> symptomsList;
  @override
  final int currentIndex;
  @override
  final List<int> symptomLevelList;

  @override
  String toString() {
    return 'SymptompsState(symptomsList: $symptomsList, currentIndex: $currentIndex, symptomLevelList: $symptomLevelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SymptompsState &&
            (identical(other.symptomsList, symptomsList) ||
                const DeepCollectionEquality()
                    .equals(other.symptomsList, symptomsList)) &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)) &&
            (identical(other.symptomLevelList, symptomLevelList) ||
                const DeepCollectionEquality()
                    .equals(other.symptomLevelList, symptomLevelList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(symptomsList) ^
      const DeepCollectionEquality().hash(currentIndex) ^
      const DeepCollectionEquality().hash(symptomLevelList);

  @JsonKey(ignore: true)
  @override
  _$SymptompsStateCopyWith<_SymptompsState> get copyWith =>
      __$SymptompsStateCopyWithImpl<_SymptompsState>(this, _$identity);
}

abstract class _SymptompsState implements SymptompsState {
  const factory _SymptompsState(
      {@required List<SymptomType> symptomsList,
      @required int currentIndex,
      @required List<int> symptomLevelList}) = _$_SymptompsState;

  @override
  List<SymptomType> get symptomsList;
  @override
  int get currentIndex;
  @override
  List<int> get symptomLevelList;
  @override
  @JsonKey(ignore: true)
  _$SymptompsStateCopyWith<_SymptompsState> get copyWith;
}
