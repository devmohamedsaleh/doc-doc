// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DoctorModel {

 int get id; String get name; String get email; String get phone; String get photo; String get gender; String get address; String get description; String get degree; DoctorSpecializationModel get specialization; CityModel get city;@JsonKey(name: 'appoint_price') int get appointPrice;@JsonKey(name: 'start_time') String get startTime;@JsonKey(name: 'end_time') String get endTime;
/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorModelCopyWith<DoctorModel> get copyWith => _$DoctorModelCopyWithImpl<DoctorModel>(this as DoctorModel, _$identity);

  /// Serializes this DoctorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.address, address) || other.address == address)&&(identical(other.description, description) || other.description == description)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&(identical(other.city, city) || other.city == city)&&(identical(other.appointPrice, appointPrice) || other.appointPrice == appointPrice)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,photo,gender,address,description,degree,specialization,city,appointPrice,startTime,endTime);

@override
String toString() {
  return 'DoctorModel(id: $id, name: $name, email: $email, phone: $phone, photo: $photo, gender: $gender, address: $address, description: $description, degree: $degree, specialization: $specialization, city: $city, appointPrice: $appointPrice, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $DoctorModelCopyWith<$Res>  {
  factory $DoctorModelCopyWith(DoctorModel value, $Res Function(DoctorModel) _then) = _$DoctorModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String email, String phone, String photo, String gender, String address, String description, String degree, DoctorSpecializationModel specialization, CityModel city,@JsonKey(name: 'appoint_price') int appointPrice,@JsonKey(name: 'start_time') String startTime,@JsonKey(name: 'end_time') String endTime
});


$DoctorSpecializationModelCopyWith<$Res> get specialization;$CityModelCopyWith<$Res> get city;

}
/// @nodoc
class _$DoctorModelCopyWithImpl<$Res>
    implements $DoctorModelCopyWith<$Res> {
  _$DoctorModelCopyWithImpl(this._self, this._then);

  final DoctorModel _self;
  final $Res Function(DoctorModel) _then;

/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = null,Object? photo = null,Object? gender = null,Object? address = null,Object? description = null,Object? degree = null,Object? specialization = null,Object? city = null,Object? appointPrice = null,Object? startTime = null,Object? endTime = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,degree: null == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String,specialization: null == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as DoctorSpecializationModel,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityModel,appointPrice: null == appointPrice ? _self.appointPrice : appointPrice // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoctorSpecializationModelCopyWith<$Res> get specialization {
  
  return $DoctorSpecializationModelCopyWith<$Res>(_self.specialization, (value) {
    return _then(_self.copyWith(specialization: value));
  });
}/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityModelCopyWith<$Res> get city {
  
  return $CityModelCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}


/// Adds pattern-matching-related methods to [DoctorModel].
extension DoctorModelPatterns on DoctorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DoctorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DoctorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DoctorModel value)  $default,){
final _that = this;
switch (_that) {
case _DoctorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DoctorModel value)?  $default,){
final _that = this;
switch (_that) {
case _DoctorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String phone,  String photo,  String gender,  String address,  String description,  String degree,  DoctorSpecializationModel specialization,  CityModel city, @JsonKey(name: 'appoint_price')  int appointPrice, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoctorModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.photo,_that.gender,_that.address,_that.description,_that.degree,_that.specialization,_that.city,_that.appointPrice,_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String phone,  String photo,  String gender,  String address,  String description,  String degree,  DoctorSpecializationModel specialization,  CityModel city, @JsonKey(name: 'appoint_price')  int appointPrice, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime)  $default,) {final _that = this;
switch (_that) {
case _DoctorModel():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.photo,_that.gender,_that.address,_that.description,_that.degree,_that.specialization,_that.city,_that.appointPrice,_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String email,  String phone,  String photo,  String gender,  String address,  String description,  String degree,  DoctorSpecializationModel specialization,  CityModel city, @JsonKey(name: 'appoint_price')  int appointPrice, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime)?  $default,) {final _that = this;
switch (_that) {
case _DoctorModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.photo,_that.gender,_that.address,_that.description,_that.degree,_that.specialization,_that.city,_that.appointPrice,_that.startTime,_that.endTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DoctorModel implements DoctorModel {
  const _DoctorModel({required this.id, required this.name, required this.email, required this.phone, required this.photo, required this.gender, required this.address, required this.description, required this.degree, required this.specialization, required this.city, @JsonKey(name: 'appoint_price') required this.appointPrice, @JsonKey(name: 'start_time') required this.startTime, @JsonKey(name: 'end_time') required this.endTime});
  factory _DoctorModel.fromJson(Map<String, dynamic> json) => _$DoctorModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String email;
@override final  String phone;
@override final  String photo;
@override final  String gender;
@override final  String address;
@override final  String description;
@override final  String degree;
@override final  DoctorSpecializationModel specialization;
@override final  CityModel city;
@override@JsonKey(name: 'appoint_price') final  int appointPrice;
@override@JsonKey(name: 'start_time') final  String startTime;
@override@JsonKey(name: 'end_time') final  String endTime;

/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoctorModelCopyWith<_DoctorModel> get copyWith => __$DoctorModelCopyWithImpl<_DoctorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DoctorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoctorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.address, address) || other.address == address)&&(identical(other.description, description) || other.description == description)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&(identical(other.city, city) || other.city == city)&&(identical(other.appointPrice, appointPrice) || other.appointPrice == appointPrice)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,photo,gender,address,description,degree,specialization,city,appointPrice,startTime,endTime);

@override
String toString() {
  return 'DoctorModel(id: $id, name: $name, email: $email, phone: $phone, photo: $photo, gender: $gender, address: $address, description: $description, degree: $degree, specialization: $specialization, city: $city, appointPrice: $appointPrice, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$DoctorModelCopyWith<$Res> implements $DoctorModelCopyWith<$Res> {
  factory _$DoctorModelCopyWith(_DoctorModel value, $Res Function(_DoctorModel) _then) = __$DoctorModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String email, String phone, String photo, String gender, String address, String description, String degree, DoctorSpecializationModel specialization, CityModel city,@JsonKey(name: 'appoint_price') int appointPrice,@JsonKey(name: 'start_time') String startTime,@JsonKey(name: 'end_time') String endTime
});


@override $DoctorSpecializationModelCopyWith<$Res> get specialization;@override $CityModelCopyWith<$Res> get city;

}
/// @nodoc
class __$DoctorModelCopyWithImpl<$Res>
    implements _$DoctorModelCopyWith<$Res> {
  __$DoctorModelCopyWithImpl(this._self, this._then);

  final _DoctorModel _self;
  final $Res Function(_DoctorModel) _then;

/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = null,Object? photo = null,Object? gender = null,Object? address = null,Object? description = null,Object? degree = null,Object? specialization = null,Object? city = null,Object? appointPrice = null,Object? startTime = null,Object? endTime = null,}) {
  return _then(_DoctorModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,degree: null == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String,specialization: null == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as DoctorSpecializationModel,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityModel,appointPrice: null == appointPrice ? _self.appointPrice : appointPrice // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoctorSpecializationModelCopyWith<$Res> get specialization {
  
  return $DoctorSpecializationModelCopyWith<$Res>(_self.specialization, (value) {
    return _then(_self.copyWith(specialization: value));
  });
}/// Create a copy of DoctorModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityModelCopyWith<$Res> get city {
  
  return $CityModelCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}

// dart format on
