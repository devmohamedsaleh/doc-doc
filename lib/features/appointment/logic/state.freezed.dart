// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppointmentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentState()';
}


}

/// @nodoc
class $AppointmentStateCopyWith<$Res>  {
$AppointmentStateCopyWith(AppointmentState _, $Res Function(AppointmentState) __);
}


/// Adds pattern-matching-related methods to [AppointmentState].
extension AppointmentStatePatterns on AppointmentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _StoreSuccess value)?  storeSuccess,TResult Function( _GetAppointmentsSuccess value)?  getAppointmentsSuccess,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _StoreSuccess() when storeSuccess != null:
return storeSuccess(_that);case _GetAppointmentsSuccess() when getAppointmentsSuccess != null:
return getAppointmentsSuccess(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _StoreSuccess value)  storeSuccess,required TResult Function( _GetAppointmentsSuccess value)  getAppointmentsSuccess,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _StoreSuccess():
return storeSuccess(_that);case _GetAppointmentsSuccess():
return getAppointmentsSuccess(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _StoreSuccess value)?  storeSuccess,TResult? Function( _GetAppointmentsSuccess value)?  getAppointmentsSuccess,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _StoreSuccess() when storeSuccess != null:
return storeSuccess(_that);case _GetAppointmentsSuccess() when getAppointmentsSuccess != null:
return getAppointmentsSuccess(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  storeSuccess,TResult Function( List<AppointmentModel> appointments)?  getAppointmentsSuccess,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _StoreSuccess() when storeSuccess != null:
return storeSuccess(_that.message);case _GetAppointmentsSuccess() when getAppointmentsSuccess != null:
return getAppointmentsSuccess(_that.appointments);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  storeSuccess,required TResult Function( List<AppointmentModel> appointments)  getAppointmentsSuccess,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _StoreSuccess():
return storeSuccess(_that.message);case _GetAppointmentsSuccess():
return getAppointmentsSuccess(_that.appointments);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  storeSuccess,TResult? Function( List<AppointmentModel> appointments)?  getAppointmentsSuccess,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _StoreSuccess() when storeSuccess != null:
return storeSuccess(_that.message);case _GetAppointmentsSuccess() when getAppointmentsSuccess != null:
return getAppointmentsSuccess(_that.appointments);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AppointmentState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentState.initial()';
}


}




/// @nodoc


class _Loading implements AppointmentState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentState.loading()';
}


}




/// @nodoc


class _StoreSuccess implements AppointmentState {
  const _StoreSuccess({required this.message});
  

 final  String message;

/// Create a copy of AppointmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreSuccessCopyWith<_StoreSuccess> get copyWith => __$StoreSuccessCopyWithImpl<_StoreSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppointmentState.storeSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class _$StoreSuccessCopyWith<$Res> implements $AppointmentStateCopyWith<$Res> {
  factory _$StoreSuccessCopyWith(_StoreSuccess value, $Res Function(_StoreSuccess) _then) = __$StoreSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$StoreSuccessCopyWithImpl<$Res>
    implements _$StoreSuccessCopyWith<$Res> {
  __$StoreSuccessCopyWithImpl(this._self, this._then);

  final _StoreSuccess _self;
  final $Res Function(_StoreSuccess) _then;

/// Create a copy of AppointmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_StoreSuccess(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetAppointmentsSuccess implements AppointmentState {
  const _GetAppointmentsSuccess({required final  List<AppointmentModel> appointments}): _appointments = appointments;
  

 final  List<AppointmentModel> _appointments;
 List<AppointmentModel> get appointments {
  if (_appointments is EqualUnmodifiableListView) return _appointments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appointments);
}


/// Create a copy of AppointmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAppointmentsSuccessCopyWith<_GetAppointmentsSuccess> get copyWith => __$GetAppointmentsSuccessCopyWithImpl<_GetAppointmentsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAppointmentsSuccess&&const DeepCollectionEquality().equals(other._appointments, _appointments));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_appointments));

@override
String toString() {
  return 'AppointmentState.getAppointmentsSuccess(appointments: $appointments)';
}


}

/// @nodoc
abstract mixin class _$GetAppointmentsSuccessCopyWith<$Res> implements $AppointmentStateCopyWith<$Res> {
  factory _$GetAppointmentsSuccessCopyWith(_GetAppointmentsSuccess value, $Res Function(_GetAppointmentsSuccess) _then) = __$GetAppointmentsSuccessCopyWithImpl;
@useResult
$Res call({
 List<AppointmentModel> appointments
});




}
/// @nodoc
class __$GetAppointmentsSuccessCopyWithImpl<$Res>
    implements _$GetAppointmentsSuccessCopyWith<$Res> {
  __$GetAppointmentsSuccessCopyWithImpl(this._self, this._then);

  final _GetAppointmentsSuccess _self;
  final $Res Function(_GetAppointmentsSuccess) _then;

/// Create a copy of AppointmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointments = null,}) {
  return _then(_GetAppointmentsSuccess(
appointments: null == appointments ? _self._appointments : appointments // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>,
  ));
}


}

/// @nodoc


class _Error implements AppointmentState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of AppointmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppointmentState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AppointmentStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of AppointmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
