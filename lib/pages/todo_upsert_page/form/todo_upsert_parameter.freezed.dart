// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_upsert_parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoUpsertParameterTearOff {
  const _$TodoUpsertParameterTearOff();

// ignore: unused_element
  _TodoUpsertParameter call({Todo todo, @required bool isInsert}) {
    return _TodoUpsertParameter(
      todo: todo,
      isInsert: isInsert,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoUpsertParameter = _$TodoUpsertParameterTearOff();

/// @nodoc
mixin _$TodoUpsertParameter {
  Todo get todo;
  bool get isInsert;

  @JsonKey(ignore: true)
  $TodoUpsertParameterCopyWith<TodoUpsertParameter> get copyWith;
}

/// @nodoc
abstract class $TodoUpsertParameterCopyWith<$Res> {
  factory $TodoUpsertParameterCopyWith(
          TodoUpsertParameter value, $Res Function(TodoUpsertParameter) then) =
      _$TodoUpsertParameterCopyWithImpl<$Res>;
  $Res call({Todo todo, bool isInsert});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoUpsertParameterCopyWithImpl<$Res>
    implements $TodoUpsertParameterCopyWith<$Res> {
  _$TodoUpsertParameterCopyWithImpl(this._value, this._then);

  final TodoUpsertParameter _value;
  // ignore: unused_field
  final $Res Function(TodoUpsertParameter) _then;

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
abstract class _$TodoUpsertParameterCopyWith<$Res>
    implements $TodoUpsertParameterCopyWith<$Res> {
  factory _$TodoUpsertParameterCopyWith(_TodoUpsertParameter value,
          $Res Function(_TodoUpsertParameter) then) =
      __$TodoUpsertParameterCopyWithImpl<$Res>;
  @override
  $Res call({Todo todo, bool isInsert});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$TodoUpsertParameterCopyWithImpl<$Res>
    extends _$TodoUpsertParameterCopyWithImpl<$Res>
    implements _$TodoUpsertParameterCopyWith<$Res> {
  __$TodoUpsertParameterCopyWithImpl(
      _TodoUpsertParameter _value, $Res Function(_TodoUpsertParameter) _then)
      : super(_value, (v) => _then(v as _TodoUpsertParameter));

  @override
  _TodoUpsertParameter get _value => super._value as _TodoUpsertParameter;

  @override
  $Res call({
    Object todo = freezed,
    Object isInsert = freezed,
  }) {
    return _then(_TodoUpsertParameter(
      todo: todo == freezed ? _value.todo : todo as Todo,
      isInsert: isInsert == freezed ? _value.isInsert : isInsert as bool,
    ));
  }
}

/// @nodoc
class _$_TodoUpsertParameter extends _TodoUpsertParameter {
  _$_TodoUpsertParameter({this.todo, @required this.isInsert})
      : assert(isInsert != null),
        super._();

  @override
  final Todo todo;
  @override
  final bool isInsert;

  @override
  String toString() {
    return 'TodoUpsertParameter(todo: $todo, isInsert: $isInsert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoUpsertParameter &&
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
  _$TodoUpsertParameterCopyWith<_TodoUpsertParameter> get copyWith =>
      __$TodoUpsertParameterCopyWithImpl<_TodoUpsertParameter>(
          this, _$identity);
}

abstract class _TodoUpsertParameter extends TodoUpsertParameter {
  _TodoUpsertParameter._() : super._();
  factory _TodoUpsertParameter({Todo todo, @required bool isInsert}) =
      _$_TodoUpsertParameter;

  @override
  Todo get todo;
  @override
  bool get isInsert;
  @override
  @JsonKey(ignore: true)
  _$TodoUpsertParameterCopyWith<_TodoUpsertParameter> get copyWith;
}
