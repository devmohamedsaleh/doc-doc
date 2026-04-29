// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_doctors_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllDoctorsResponseModel {

 String get message; List<DoctorModel> get data; bool get status; int get code;
/// Create a copy of AllDoctorsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllDoctorsResponseModelCopyWith<AllDoctorsResponseModel> get copyWith => _$AllDoctorsResponseModelCopyWithImpl<AllDoctorsResponseModel>(this as AllDoctorsResponseModel, _$identity);

  /// Serializes this AllDoctorsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllDoctorsResponseModel&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(data),status,code);

@override
String toString() {
  return 'AllDoctorsResponseModel(message: $message, data: $data, status: $status, code: $code)';
}


}

/// @nodoc
abstract mixin class $AllDoctorsResponseModelCopyWith<$Res>  {
  factory $AllDoctorsResponseModelCopyWith(AllDoctorsResponseModel value, $Res Function(AllDoctorsResponseModel) _then) = _$AllDoctorsResponseModelCopyWithImpl;
@useResult
$Res call({
 String message, List<DoctorModel> data, bool status, int code
});




}
/// @nodoc
class _$AllDoctorsResponseModelCopyWithImpl<$Res>
    implements $AllDoctorsResponseModelCopyWith<$Res> {
  _$AllDoctorsResponseModelCopyWithImpl(this._self, this._then);

  final AllDoctorsResponseModel _self;
  final $Res Function(AllDoctorsResponseModel) _then;

/// Create a copy of AllDoctorsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? data = null,Object? status = null,Object? code = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DoctorModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AllDoctorsResponseModel].
extension AllDoctorsResponseModelPatterns on AllDoctorsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AllDoctorsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllDoctorsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AllDoctorsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AllDoctorsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AllDoctorsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AllDoctorsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  List<DoctorModel> data,  bool status,  int code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllDoctorsResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  List<DoctorModel> data,  bool status,  int code)  $default,) {final _that = this;
switch (_that) {
case _AllDoctorsResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  List<DoctorModel> data,  bool status,  int code)?  $default,) {final _that = this;
switch (_that) {
case _AllDoctorsResponseModel() when $default != null:
return $default(_that.message,_that.data,_that.status,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AllDoctorsResponseModel implements AllDoctorsResponseModel {
  const _AllDoctorsResponseModel({required this.message, required final  List<DoctorModel> data, required this.status, required this.code}): _data = data;
  factory _AllDoctorsResponseModel.fromJson(Map<String, dynamic> json) => _$AllDoctorsResponseModelFromJson(json);

@override final  String message;
 final  List<DoctorModel> _data;
@override List<DoctorModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  bool status;
@override final  int code;

/// Create a copy of AllDoctorsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllDoctorsResponseModelCopyWith<_AllDoctorsResponseModel> get copyWith => __$AllDoctorsResponseModelCopyWithImpl<_AllDoctorsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AllDoctorsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllDoctorsResponseModel&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_data),status,code);

@override
String toString() {
  return 'AllDoctorsResponseModel(message: $message, data: $data, status: $status, code: $code)';
}


}

/// @nodoc
abstract mixin class _$AllDoctorsResponseModelCopyWith<$Res> implements $AllDoctorsResponseModelCopyWith<$Res> {
  factory _$AllDoctorsResponseModelCopyWith(_AllDoctorsResponseModel value, $Res Function(_AllDoctorsResponseModel) _then) = __$AllDoctorsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String message, List<DoctorModel> data, bool status, int code
});




}
/// @nodoc
class __$AllDoctorsResponseModelCopyWithImpl<$Res>
    implements _$AllDoctorsResponseModelCopyWith<$Res> {
  __$AllDoctorsResponseModelCopyWithImpl(this._self, this._then);

  final _AllDoctorsResponseModel _self;
  final $Res Function(_AllDoctorsResponseModel) _then;

/// Create a copy of AllDoctorsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? data = null,Object? status = null,Object? code = null,}) {
  return _then(_AllDoctorsResponseModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DoctorModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
