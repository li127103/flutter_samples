// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Increment {

 int get by;
/// Create a copy of Increment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncrementCopyWith<Increment> get copyWith => _$IncrementCopyWithImpl<Increment>(this as Increment, _$identity);

  /// Serializes this Increment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Increment&&(identical(other.by, by) || other.by == by));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,by);

@override
String toString() {
  return 'Increment(by: $by)';
}


}

/// @nodoc
abstract mixin class $IncrementCopyWith<$Res>  {
  factory $IncrementCopyWith(Increment value, $Res Function(Increment) _then) = _$IncrementCopyWithImpl;
@useResult
$Res call({
 int by
});




}
/// @nodoc
class _$IncrementCopyWithImpl<$Res>
    implements $IncrementCopyWith<$Res> {
  _$IncrementCopyWithImpl(this._self, this._then);

  final Increment _self;
  final $Res Function(Increment) _then;

/// Create a copy of Increment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? by = null,}) {
  return _then(_self.copyWith(
by: null == by ? _self.by : by // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Increment].
extension IncrementPatterns on Increment {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Increment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Increment() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Increment value)  $default,){
final _that = this;
switch (_that) {
case _Increment():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Increment value)?  $default,){
final _that = this;
switch (_that) {
case _Increment() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int by)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Increment() when $default != null:
return $default(_that.by);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int by)  $default,) {final _that = this;
switch (_that) {
case _Increment():
return $default(_that.by);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int by)?  $default,) {final _that = this;
switch (_that) {
case _Increment() when $default != null:
return $default(_that.by);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Increment implements Increment {
  const _Increment({required this.by});
  factory _Increment.fromJson(Map<String, dynamic> json) => _$IncrementFromJson(json);

@override final  int by;

/// Create a copy of Increment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncrementCopyWith<_Increment> get copyWith => __$IncrementCopyWithImpl<_Increment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IncrementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Increment&&(identical(other.by, by) || other.by == by));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,by);

@override
String toString() {
  return 'Increment(by: $by)';
}


}

/// @nodoc
abstract mixin class _$IncrementCopyWith<$Res> implements $IncrementCopyWith<$Res> {
  factory _$IncrementCopyWith(_Increment value, $Res Function(_Increment) _then) = __$IncrementCopyWithImpl;
@override @useResult
$Res call({
 int by
});




}
/// @nodoc
class __$IncrementCopyWithImpl<$Res>
    implements _$IncrementCopyWith<$Res> {
  __$IncrementCopyWithImpl(this._self, this._then);

  final _Increment _self;
  final $Res Function(_Increment) _then;

/// Create a copy of Increment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? by = null,}) {
  return _then(_Increment(
by: null == by ? _self.by : by // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Count {

 int get value;
/// Create a copy of Count
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountCopyWith<Count> get copyWith => _$CountCopyWithImpl<Count>(this as Count, _$identity);

  /// Serializes this Count to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Count&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'Count(value: $value)';
}


}

/// @nodoc
abstract mixin class $CountCopyWith<$Res>  {
  factory $CountCopyWith(Count value, $Res Function(Count) _then) = _$CountCopyWithImpl;
@useResult
$Res call({
 int value
});




}
/// @nodoc
class _$CountCopyWithImpl<$Res>
    implements $CountCopyWith<$Res> {
  _$CountCopyWithImpl(this._self, this._then);

  final Count _self;
  final $Res Function(Count) _then;

/// Create a copy of Count
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Count].
extension CountPatterns on Count {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Count value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Count() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Count value)  $default,){
final _that = this;
switch (_that) {
case _Count():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Count value)?  $default,){
final _that = this;
switch (_that) {
case _Count() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Count() when $default != null:
return $default(_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int value)  $default,) {final _that = this;
switch (_that) {
case _Count():
return $default(_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int value)?  $default,) {final _that = this;
switch (_that) {
case _Count() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Count implements Count {
  const _Count(this.value);
  factory _Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);

@override final  int value;

/// Create a copy of Count
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountCopyWith<_Count> get copyWith => __$CountCopyWithImpl<_Count>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Count&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'Count(value: $value)';
}


}

/// @nodoc
abstract mixin class _$CountCopyWith<$Res> implements $CountCopyWith<$Res> {
  factory _$CountCopyWith(_Count value, $Res Function(_Count) _then) = __$CountCopyWithImpl;
@override @useResult
$Res call({
 int value
});




}
/// @nodoc
class __$CountCopyWithImpl<$Res>
    implements _$CountCopyWith<$Res> {
  __$CountCopyWithImpl(this._self, this._then);

  final _Count _self;
  final $Res Function(_Count) _then;

/// Create a copy of Count
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Count(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
