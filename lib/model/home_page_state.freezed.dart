// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounterTearOff {
  const _$CounterTearOff();

  Counter call({int counter = 0}) {
    return Counter(
      counter: counter,
    );
  }
}

/// @nodoc
const $Counter = _$CounterTearOff();

/// @nodoc
mixin _$Counter {
  int get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterCopyWith<Counter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterCopyWith<$Res> {
  factory $CounterCopyWith(Counter value, $Res Function(Counter) then) =
      _$CounterCopyWithImpl<$Res>;
  $Res call({int counter});
}

/// @nodoc
class _$CounterCopyWithImpl<$Res> implements $CounterCopyWith<$Res> {
  _$CounterCopyWithImpl(this._value, this._then);

  final Counter _value;
  // ignore: unused_field
  final $Res Function(Counter) _then;

  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(_value.copyWith(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $CounterCopyWith<$Res> implements $CounterCopyWith<$Res> {
  factory $CounterCopyWith(Counter value, $Res Function(Counter) then) =
      _$CounterCopyWithImpl<$Res>;
  @override
  $Res call({int counter});
}

/// @nodoc
class _$CounterCopyWithImpl<$Res> extends _$CounterCopyWithImpl<$Res>
    implements $CounterCopyWith<$Res> {
  _$CounterCopyWithImpl(Counter _value, $Res Function(Counter) _then)
      : super(_value, (v) => _then(v as Counter));

  @override
  Counter get _value => super._value as Counter;

  @override
  $Res call({
    Object? counter = freezed,
  }) {
    return _then(Counter(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Counter implements Counter {
  const _$Counter({this.counter = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int counter;

  @override
  String toString() {
    return 'Counter(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Counter &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality().equals(other.counter, counter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(counter);

  @JsonKey(ignore: true)
  @override
  $CounterCopyWith<Counter> get copyWith =>
      _$CounterCopyWithImpl<Counter>(this, _$identity);
}

abstract class Counter implements Counter {
  const factory Counter({int counter}) = _$Counter;

  @override
  int get counter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CounterCopyWith<Counter> get copyWith => throw _privateConstructorUsedError;
}
