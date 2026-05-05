// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentModel {

 int get id; DoctorModel get doctor; PatientModel get patient;@JsonKey(name: 'appointment_time') String get appointmentTime;@JsonKey(name: 'appointment_end_time') String get appointmentEndTime; String get status; String get notes;@JsonKey(name: 'appointment_price') int get appointmentPrice;
/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentModelCopyWith<AppointmentModel> get copyWith => _$AppointmentModelCopyWithImpl<AppointmentModel>(this as AppointmentModel, _$identity);

  /// Serializes this AppointmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.doctor, doctor) || other.doctor == doctor)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.appointmentTime, appointmentTime) || other.appointmentTime == appointmentTime)&&(identical(other.appointmentEndTime, appointmentEndTime) || other.appointmentEndTime == appointmentEndTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.appointmentPrice, appointmentPrice) || other.appointmentPrice == appointmentPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,doctor,patient,appointmentTime,appointmentEndTime,status,notes,appointmentPrice);

@override
String toString() {
  return 'AppointmentModel(id: $id, doctor: $doctor, patient: $patient, appointmentTime: $appointmentTime, appointmentEndTime: $appointmentEndTime, status: $status, notes: $notes, appointmentPrice: $appointmentPrice)';
}


}

/// @nodoc
abstract mixin class $AppointmentModelCopyWith<$Res>  {
  factory $AppointmentModelCopyWith(AppointmentModel value, $Res Function(AppointmentModel) _then) = _$AppointmentModelCopyWithImpl;
@useResult
$Res call({
 int id, DoctorModel doctor, PatientModel patient,@JsonKey(name: 'appointment_time') String appointmentTime,@JsonKey(name: 'appointment_end_time') String appointmentEndTime, String status, String notes,@JsonKey(name: 'appointment_price') int appointmentPrice
});


$DoctorModelCopyWith<$Res> get doctor;$PatientModelCopyWith<$Res> get patient;

}
/// @nodoc
class _$AppointmentModelCopyWithImpl<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  _$AppointmentModelCopyWithImpl(this._self, this._then);

  final AppointmentModel _self;
  final $Res Function(AppointmentModel) _then;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? doctor = null,Object? patient = null,Object? appointmentTime = null,Object? appointmentEndTime = null,Object? status = null,Object? notes = null,Object? appointmentPrice = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,doctor: null == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as DoctorModel,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as PatientModel,appointmentTime: null == appointmentTime ? _self.appointmentTime : appointmentTime // ignore: cast_nullable_to_non_nullable
as String,appointmentEndTime: null == appointmentEndTime ? _self.appointmentEndTime : appointmentEndTime // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,appointmentPrice: null == appointmentPrice ? _self.appointmentPrice : appointmentPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoctorModelCopyWith<$Res> get doctor {
  
  return $DoctorModelCopyWith<$Res>(_self.doctor, (value) {
    return _then(_self.copyWith(doctor: value));
  });
}/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientModelCopyWith<$Res> get patient {
  
  return $PatientModelCopyWith<$Res>(_self.patient, (value) {
    return _then(_self.copyWith(patient: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppointmentModel].
extension AppointmentModelPatterns on AppointmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentModel value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DoctorModel doctor,  PatientModel patient, @JsonKey(name: 'appointment_time')  String appointmentTime, @JsonKey(name: 'appointment_end_time')  String appointmentEndTime,  String status,  String notes, @JsonKey(name: 'appointment_price')  int appointmentPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
return $default(_that.id,_that.doctor,_that.patient,_that.appointmentTime,_that.appointmentEndTime,_that.status,_that.notes,_that.appointmentPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DoctorModel doctor,  PatientModel patient, @JsonKey(name: 'appointment_time')  String appointmentTime, @JsonKey(name: 'appointment_end_time')  String appointmentEndTime,  String status,  String notes, @JsonKey(name: 'appointment_price')  int appointmentPrice)  $default,) {final _that = this;
switch (_that) {
case _AppointmentModel():
return $default(_that.id,_that.doctor,_that.patient,_that.appointmentTime,_that.appointmentEndTime,_that.status,_that.notes,_that.appointmentPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DoctorModel doctor,  PatientModel patient, @JsonKey(name: 'appointment_time')  String appointmentTime, @JsonKey(name: 'appointment_end_time')  String appointmentEndTime,  String status,  String notes, @JsonKey(name: 'appointment_price')  int appointmentPrice)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentModel() when $default != null:
return $default(_that.id,_that.doctor,_that.patient,_that.appointmentTime,_that.appointmentEndTime,_that.status,_that.notes,_that.appointmentPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppointmentModel implements AppointmentModel {
  const _AppointmentModel({required this.id, required this.doctor, required this.patient, @JsonKey(name: 'appointment_time') required this.appointmentTime, @JsonKey(name: 'appointment_end_time') required this.appointmentEndTime, required this.status, required this.notes, @JsonKey(name: 'appointment_price') required this.appointmentPrice});
  factory _AppointmentModel.fromJson(Map<String, dynamic> json) => _$AppointmentModelFromJson(json);

@override final  int id;
@override final  DoctorModel doctor;
@override final  PatientModel patient;
@override@JsonKey(name: 'appointment_time') final  String appointmentTime;
@override@JsonKey(name: 'appointment_end_time') final  String appointmentEndTime;
@override final  String status;
@override final  String notes;
@override@JsonKey(name: 'appointment_price') final  int appointmentPrice;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentModelCopyWith<_AppointmentModel> get copyWith => __$AppointmentModelCopyWithImpl<_AppointmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppointmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.doctor, doctor) || other.doctor == doctor)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.appointmentTime, appointmentTime) || other.appointmentTime == appointmentTime)&&(identical(other.appointmentEndTime, appointmentEndTime) || other.appointmentEndTime == appointmentEndTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.appointmentPrice, appointmentPrice) || other.appointmentPrice == appointmentPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,doctor,patient,appointmentTime,appointmentEndTime,status,notes,appointmentPrice);

@override
String toString() {
  return 'AppointmentModel(id: $id, doctor: $doctor, patient: $patient, appointmentTime: $appointmentTime, appointmentEndTime: $appointmentEndTime, status: $status, notes: $notes, appointmentPrice: $appointmentPrice)';
}


}

/// @nodoc
abstract mixin class _$AppointmentModelCopyWith<$Res> implements $AppointmentModelCopyWith<$Res> {
  factory _$AppointmentModelCopyWith(_AppointmentModel value, $Res Function(_AppointmentModel) _then) = __$AppointmentModelCopyWithImpl;
@override @useResult
$Res call({
 int id, DoctorModel doctor, PatientModel patient,@JsonKey(name: 'appointment_time') String appointmentTime,@JsonKey(name: 'appointment_end_time') String appointmentEndTime, String status, String notes,@JsonKey(name: 'appointment_price') int appointmentPrice
});


@override $DoctorModelCopyWith<$Res> get doctor;@override $PatientModelCopyWith<$Res> get patient;

}
/// @nodoc
class __$AppointmentModelCopyWithImpl<$Res>
    implements _$AppointmentModelCopyWith<$Res> {
  __$AppointmentModelCopyWithImpl(this._self, this._then);

  final _AppointmentModel _self;
  final $Res Function(_AppointmentModel) _then;

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? doctor = null,Object? patient = null,Object? appointmentTime = null,Object? appointmentEndTime = null,Object? status = null,Object? notes = null,Object? appointmentPrice = null,}) {
  return _then(_AppointmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,doctor: null == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as DoctorModel,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as PatientModel,appointmentTime: null == appointmentTime ? _self.appointmentTime : appointmentTime // ignore: cast_nullable_to_non_nullable
as String,appointmentEndTime: null == appointmentEndTime ? _self.appointmentEndTime : appointmentEndTime // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,appointmentPrice: null == appointmentPrice ? _self.appointmentPrice : appointmentPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoctorModelCopyWith<$Res> get doctor {
  
  return $DoctorModelCopyWith<$Res>(_self.doctor, (value) {
    return _then(_self.copyWith(doctor: value));
  });
}/// Create a copy of AppointmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientModelCopyWith<$Res> get patient {
  
  return $PatientModelCopyWith<$Res>(_self.patient, (value) {
    return _then(_self.copyWith(patient: value));
  });
}
}

// dart format on
