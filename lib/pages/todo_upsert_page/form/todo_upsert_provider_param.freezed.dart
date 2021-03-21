// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_upsert_provider_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoUpsertProviderParamTearOff {
  const _$TodoUpsertProviderParamTearOff();

// ignore: unused_element
  _TodoUpsertProviderParam call(
      {@required Todo todo, @required bool isInsert}) {
    return _TodoUpsertProviderParam(
      todo: todo,
      isInsert: isInsert,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoUpsertProviderParam = _$TodoUpsertProviderParamTearOff();

/// @nodoc
mixin _$TodoUpsertProviderParam {
  Todo get todo;
  bool get isInsert;

  @JsonKey(ignore: true)
  $TodoUpsertProviderParamCopyWith<TodoUpsertProviderParam> get copyWith;
}

/// @nodoc
abstract class $TodoUpsertProviderParamCopyWith<$Res> {
  factory $TodoUpsertProviderParamCopyWith(TodoUpsertProviderParam value,
          $Res Function(TodoUpsertProviderParam) then) =
      _$TodoUpsertProviderParamCopyWithImpl<$Res>;
  $Res call({Todo todo, bool isInsert});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoUpsertProviderParamCopyWithImpl<$Res>
    implements $TodoUpsertProviderParamCopyWith<$Res> {
  _$TodoUpsertProviderParamCopyWithImpl(this._value, this._then);

  final TodoUpsertProviderParam _value;
  // ignore: unused_field
  final $Res Function(TodoUpsertProviderParam) _then;

  @override
  $Res call({
    Object todo = freezed,
    Object isInsert = freezed,
  }) {
    return _then(_value.copyWith(
      todo: todo == freezed ? _value.todo : todo as Todo,
      isInsert: isInsert == freezed ? _value.isInsert : isInsert as bool,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    if (_value.todo == null) {
      return null;
    }
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc
abstract class _$TodoUpsertProviderParamCopyWith<$Res>
    implements $TodoUpsertProviderParamCopyWith<$Res> {
  factory _$TodoUpsertProviderParamCopyWith(_TodoUpsertProviderParam value,
          $Res Function(_TodoUpsertProviderParam) then) =
      __$TodoUpsertProviderParamCopyWithImpl<$Res>;
  @override
  $Res call({Todo todo, bool isInsert});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$TodoUpsertProviderParamCopyWithImpl<$Res>
    extends _$TodoUpsertProviderParamCopyWithImpl<$Res>
    implements _$TodoUpsertProviderParamCopyWith<$Res> {
  __$TodoUpsertProviderParamCopyWithImpl(_TodoUpsertProviderParam _value,
      $Res Function(_TodoUpsertProviderParam) _then)
      : super(_value, (v) => _then(v as _TodoUpsertProviderParam));

  @override
  _TodoUpsertProviderParam get _value =>
      super._value as _TodoUpsertProviderParam;

  @override
  $Res call({
    Object todo = freezed,
    Object isInsert = freezed,
  }) {
    return _then(_TodoUpsertProviderParam(
      todo: todo == freezed ? _value.todo : todo as Todo,
      isInsert: isInsert == freezed ? _value.isInsert : isInsert as bool,
    ));
  }
}

/// @nodoc
class _$_TodoUpsertProviderParam extends _TodoUpsertProviderParam {
  _$_TodoUpsertProviderParam({@required this.todo, @required this.isInsert})
      : assert(todo != null),
        assert(isInsert != null),
        super._();

  @override
  final Todo todo;
  @override
  final bool isInsert;

  @override
  String toString() {
    return 'TodoUpsertProviderParam(todo: $todo, isInsert: $isInsert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoUpsertProviderParam &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)) &&
            (identical(other.isInsert, isInsert) ||
                const DeepCollectionEquality()
                    .equals(other.isInsert, isInsert)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(todo) ^
      const DeepCollectionEquality().hash(isInsert);

  @JsonKey(ignore: true)
  @override
  _$TodoUpsertProviderParamCopyWith<_TodoUpsertProviderParam> get copyWith =>
      __$TodoUpsertProviderParamCopyWithImpl<_TodoUpsertProviderParam>(
          this, _$identity);
}

abstract class _TodoUpsertProviderParam extends TodoUpsertProviderParam {
  _TodoUpsertProviderParam._() : super._();
  factory _TodoUpsertProviderParam(
      {@required Todo todo,
      @required bool isInsert}) = _$_TodoUpsertProviderParam;

  @override
  Todo get todo;
  @override
  bool get isInsert;
  @override
  @JsonKey(ignore: true)
  _$TodoUpsertProviderParamCopyWith<_TodoUpsertProviderParam> get copyWith;
}
