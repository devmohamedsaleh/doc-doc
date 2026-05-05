// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientModel {

 int get id; String get name; String get email; String get phone; String get gender;
/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientModelCopyWith<PatientModel> get copyWith => _$PatientModelCopyWithImpl<PatientModel>(this as PatientModel, _$identity);

  /// Serializes this PatientModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,gender);

@override
String toString() {
  return 'PatientModel(id: $id, name: $name, email: $email, phone: $phone, gender: $gender)';
}


}

/// @nodoc
abstract mixin class $PatientModelCopyWith<$Res>  {
  factory $PatientModelCopyWith(PatientModel value, $Res Function(PatientModel) _then) = _$PatientModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String email, String phone, String gender
});




}
/// @nodoc
class _$PatientModelCopyWithImpl<$Res>
    implements $PatientModelCopyWith<$Res> {
  _$PatientModelCopyWithImpl(this._self, this._then);

  final PatientModel _self;
  final $Res Function(PatientModel) _then;

/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = null,Object? gender = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientModel].
extension PatientModelPatterns on PatientModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientModel value)  $default,){
final _that = this;
switch (_that) {
case _PatientModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientModel value)?  $default,){
final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String phone,  String gender)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.gender);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String phone,  String gender)  $default,) {final _that = this;
switch (_that) {
case _PatientModel():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.gender);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String email,  String phone,  String gender)?  $default,) {final _that = this;
switch (_that) {
case _PatientModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.gender);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatientModel implements PatientModel {
  const _PatientModel({required this.id, required this.name, required this.email, required this.phone, required this.gender});
  factory _PatientModel.fromJson(Map<String, dynamic> json) => _$PatientModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String email;
@override final  String phone;
@override final  String gender;

/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientModelCopyWith<_PatientModel> get copyWith => __$PatientModelCopyWithImpl<_PatientModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,gender);

@override
String toString() {
  return 'PatientModel(id: $id, name: $name, email: $email, phone: $phone, gender: $gender)';
}


}

/// @nodoc
abstract mixin class _$PatientModelCopyWith<$Res> implements $PatientModelCopyWith<$Res> {
  factory _$PatientModelCopyWith(_PatientModel value, $Res Function(_PatientModel) _then) = __$PatientModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String email, String phone, String gender
});




}
/// @nodoc
class __$PatientModelCopyWithImpl<$Res>
    implements _$PatientModelCopyWith<$Res> {
  __$PatientModelCopyWithImpl(this._self, this._then);

  final _PatientModel _self;
  final $Res Function(_PatientModel) _then;

/// Create a copy of PatientModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = null,Object? gender = null,}) {
  return _then(_PatientModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
