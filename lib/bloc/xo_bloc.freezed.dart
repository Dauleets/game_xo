// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'xo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$XoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetEvent,
    required TResult Function(int index) clickEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetEvent,
    TResult? Function(int index)? clickEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetEvent,
    TResult Function(int index)? clickEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetEvent value) resetEvent,
    required TResult Function(ClickEvent value) clickEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResetEvent value)? resetEvent,
    TResult? Function(ClickEvent value)? clickEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetEvent value)? resetEvent,
    TResult Function(ClickEvent value)? clickEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XoEventCopyWith<$Res> {
  factory $XoEventCopyWith(XoEvent value, $Res Function(XoEvent) then) =
      _$XoEventCopyWithImpl<$Res, XoEvent>;
}

/// @nodoc
class _$XoEventCopyWithImpl<$Res, $Val extends XoEvent>
    implements $XoEventCopyWith<$Res> {
  _$XoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResetEventCopyWith<$Res> {
  factory _$$ResetEventCopyWith(
          _$ResetEvent value, $Res Function(_$ResetEvent) then) =
      __$$ResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetEventCopyWithImpl<$Res>
    extends _$XoEventCopyWithImpl<$Res, _$ResetEvent>
    implements _$$ResetEventCopyWith<$Res> {
  __$$ResetEventCopyWithImpl(
      _$ResetEvent _value, $Res Function(_$ResetEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetEvent implements ResetEvent {
  const _$ResetEvent();

  @override
  String toString() {
    return 'XoEvent.resetEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetEvent,
    required TResult Function(int index) clickEvent,
  }) {
    return resetEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetEvent,
    TResult? Function(int index)? clickEvent,
  }) {
    return resetEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetEvent,
    TResult Function(int index)? clickEvent,
    required TResult orElse(),
  }) {
    if (resetEvent != null) {
      return resetEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetEvent value) resetEvent,
    required TResult Function(ClickEvent value) clickEvent,
  }) {
    return resetEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResetEvent value)? resetEvent,
    TResult? Function(ClickEvent value)? clickEvent,
  }) {
    return resetEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetEvent value)? resetEvent,
    TResult Function(ClickEvent value)? clickEvent,
    required TResult orElse(),
  }) {
    if (resetEvent != null) {
      return resetEvent(this);
    }
    return orElse();
  }
}

abstract class ResetEvent implements XoEvent {
  const factory ResetEvent() = _$ResetEvent;
}

/// @nodoc
abstract class _$$ClickEventCopyWith<$Res> {
  factory _$$ClickEventCopyWith(
          _$ClickEvent value, $Res Function(_$ClickEvent) then) =
      __$$ClickEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ClickEventCopyWithImpl<$Res>
    extends _$XoEventCopyWithImpl<$Res, _$ClickEvent>
    implements _$$ClickEventCopyWith<$Res> {
  __$$ClickEventCopyWithImpl(
      _$ClickEvent _value, $Res Function(_$ClickEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ClickEvent(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ClickEvent implements ClickEvent {
  const _$ClickEvent({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'XoEvent.clickEvent(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickEvent &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickEventCopyWith<_$ClickEvent> get copyWith =>
      __$$ClickEventCopyWithImpl<_$ClickEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetEvent,
    required TResult Function(int index) clickEvent,
  }) {
    return clickEvent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetEvent,
    TResult? Function(int index)? clickEvent,
  }) {
    return clickEvent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetEvent,
    TResult Function(int index)? clickEvent,
    required TResult orElse(),
  }) {
    if (clickEvent != null) {
      return clickEvent(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetEvent value) resetEvent,
    required TResult Function(ClickEvent value) clickEvent,
  }) {
    return clickEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResetEvent value)? resetEvent,
    TResult? Function(ClickEvent value)? clickEvent,
  }) {
    return clickEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetEvent value)? resetEvent,
    TResult Function(ClickEvent value)? clickEvent,
    required TResult orElse(),
  }) {
    if (clickEvent != null) {
      return clickEvent(this);
    }
    return orElse();
  }
}

abstract class ClickEvent implements XoEvent {
  const factory ClickEvent({required final int index}) = _$ClickEvent;

  int get index;
  @JsonKey(ignore: true)
  _$$ClickEventCopyWith<_$ClickEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
