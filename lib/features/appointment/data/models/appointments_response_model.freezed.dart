// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentsResponseModel {

 String get message; List<AppointmentModel> get data; bool get status; int get code;
/// Create a copy of AppointmentsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentsResponseModelCopyWith<AppointmentsResponseModel> get copyWith => _$AppointmentsResponseModelCopyWithImpl<AppointmentsResponseModel>(this as AppointmentsResponseModel, _$identity);

  /// Serializes this AppointmentsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentsResponseModel&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(data),status,code);

@override
String toString() {
  return 'AppointmentsResponseModel(message: $message, data: $data, status: $status, code: $code)';
}


}

/// @nodoc
abstract mixin class $AppointmentsResponseModelCopyWith<$Res>  {
  factory $AppointmentsResponseModelCopyWith(AppointmentsResponseModel value, $Res Function(AppointmentsResponseModel) _then) = _$AppointmentsResponseModelCopyWithImpl;
@useResult
$Res call({
 String message, List<AppointmentModel> data, bool status, int code
});




}
/// @nodoc
class _$AppointmentsResponseModelCopyWithImpl<$Res>
    implements $AppointmentsResponseModelCopyWith<$Res> {
  _$AppointmentsResponseModelCopyWithImpl(this._self, this._then);

  final AppointmentsResponseModel _self;
  final $Res Function(AppointmentsResponseModel) _then;

/// Create a copy of AppointmentsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? data = null,Object? status = null,Object? code = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AppointmentsResponseModel].
extension AppointmentsResponseModelPatterns on AppointmentsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  List<AppointmentModel> data,  bool status,  int code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentsResponseModel() when $default != null:
return $default(_that.message,_that.data,_that.status,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  List<AppointmentModel> data,  bool status,  int code)  $default,) {final _that = this;
switch (_that) {
case _AppointmentsResponseModel():
return $default(_that.message,_that.data,_that.status,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  List<AppointmentModel> data,  bool status,  int code)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentsResponseModel() when $default != null:
return $default(_that.message,_that.data,_that.status,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppointmentsResponseModel implements AppointmentsResponseModel {
  const _AppointmentsResponseModel({required this.message, required final  List<AppointmentModel> data, required this.status, required this.code}): _data = data;
  factory _AppointmentsResponseModel.fromJson(Map<String, dynamic> json) => _$AppointmentsResponseModelFromJson(json);

@override final  String message;
 final  List<AppointmentModel> _data;
@override List<AppointmentModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  bool status;
@override final  int code;

/// Create a copy of AppointmentsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentsResponseModelCopyWith<_AppointmentsResponseModel> get copyWith => __$AppointmentsResponseModelCopyWithImpl<_AppointmentsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppointmentsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentsResponseModel&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_data),status,code);

@override
String toString() {
  return 'AppointmentsResponseModel(message: $message, data: $data, status: $status, code: $code)';
}


}

/// @nodoc
abstract mixin class _$AppointmentsResponseModelCopyWith<$Res> implements $AppointmentsResponseModelCopyWith<$Res> {
  factory _$AppointmentsResponseModelCopyWith(_AppointmentsResponseModel value, $Res Function(_AppointmentsResponseModel) _then) = __$AppointmentsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String message, List<AppointmentModel> data, bool status, int code
});




}
/// @nodoc
class __$AppointmentsResponseModelCopyWithImpl<$Res>
    implements _$AppointmentsResponseModelCopyWith<$Res> {
  __$AppointmentsResponseModelCopyWithImpl(this._self, this._then);

  final _AppointmentsResponseModel _self;
  final $Res Function(_AppointmentsResponseModel) _then;

/// Create a copy of AppointmentsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? data = null,Object? status = null,Object? code = null,}) {
  return _then(_AppointmentsResponseModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AppointmentModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
