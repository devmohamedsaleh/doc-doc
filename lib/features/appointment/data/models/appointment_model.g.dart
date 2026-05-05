// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) =>
    _AppointmentModel(
      id: (json['id'] as num).toInt(),
      doctor: DoctorModel.fromJson(json['doctor'] as Map<String, dynamic>),
      patient: PatientModel.fromJson(json['patient'] as Map<String, dynamic>),
      appointmentTime: json['appointment_time'] as String,
      appointmentEndTime: json['appointment_end_time'] as String,
      status: json['status'] as String,
      notes: json['notes'] as String,
      appointmentPrice: (json['appointment_price'] as num).toInt(),
    );

Map<String, dynamic> _$AppointmentModelToJson(_AppointmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctor': instance.doctor,
      'patient': instance.patient,
      'appointment_time': instance.appointmentTime,
      'appointment_end_time': instance.appointmentEndTime,
      'status': instance.status,
      'notes': instance.notes,
      'appointment_price': instance.appointmentPrice,
    };
