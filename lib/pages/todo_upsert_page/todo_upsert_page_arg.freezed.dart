// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_upsert_page_arg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoUpsertPageArgTearOff {
  const _$TodoUpsertPageArgTearOff();

// ignore: unused_element
  _TodoUpsertPageArg call({@required @nullable Todo todo}) {
    return _TodoUpsertPageArg(
      todo: todo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoUpsertPageArg = _$TodoUpsertPageArgTearOff();

/// @nodoc
mixin _$TodoUpsertPageArg {
  @nullable
  Todo get todo;

  @JsonKey(ignore: true)
  $TodoUpsertPageArgCopyWith<TodoUpsertPageArg> get copyWith;
}

/// @nodoc
abstract class $TodoUpsertPageArgCopyWith<$Res> {
  factory $TodoUpsertPageArgCopyWith(
          TodoUpsertPageArg value, $Res Function(TodoUpsertPageArg) then) =
      _$TodoUpsertPageArgCopyWithImpl<$Res>;
  $Res call({@nullable Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoUpsertPageArgCopyWithImpl<$Res>
    implements $TodoUpsertPageArgCopyWith<$Res> {
  _$TodoUpsertPageArgCopyWithImpl(this._value, this._then);

  final TodoUpsertPageArg _value;
  // ignore: unused_field
  final $Res Function(TodoUpsertPageArg) _then;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_value.copyWith(
      todo: todo == freezed ? _value.todo : todo as Todo,
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
abstract class _$TodoUpsertPageArgCopyWith<$Res>
    implements $TodoUpsertPageArgCopyWith<$Res> {
  factory _$TodoUpsertPageArgCopyWith(
          _TodoUpsertPageArg value, $Res Function(_TodoUpsertPageArg) then) =
      __$TodoUpsertPageArgCopyWithImpl<$Res>;
  @override
  $Res call({@nullable Todo todo});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$TodoUpsertPageArgCopyWithImpl<$Res>
    extends _$TodoUpsertPageArgCopyWithImpl<$Res>
    implements _$TodoUpsertPageArgCopyWith<$Res> {
  __$TodoUpsertPageArgCopyWithImpl(
      _TodoUpsertPageArg _value, $Res Function(_TodoUpsertPageArg) _then)
      : super(_value, (v) => _then(v as _TodoUpsertPageArg));

  @override
  _TodoUpsertPageArg get _value => super._value as _TodoUpsertPageArg;

  @override
  $Res call({
    Object todo = freezed,
  }) {
    return _then(_TodoUpsertPageArg(
      todo: todo == freezed ? _value.todo : todo as Todo,
    ));
  }
}

/// @nodoc
class _$_TodoUpsertPageArg extends _TodoUpsertPageArg {
  _$_TodoUpsertPageArg({@required @nullable this.todo}) : super._();

  @override
  @nullable
  final Todo todo;

  @override
  String toString() {
    return 'TodoUpsertPageArg(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoUpsertPageArg &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @JsonKey(ignore: true)
  @override
  _$TodoUpsertPageArgCopyWith<_TodoUpsertPageArg> get copyWith =>
      __$TodoUpsertPageArgCopyWithImpl<_TodoUpsertPageArg>(this, _$identity);
}

abstract class _TodoUpsertPageArg extends TodoUpsertPageArg {
  _TodoUpsertPageArg._() : super._();
  factory _TodoUpsertPageArg({@required @nullable Todo todo}) =
      _$_TodoUpsertPageArg;

  @override
  @nullable
  Todo get todo;
  @override
  @JsonKey(ignore: true)
  _$TodoUpsertPageArgCopyWith<_TodoUpsertPageArg> get copyWith;
}
