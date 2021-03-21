// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_upsert_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoUpsertStateTearOff {
  const _$TodoUpsertStateTearOff();

// ignore: unused_element
  _TodoUpsertState call(
      {@required int id, @required TextEditingController titleController}) {
    return _TodoUpsertState(
      id: id,
      titleController: titleController,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoUpsertState = _$TodoUpsertStateTearOff();

/// @nodoc
mixin _$TodoUpsertState {
  int get id;
  TextEditingController get titleController;

  @JsonKey(ignore: true)
  $TodoUpsertStateCopyWith<TodoUpsertState> get copyWith;
}

/// @nodoc
abstract class $TodoUpsertStateCopyWith<$Res> {
  factory $TodoUpsertStateCopyWith(
          TodoUpsertState value, $Res Function(TodoUpsertState) then) =
      _$TodoUpsertStateCopyWithImpl<$Res>;
  $Res call({int id, TextEditingController titleController});
}

/// @nodoc
class _$TodoUpsertStateCopyWithImpl<$Res>
    implements $TodoUpsertStateCopyWith<$Res> {
  _$TodoUpsertStateCopyWithImpl(this._value, this._then);

  final TodoUpsertState _value;
  // ignore: unused_field
  final $Res Function(TodoUpsertState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object titleController = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      titleController: titleController == freezed
          ? _value.titleController
          : titleController as TextEditingController,
    ));
  }
}

/// @nodoc
abstract class _$TodoUpsertStateCopyWith<$Res>
    implements $TodoUpsertStateCopyWith<$Res> {
  factory _$TodoUpsertStateCopyWith(
          _TodoUpsertState value, $Res Function(_TodoUpsertState) then) =
      __$TodoUpsertStateCopyWithImpl<$Res>;
  @override
  $Res call({int id, TextEditingController titleController});
}

/// @nodoc
class __$TodoUpsertStateCopyWithImpl<$Res>
    extends _$TodoUpsertStateCopyWithImpl<$Res>
    implements _$TodoUpsertStateCopyWith<$Res> {
  __$TodoUpsertStateCopyWithImpl(
      _TodoUpsertState _value, $Res Function(_TodoUpsertState) _then)
      : super(_value, (v) => _then(v as _TodoUpsertState));

  @override
  _TodoUpsertState get _value => super._value as _TodoUpsertState;

  @override
  $Res call({
    Object id = freezed,
    Object titleController = freezed,
  }) {
    return _then(_TodoUpsertState(
      id: id == freezed ? _value.id : id as int,
      titleController: titleController == freezed
          ? _value.titleController
          : titleController as TextEditingController,
    ));
  }
}

/// @nodoc
class _$_TodoUpsertState extends _TodoUpsertState {
  _$_TodoUpsertState({@required this.id, @required this.titleController})
      : assert(id != null),
        assert(titleController != null),
        super._();

  @override
  final int id;
  @override
  final TextEditingController titleController;

  @override
  String toString() {
    return 'TodoUpsertState(id: $id, titleController: $titleController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoUpsertState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.titleController, titleController) ||
                const DeepCollectionEquality()
                    .equals(other.titleController, titleController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(titleController);

  @JsonKey(ignore: true)
  @override
  _$TodoUpsertStateCopyWith<_TodoUpsertState> get copyWith =>
      __$TodoUpsertStateCopyWithImpl<_TodoUpsertState>(this, _$identity);
}

abstract class _TodoUpsertState extends TodoUpsertState {
  _TodoUpsertState._() : super._();
  factory _TodoUpsertState(
      {@required int id,
      @required TextEditingController titleController}) = _$_TodoUpsertState;

  @override
  int get id;
  @override
  TextEditingController get titleController;
  @override
  @JsonKey(ignore: true)
  _$TodoUpsertStateCopyWith<_TodoUpsertState> get copyWith;
}
