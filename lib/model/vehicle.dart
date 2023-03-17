class Vehicle {
  final int trackedObjectId;
  final String identification;
  final String kenteken;
  final String street;
  final String city;
  final String countryCode;
  final String deviceId;
  final num speed;
  final num latitude;
  final num longitude;
  final String directionText;
  final int direction;
  final String statusCode;
  final String activityChangeTime;
  final String activityName;
  final String activityIcon;
  final String timestampUTC;
  final int employeeId;
  final String employeeName;
  final String employeePhone;
  final String employeeDriverCardId;
  final String trailerName;

  const Vehicle({
    required this.trackedObjectId,
    required this.identification,
    required this.kenteken,
    required this.street,
    required this.city,
    required this.countryCode,
    required this.deviceId,
    required this.speed,
    required this.latitude,
    required this.longitude,
    required this.directionText,
    required this.direction,
    required this.statusCode,
    required this.activityChangeTime,
    required this.activityName,
    required this.activityIcon,
    required this.timestampUTC,
    required this.employeeId,
    required this.employeeName,
    required this.employeePhone,
    required this.employeeDriverCardId,
    required this.trailerName,
  });
}

