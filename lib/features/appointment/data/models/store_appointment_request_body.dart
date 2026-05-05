class StoreAppointmentRequestBody {
  final int doctorId;
  final String startTime;
  final String notes;

  StoreAppointmentRequestBody({
    required this.doctorId,
    required this.startTime,
    this.notes = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'doctor_id': doctorId,
      'start_time': startTime,
      'notes': notes,
    };
  }
}