// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $VehiclesTable extends Vehicles with TableInfo<$VehiclesTable, Vehicle> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VehiclesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _trackedObjectIdMeta =
      const VerificationMeta('trackedObjectId');
  @override
  late final GeneratedColumn<int> trackedObjectId = GeneratedColumn<int>(
      'tracked_object_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _identificationMeta =
      const VerificationMeta('identification');
  @override
  late final GeneratedColumn<String> identification = GeneratedColumn<String>(
      'identification', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _kentekenMeta =
      const VerificationMeta('kenteken');
  @override
  late final GeneratedColumn<String> kenteken = GeneratedColumn<String>(
      'kenteken', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String> street = GeneratedColumn<String>(
      'street', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _countryCodeMeta =
      const VerificationMeta('countryCode');
  @override
  late final GeneratedColumn<String> countryCode = GeneratedColumn<String>(
      'country_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
      'device_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _speedMeta = const VerificationMeta('speed');
  @override
  late final GeneratedColumn<double> speed = GeneratedColumn<double>(
      'speed', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _directionTextMeta =
      const VerificationMeta('directionText');
  @override
  late final GeneratedColumn<String> directionText = GeneratedColumn<String>(
      'direction_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _directionMeta =
      const VerificationMeta('direction');
  @override
  late final GeneratedColumn<int> direction = GeneratedColumn<int>(
      'direction', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _statusCodeMeta =
      const VerificationMeta('statusCode');
  @override
  late final GeneratedColumn<String> statusCode = GeneratedColumn<String>(
      'status_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _activityChangeTimeMeta =
      const VerificationMeta('activityChangeTime');
  @override
  late final GeneratedColumn<String> activityChangeTime =
      GeneratedColumn<String>('activity_change_time', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _activityNameMeta =
      const VerificationMeta('activityName');
  @override
  late final GeneratedColumn<String> activityName = GeneratedColumn<String>(
      'activity_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _activityIconMeta =
      const VerificationMeta('activityIcon');
  @override
  late final GeneratedColumn<String> activityIcon = GeneratedColumn<String>(
      'activity_icon', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _timestampUTCMeta =
      const VerificationMeta('timestampUTC');
  @override
  late final GeneratedColumn<String> timestampUTC = GeneratedColumn<String>(
      'timestamp_u_t_c', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _employeeIdMeta =
      const VerificationMeta('employeeId');
  @override
  late final GeneratedColumn<int> employeeId = GeneratedColumn<int>(
      'employee_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _employeeNameMeta =
      const VerificationMeta('employeeName');
  @override
  late final GeneratedColumn<String> employeeName = GeneratedColumn<String>(
      'employee_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _employeePhoneMeta =
      const VerificationMeta('employeePhone');
  @override
  late final GeneratedColumn<String> employeePhone = GeneratedColumn<String>(
      'employee_phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _employeeDriverCardIdMeta =
      const VerificationMeta('employeeDriverCardId');
  @override
  late final GeneratedColumn<String> employeeDriverCardId =
      GeneratedColumn<String>('employee_driver_card_id', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _trailerNameMeta =
      const VerificationMeta('trailerName');
  @override
  late final GeneratedColumn<String> trailerName = GeneratedColumn<String>(
      'trailer_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        trackedObjectId,
        identification,
        kenteken,
        street,
        city,
        countryCode,
        deviceId,
        speed,
        latitude,
        longitude,
        directionText,
        direction,
        statusCode,
        activityChangeTime,
        activityName,
        activityIcon,
        timestampUTC,
        employeeId,
        employeeName,
        employeePhone,
        employeeDriverCardId,
        trailerName
      ];
  @override
  String get aliasedName => _alias ?? 'vehicles';
  @override
  String get actualTableName => 'vehicles';
  @override
  VerificationContext validateIntegrity(Insertable<Vehicle> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tracked_object_id')) {
      context.handle(
          _trackedObjectIdMeta,
          trackedObjectId.isAcceptableOrUnknown(
              data['tracked_object_id']!, _trackedObjectIdMeta));
    }
    if (data.containsKey('identification')) {
      context.handle(
          _identificationMeta,
          identification.isAcceptableOrUnknown(
              data['identification']!, _identificationMeta));
    }
    if (data.containsKey('kenteken')) {
      context.handle(_kentekenMeta,
          kenteken.isAcceptableOrUnknown(data['kenteken']!, _kentekenMeta));
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('country_code')) {
      context.handle(
          _countryCodeMeta,
          countryCode.isAcceptableOrUnknown(
              data['country_code']!, _countryCodeMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    if (data.containsKey('speed')) {
      context.handle(
          _speedMeta, speed.isAcceptableOrUnknown(data['speed']!, _speedMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('direction_text')) {
      context.handle(
          _directionTextMeta,
          directionText.isAcceptableOrUnknown(
              data['direction_text']!, _directionTextMeta));
    }
    if (data.containsKey('direction')) {
      context.handle(_directionMeta,
          direction.isAcceptableOrUnknown(data['direction']!, _directionMeta));
    }
    if (data.containsKey('status_code')) {
      context.handle(
          _statusCodeMeta,
          statusCode.isAcceptableOrUnknown(
              data['status_code']!, _statusCodeMeta));
    }
    if (data.containsKey('activity_change_time')) {
      context.handle(
          _activityChangeTimeMeta,
          activityChangeTime.isAcceptableOrUnknown(
              data['activity_change_time']!, _activityChangeTimeMeta));
    }
    if (data.containsKey('activity_name')) {
      context.handle(
          _activityNameMeta,
          activityName.isAcceptableOrUnknown(
              data['activity_name']!, _activityNameMeta));
    }
    if (data.containsKey('activity_icon')) {
      context.handle(
          _activityIconMeta,
          activityIcon.isAcceptableOrUnknown(
              data['activity_icon']!, _activityIconMeta));
    }
    if (data.containsKey('timestamp_u_t_c')) {
      context.handle(
          _timestampUTCMeta,
          timestampUTC.isAcceptableOrUnknown(
              data['timestamp_u_t_c']!, _timestampUTCMeta));
    }
    if (data.containsKey('employee_id')) {
      context.handle(
          _employeeIdMeta,
          employeeId.isAcceptableOrUnknown(
              data['employee_id']!, _employeeIdMeta));
    }
    if (data.containsKey('employee_name')) {
      context.handle(
          _employeeNameMeta,
          employeeName.isAcceptableOrUnknown(
              data['employee_name']!, _employeeNameMeta));
    }
    if (data.containsKey('employee_phone')) {
      context.handle(
          _employeePhoneMeta,
          employeePhone.isAcceptableOrUnknown(
              data['employee_phone']!, _employeePhoneMeta));
    }
    if (data.containsKey('employee_driver_card_id')) {
      context.handle(
          _employeeDriverCardIdMeta,
          employeeDriverCardId.isAcceptableOrUnknown(
              data['employee_driver_card_id']!, _employeeDriverCardIdMeta));
    }
    if (data.containsKey('trailer_name')) {
      context.handle(
          _trailerNameMeta,
          trailerName.isAcceptableOrUnknown(
              data['trailer_name']!, _trailerNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {trackedObjectId};
  @override
  Vehicle map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Vehicle(
      trackedObjectId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tracked_object_id'])!,
      identification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}identification']),
      kenteken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kenteken']),
      street: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}street']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      countryCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country_code']),
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_id'])!,
      speed: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}speed']),
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude']),
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude']),
      directionText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}direction_text']),
      direction: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}direction']),
      statusCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status_code']),
      activityChangeTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}activity_change_time']),
      activityName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}activity_name']),
      activityIcon: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}activity_icon']),
      timestampUTC: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}timestamp_u_t_c']),
      employeeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}employee_id']),
      employeeName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}employee_name']),
      employeePhone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}employee_phone']),
      employeeDriverCardId: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}employee_driver_card_id']),
      trailerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}trailer_name']),
    );
  }

  @override
  $VehiclesTable createAlias(String alias) {
    return $VehiclesTable(attachedDatabase, alias);
  }
}

class Vehicle extends DataClass implements Insertable<Vehicle> {
  final int trackedObjectId;
  final String? identification;
  final String? kenteken;
  final String? street;
  final String? city;
  final String? countryCode;
  final String deviceId;
  final double? speed;
  final double? latitude;
  final double? longitude;
  final String? directionText;
  final int? direction;
  final String? statusCode;
  final String? activityChangeTime;
  final String? activityName;
  final String? activityIcon;
  final String? timestampUTC;
  final int? employeeId;
  final String? employeeName;
  final String? employeePhone;
  final String? employeeDriverCardId;
  final String? trailerName;
  const Vehicle(
      {required this.trackedObjectId,
      this.identification,
      this.kenteken,
      this.street,
      this.city,
      this.countryCode,
      required this.deviceId,
      this.speed,
      this.latitude,
      this.longitude,
      this.directionText,
      this.direction,
      this.statusCode,
      this.activityChangeTime,
      this.activityName,
      this.activityIcon,
      this.timestampUTC,
      this.employeeId,
      this.employeeName,
      this.employeePhone,
      this.employeeDriverCardId,
      this.trailerName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['tracked_object_id'] = Variable<int>(trackedObjectId);
    if (!nullToAbsent || identification != null) {
      map['identification'] = Variable<String>(identification);
    }
    if (!nullToAbsent || kenteken != null) {
      map['kenteken'] = Variable<String>(kenteken);
    }
    if (!nullToAbsent || street != null) {
      map['street'] = Variable<String>(street);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || countryCode != null) {
      map['country_code'] = Variable<String>(countryCode);
    }
    map['device_id'] = Variable<String>(deviceId);
    if (!nullToAbsent || speed != null) {
      map['speed'] = Variable<double>(speed);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    if (!nullToAbsent || directionText != null) {
      map['direction_text'] = Variable<String>(directionText);
    }
    if (!nullToAbsent || direction != null) {
      map['direction'] = Variable<int>(direction);
    }
    if (!nullToAbsent || statusCode != null) {
      map['status_code'] = Variable<String>(statusCode);
    }
    if (!nullToAbsent || activityChangeTime != null) {
      map['activity_change_time'] = Variable<String>(activityChangeTime);
    }
    if (!nullToAbsent || activityName != null) {
      map['activity_name'] = Variable<String>(activityName);
    }
    if (!nullToAbsent || activityIcon != null) {
      map['activity_icon'] = Variable<String>(activityIcon);
    }
    if (!nullToAbsent || timestampUTC != null) {
      map['timestamp_u_t_c'] = Variable<String>(timestampUTC);
    }
    if (!nullToAbsent || employeeId != null) {
      map['employee_id'] = Variable<int>(employeeId);
    }
    if (!nullToAbsent || employeeName != null) {
      map['employee_name'] = Variable<String>(employeeName);
    }
    if (!nullToAbsent || employeePhone != null) {
      map['employee_phone'] = Variable<String>(employeePhone);
    }
    if (!nullToAbsent || employeeDriverCardId != null) {
      map['employee_driver_card_id'] = Variable<String>(employeeDriverCardId);
    }
    if (!nullToAbsent || trailerName != null) {
      map['trailer_name'] = Variable<String>(trailerName);
    }
    return map;
  }

  VehiclesCompanion toCompanion(bool nullToAbsent) {
    return VehiclesCompanion(
      trackedObjectId: Value(trackedObjectId),
      identification: identification == null && nullToAbsent
          ? const Value.absent()
          : Value(identification),
      kenteken: kenteken == null && nullToAbsent
          ? const Value.absent()
          : Value(kenteken),
      street:
          street == null && nullToAbsent ? const Value.absent() : Value(street),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      countryCode: countryCode == null && nullToAbsent
          ? const Value.absent()
          : Value(countryCode),
      deviceId: Value(deviceId),
      speed:
          speed == null && nullToAbsent ? const Value.absent() : Value(speed),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      directionText: directionText == null && nullToAbsent
          ? const Value.absent()
          : Value(directionText),
      direction: direction == null && nullToAbsent
          ? const Value.absent()
          : Value(direction),
      statusCode: statusCode == null && nullToAbsent
          ? const Value.absent()
          : Value(statusCode),
      activityChangeTime: activityChangeTime == null && nullToAbsent
          ? const Value.absent()
          : Value(activityChangeTime),
      activityName: activityName == null && nullToAbsent
          ? const Value.absent()
          : Value(activityName),
      activityIcon: activityIcon == null && nullToAbsent
          ? const Value.absent()
          : Value(activityIcon),
      timestampUTC: timestampUTC == null && nullToAbsent
          ? const Value.absent()
          : Value(timestampUTC),
      employeeId: employeeId == null && nullToAbsent
          ? const Value.absent()
          : Value(employeeId),
      employeeName: employeeName == null && nullToAbsent
          ? const Value.absent()
          : Value(employeeName),
      employeePhone: employeePhone == null && nullToAbsent
          ? const Value.absent()
          : Value(employeePhone),
      employeeDriverCardId: employeeDriverCardId == null && nullToAbsent
          ? const Value.absent()
          : Value(employeeDriverCardId),
      trailerName: trailerName == null && nullToAbsent
          ? const Value.absent()
          : Value(trailerName),
    );
  }

  factory Vehicle.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Vehicle(
      trackedObjectId: serializer.fromJson<int>(json['TrackedObjectId']),
      identification: serializer.fromJson<String?>(json['Identification']),
      kenteken: serializer.fromJson<String?>(json['Kenteken']),
      street: serializer.fromJson<String?>(json['Street']),
      city: serializer.fromJson<String?>(json['City']),
      countryCode: serializer.fromJson<String?>(json['CountryCode']),
      deviceId: serializer.fromJson<String>(json['DeviceId']),
      speed: serializer.fromJson<double?>(json['Speed']),
      latitude: serializer.fromJson<double?>(json['Latitude']),
      longitude: serializer.fromJson<double?>(json['Longitude']),
      directionText: serializer.fromJson<String?>(json['DirectionText']),
      direction: serializer.fromJson<int?>(json['Direction']),
      statusCode: serializer.fromJson<String?>(json['StatusCode']),
      activityChangeTime:
          serializer.fromJson<String?>(json['ActivityChangetime']),
      activityName: serializer.fromJson<String?>(json['ActivityName']),
      activityIcon: serializer.fromJson<String?>(json['ActivityIcon']),
      timestampUTC: serializer.fromJson<String?>(json['TimestampUTC']),
      employeeId: serializer.fromJson<int?>(json['EmployeeId']),
      employeeName: serializer.fromJson<String?>(json['EmployeeName']),
      employeePhone: serializer.fromJson<String?>(json['EmployeePhone']),
      employeeDriverCardId:
          serializer.fromJson<String?>(json['EmployeeDriverCardId']),
      trailerName: serializer.fromJson<String?>(json['TrailerName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'TrackedObjectId': serializer.toJson<int>(trackedObjectId),
      'Identification': serializer.toJson<String?>(identification),
      'Kenteken': serializer.toJson<String?>(kenteken),
      'Street': serializer.toJson<String?>(street),
      'City': serializer.toJson<String?>(city),
      'CountryCode': serializer.toJson<String?>(countryCode),
      'DeviceId': serializer.toJson<String>(deviceId),
      'Speed': serializer.toJson<double?>(speed),
      'Latitude': serializer.toJson<double?>(latitude),
      'Longitude': serializer.toJson<double?>(longitude),
      'DirectionText': serializer.toJson<String?>(directionText),
      'Direction': serializer.toJson<int?>(direction),
      'StatusCode': serializer.toJson<String?>(statusCode),
      'ActivityChangetime': serializer.toJson<String?>(activityChangeTime),
      'ActivityName': serializer.toJson<String?>(activityName),
      'ActivityIcon': serializer.toJson<String?>(activityIcon),
      'TimestampUTC': serializer.toJson<String?>(timestampUTC),
      'EmployeeId': serializer.toJson<int?>(employeeId),
      'EmployeeName': serializer.toJson<String?>(employeeName),
      'EmployeePhone': serializer.toJson<String?>(employeePhone),
      'EmployeeDriverCardId': serializer.toJson<String?>(employeeDriverCardId),
      'TrailerName': serializer.toJson<String?>(trailerName),
    };
  }

  Vehicle copyWith(
          {int? trackedObjectId,
          Value<String?> identification = const Value.absent(),
          Value<String?> kenteken = const Value.absent(),
          Value<String?> street = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> countryCode = const Value.absent(),
          String? deviceId,
          Value<double?> speed = const Value.absent(),
          Value<double?> latitude = const Value.absent(),
          Value<double?> longitude = const Value.absent(),
          Value<String?> directionText = const Value.absent(),
          Value<int?> direction = const Value.absent(),
          Value<String?> statusCode = const Value.absent(),
          Value<String?> activityChangeTime = const Value.absent(),
          Value<String?> activityName = const Value.absent(),
          Value<String?> activityIcon = const Value.absent(),
          Value<String?> timestampUTC = const Value.absent(),
          Value<int?> employeeId = const Value.absent(),
          Value<String?> employeeName = const Value.absent(),
          Value<String?> employeePhone = const Value.absent(),
          Value<String?> employeeDriverCardId = const Value.absent(),
          Value<String?> trailerName = const Value.absent()}) =>
      Vehicle(
        trackedObjectId: trackedObjectId ?? this.trackedObjectId,
        identification:
            identification.present ? identification.value : this.identification,
        kenteken: kenteken.present ? kenteken.value : this.kenteken,
        street: street.present ? street.value : this.street,
        city: city.present ? city.value : this.city,
        countryCode: countryCode.present ? countryCode.value : this.countryCode,
        deviceId: deviceId ?? this.deviceId,
        speed: speed.present ? speed.value : this.speed,
        latitude: latitude.present ? latitude.value : this.latitude,
        longitude: longitude.present ? longitude.value : this.longitude,
        directionText:
            directionText.present ? directionText.value : this.directionText,
        direction: direction.present ? direction.value : this.direction,
        statusCode: statusCode.present ? statusCode.value : this.statusCode,
        activityChangeTime: activityChangeTime.present
            ? activityChangeTime.value
            : this.activityChangeTime,
        activityName:
            activityName.present ? activityName.value : this.activityName,
        activityIcon:
            activityIcon.present ? activityIcon.value : this.activityIcon,
        timestampUTC:
            timestampUTC.present ? timestampUTC.value : this.timestampUTC,
        employeeId: employeeId.present ? employeeId.value : this.employeeId,
        employeeName:
            employeeName.present ? employeeName.value : this.employeeName,
        employeePhone:
            employeePhone.present ? employeePhone.value : this.employeePhone,
        employeeDriverCardId: employeeDriverCardId.present
            ? employeeDriverCardId.value
            : this.employeeDriverCardId,
        trailerName: trailerName.present ? trailerName.value : this.trailerName,
      );
  @override
  String toString() {
    return (StringBuffer('Vehicle(')
          ..write('trackedObjectId: $trackedObjectId, ')
          ..write('identification: $identification, ')
          ..write('kenteken: $kenteken, ')
          ..write('street: $street, ')
          ..write('city: $city, ')
          ..write('countryCode: $countryCode, ')
          ..write('deviceId: $deviceId, ')
          ..write('speed: $speed, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('directionText: $directionText, ')
          ..write('direction: $direction, ')
          ..write('statusCode: $statusCode, ')
          ..write('activityChangeTime: $activityChangeTime, ')
          ..write('activityName: $activityName, ')
          ..write('activityIcon: $activityIcon, ')
          ..write('timestampUTC: $timestampUTC, ')
          ..write('employeeId: $employeeId, ')
          ..write('employeeName: $employeeName, ')
          ..write('employeePhone: $employeePhone, ')
          ..write('employeeDriverCardId: $employeeDriverCardId, ')
          ..write('trailerName: $trailerName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        trackedObjectId,
        identification,
        kenteken,
        street,
        city,
        countryCode,
        deviceId,
        speed,
        latitude,
        longitude,
        directionText,
        direction,
        statusCode,
        activityChangeTime,
        activityName,
        activityIcon,
        timestampUTC,
        employeeId,
        employeeName,
        employeePhone,
        employeeDriverCardId,
        trailerName
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Vehicle &&
          other.trackedObjectId == this.trackedObjectId &&
          other.identification == this.identification &&
          other.kenteken == this.kenteken &&
          other.street == this.street &&
          other.city == this.city &&
          other.countryCode == this.countryCode &&
          other.deviceId == this.deviceId &&
          other.speed == this.speed &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.directionText == this.directionText &&
          other.direction == this.direction &&
          other.statusCode == this.statusCode &&
          other.activityChangeTime == this.activityChangeTime &&
          other.activityName == this.activityName &&
          other.activityIcon == this.activityIcon &&
          other.timestampUTC == this.timestampUTC &&
          other.employeeId == this.employeeId &&
          other.employeeName == this.employeeName &&
          other.employeePhone == this.employeePhone &&
          other.employeeDriverCardId == this.employeeDriverCardId &&
          other.trailerName == this.trailerName);
}

class VehiclesCompanion extends UpdateCompanion<Vehicle> {
  final Value<int> trackedObjectId;
  final Value<String?> identification;
  final Value<String?> kenteken;
  final Value<String?> street;
  final Value<String?> city;
  final Value<String?> countryCode;
  final Value<String> deviceId;
  final Value<double?> speed;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<String?> directionText;
  final Value<int?> direction;
  final Value<String?> statusCode;
  final Value<String?> activityChangeTime;
  final Value<String?> activityName;
  final Value<String?> activityIcon;
  final Value<String?> timestampUTC;
  final Value<int?> employeeId;
  final Value<String?> employeeName;
  final Value<String?> employeePhone;
  final Value<String?> employeeDriverCardId;
  final Value<String?> trailerName;
  const VehiclesCompanion({
    this.trackedObjectId = const Value.absent(),
    this.identification = const Value.absent(),
    this.kenteken = const Value.absent(),
    this.street = const Value.absent(),
    this.city = const Value.absent(),
    this.countryCode = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.speed = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.directionText = const Value.absent(),
    this.direction = const Value.absent(),
    this.statusCode = const Value.absent(),
    this.activityChangeTime = const Value.absent(),
    this.activityName = const Value.absent(),
    this.activityIcon = const Value.absent(),
    this.timestampUTC = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.employeeName = const Value.absent(),
    this.employeePhone = const Value.absent(),
    this.employeeDriverCardId = const Value.absent(),
    this.trailerName = const Value.absent(),
  });
  VehiclesCompanion.insert({
    this.trackedObjectId = const Value.absent(),
    this.identification = const Value.absent(),
    this.kenteken = const Value.absent(),
    this.street = const Value.absent(),
    this.city = const Value.absent(),
    this.countryCode = const Value.absent(),
    required String deviceId,
    this.speed = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.directionText = const Value.absent(),
    this.direction = const Value.absent(),
    this.statusCode = const Value.absent(),
    this.activityChangeTime = const Value.absent(),
    this.activityName = const Value.absent(),
    this.activityIcon = const Value.absent(),
    this.timestampUTC = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.employeeName = const Value.absent(),
    this.employeePhone = const Value.absent(),
    this.employeeDriverCardId = const Value.absent(),
    this.trailerName = const Value.absent(),
  }) : deviceId = Value(deviceId);
  static Insertable<Vehicle> custom({
    Expression<int>? trackedObjectId,
    Expression<String>? identification,
    Expression<String>? kenteken,
    Expression<String>? street,
    Expression<String>? city,
    Expression<String>? countryCode,
    Expression<String>? deviceId,
    Expression<double>? speed,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<String>? directionText,
    Expression<int>? direction,
    Expression<String>? statusCode,
    Expression<String>? activityChangeTime,
    Expression<String>? activityName,
    Expression<String>? activityIcon,
    Expression<String>? timestampUTC,
    Expression<int>? employeeId,
    Expression<String>? employeeName,
    Expression<String>? employeePhone,
    Expression<String>? employeeDriverCardId,
    Expression<String>? trailerName,
  }) {
    return RawValuesInsertable({
      if (trackedObjectId != null) 'tracked_object_id': trackedObjectId,
      if (identification != null) 'identification': identification,
      if (kenteken != null) 'kenteken': kenteken,
      if (street != null) 'street': street,
      if (city != null) 'city': city,
      if (countryCode != null) 'country_code': countryCode,
      if (deviceId != null) 'device_id': deviceId,
      if (speed != null) 'speed': speed,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (directionText != null) 'direction_text': directionText,
      if (direction != null) 'direction': direction,
      if (statusCode != null) 'status_code': statusCode,
      if (activityChangeTime != null)
        'activity_change_time': activityChangeTime,
      if (activityName != null) 'activity_name': activityName,
      if (activityIcon != null) 'activity_icon': activityIcon,
      if (timestampUTC != null) 'timestamp_u_t_c': timestampUTC,
      if (employeeId != null) 'employee_id': employeeId,
      if (employeeName != null) 'employee_name': employeeName,
      if (employeePhone != null) 'employee_phone': employeePhone,
      if (employeeDriverCardId != null)
        'employee_driver_card_id': employeeDriverCardId,
      if (trailerName != null) 'trailer_name': trailerName,
    });
  }

  VehiclesCompanion copyWith(
      {Value<int>? trackedObjectId,
      Value<String?>? identification,
      Value<String?>? kenteken,
      Value<String?>? street,
      Value<String?>? city,
      Value<String?>? countryCode,
      Value<String>? deviceId,
      Value<double?>? speed,
      Value<double?>? latitude,
      Value<double?>? longitude,
      Value<String?>? directionText,
      Value<int?>? direction,
      Value<String?>? statusCode,
      Value<String?>? activityChangeTime,
      Value<String?>? activityName,
      Value<String?>? activityIcon,
      Value<String?>? timestampUTC,
      Value<int?>? employeeId,
      Value<String?>? employeeName,
      Value<String?>? employeePhone,
      Value<String?>? employeeDriverCardId,
      Value<String?>? trailerName}) {
    return VehiclesCompanion(
      trackedObjectId: trackedObjectId ?? this.trackedObjectId,
      identification: identification ?? this.identification,
      kenteken: kenteken ?? this.kenteken,
      street: street ?? this.street,
      city: city ?? this.city,
      countryCode: countryCode ?? this.countryCode,
      deviceId: deviceId ?? this.deviceId,
      speed: speed ?? this.speed,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      directionText: directionText ?? this.directionText,
      direction: direction ?? this.direction,
      statusCode: statusCode ?? this.statusCode,
      activityChangeTime: activityChangeTime ?? this.activityChangeTime,
      activityName: activityName ?? this.activityName,
      activityIcon: activityIcon ?? this.activityIcon,
      timestampUTC: timestampUTC ?? this.timestampUTC,
      employeeId: employeeId ?? this.employeeId,
      employeeName: employeeName ?? this.employeeName,
      employeePhone: employeePhone ?? this.employeePhone,
      employeeDriverCardId: employeeDriverCardId ?? this.employeeDriverCardId,
      trailerName: trailerName ?? this.trailerName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (trackedObjectId.present) {
      map['tracked_object_id'] = Variable<int>(trackedObjectId.value);
    }
    if (identification.present) {
      map['identification'] = Variable<String>(identification.value);
    }
    if (kenteken.present) {
      map['kenteken'] = Variable<String>(kenteken.value);
    }
    if (street.present) {
      map['street'] = Variable<String>(street.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (countryCode.present) {
      map['country_code'] = Variable<String>(countryCode.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (speed.present) {
      map['speed'] = Variable<double>(speed.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (directionText.present) {
      map['direction_text'] = Variable<String>(directionText.value);
    }
    if (direction.present) {
      map['direction'] = Variable<int>(direction.value);
    }
    if (statusCode.present) {
      map['status_code'] = Variable<String>(statusCode.value);
    }
    if (activityChangeTime.present) {
      map['activity_change_time'] = Variable<String>(activityChangeTime.value);
    }
    if (activityName.present) {
      map['activity_name'] = Variable<String>(activityName.value);
    }
    if (activityIcon.present) {
      map['activity_icon'] = Variable<String>(activityIcon.value);
    }
    if (timestampUTC.present) {
      map['timestamp_u_t_c'] = Variable<String>(timestampUTC.value);
    }
    if (employeeId.present) {
      map['employee_id'] = Variable<int>(employeeId.value);
    }
    if (employeeName.present) {
      map['employee_name'] = Variable<String>(employeeName.value);
    }
    if (employeePhone.present) {
      map['employee_phone'] = Variable<String>(employeePhone.value);
    }
    if (employeeDriverCardId.present) {
      map['employee_driver_card_id'] =
          Variable<String>(employeeDriverCardId.value);
    }
    if (trailerName.present) {
      map['trailer_name'] = Variable<String>(trailerName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VehiclesCompanion(')
          ..write('trackedObjectId: $trackedObjectId, ')
          ..write('identification: $identification, ')
          ..write('kenteken: $kenteken, ')
          ..write('street: $street, ')
          ..write('city: $city, ')
          ..write('countryCode: $countryCode, ')
          ..write('deviceId: $deviceId, ')
          ..write('speed: $speed, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('directionText: $directionText, ')
          ..write('direction: $direction, ')
          ..write('statusCode: $statusCode, ')
          ..write('activityChangeTime: $activityChangeTime, ')
          ..write('activityName: $activityName, ')
          ..write('activityIcon: $activityIcon, ')
          ..write('timestampUTC: $timestampUTC, ')
          ..write('employeeId: $employeeId, ')
          ..write('employeeName: $employeeName, ')
          ..write('employeePhone: $employeePhone, ')
          ..write('employeeDriverCardId: $employeeDriverCardId, ')
          ..write('trailerName: $trailerName')
          ..write(')'))
        .toString();
  }
}

class $MessagesTable extends Messages with TableInfo<$MessagesTable, Message> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MessagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _mobileIdMeta =
      const VerificationMeta('mobileId');
  @override
  late final GeneratedColumn<String> mobileId = GeneratedColumn<String>(
      'mobile_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _identificationMeta =
      const VerificationMeta('identification');
  @override
  late final GeneratedColumn<String> identification = GeneratedColumn<String>(
      'identification', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _messageMeta =
      const VerificationMeta('message');
  @override
  late final GeneratedColumn<String> message = GeneratedColumn<String>(
      'message', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusTimeMeta =
      const VerificationMeta('statusTime');
  @override
  late final GeneratedColumn<DateTime> statusTime = GeneratedColumn<DateTime>(
      'status_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _companyIdMeta =
      const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
      'company_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _employeeIdMeta =
      const VerificationMeta('employeeId');
  @override
  late final GeneratedColumn<int> employeeId = GeneratedColumn<int>(
      'employee_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _employeeNameMeta =
      const VerificationMeta('employeeName');
  @override
  late final GeneratedColumn<String> employeeName = GeneratedColumn<String>(
      'employee_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _driverIdMeta =
      const VerificationMeta('driverId');
  @override
  late final GeneratedColumn<String> driverId = GeneratedColumn<String>(
      'driver_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _needReplyMeta =
      const VerificationMeta('needReply');
  @override
  late final GeneratedColumn<bool> needReply =
      GeneratedColumn<bool>('need_reply', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("need_reply" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }),
          defaultValue: const Constant(false));
  static const VerificationMeta _messageTimestampMeta =
      const VerificationMeta('messageTimestamp');
  @override
  late final GeneratedColumn<DateTime> messageTimestamp =
      GeneratedColumn<DateTime>('message_timestamp', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _partitionKeyMeta =
      const VerificationMeta('partitionKey');
  @override
  late final GeneratedColumn<String> partitionKey = GeneratedColumn<String>(
      'partition_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _rowKeyMeta = const VerificationMeta('rowKey');
  @override
  late final GeneratedColumn<String> rowKey = GeneratedColumn<String>(
      'row_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        mobileId,
        identification,
        message,
        status,
        statusTime,
        createdAt,
        companyId,
        userId,
        userName,
        employeeId,
        employeeName,
        driverId,
        needReply,
        messageTimestamp,
        partitionKey,
        rowKey
      ];
  @override
  String get aliasedName => _alias ?? 'messages';
  @override
  String get actualTableName => 'messages';
  @override
  VerificationContext validateIntegrity(Insertable<Message> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('mobile_id')) {
      context.handle(_mobileIdMeta,
          mobileId.isAcceptableOrUnknown(data['mobile_id']!, _mobileIdMeta));
    } else if (isInserting) {
      context.missing(_mobileIdMeta);
    }
    if (data.containsKey('identification')) {
      context.handle(
          _identificationMeta,
          identification.isAcceptableOrUnknown(
              data['identification']!, _identificationMeta));
    } else if (isInserting) {
      context.missing(_identificationMeta);
    }
    if (data.containsKey('message')) {
      context.handle(_messageMeta,
          message.isAcceptableOrUnknown(data['message']!, _messageMeta));
    } else if (isInserting) {
      context.missing(_messageMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('status_time')) {
      context.handle(
          _statusTimeMeta,
          statusTime.isAcceptableOrUnknown(
              data['status_time']!, _statusTimeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('company_id')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    }
    if (data.containsKey('employee_id')) {
      context.handle(
          _employeeIdMeta,
          employeeId.isAcceptableOrUnknown(
              data['employee_id']!, _employeeIdMeta));
    }
    if (data.containsKey('employee_name')) {
      context.handle(
          _employeeNameMeta,
          employeeName.isAcceptableOrUnknown(
              data['employee_name']!, _employeeNameMeta));
    }
    if (data.containsKey('driver_id')) {
      context.handle(_driverIdMeta,
          driverId.isAcceptableOrUnknown(data['driver_id']!, _driverIdMeta));
    }
    if (data.containsKey('need_reply')) {
      context.handle(_needReplyMeta,
          needReply.isAcceptableOrUnknown(data['need_reply']!, _needReplyMeta));
    }
    if (data.containsKey('message_timestamp')) {
      context.handle(
          _messageTimestampMeta,
          messageTimestamp.isAcceptableOrUnknown(
              data['message_timestamp']!, _messageTimestampMeta));
    }
    if (data.containsKey('partition_key')) {
      context.handle(
          _partitionKeyMeta,
          partitionKey.isAcceptableOrUnknown(
              data['partition_key']!, _partitionKeyMeta));
    } else if (isInserting) {
      context.missing(_partitionKeyMeta);
    }
    if (data.containsKey('row_key')) {
      context.handle(_rowKeyMeta,
          rowKey.isAcceptableOrUnknown(data['row_key']!, _rowKeyMeta));
    } else if (isInserting) {
      context.missing(_rowKeyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Message map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Message(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      mobileId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile_id'])!,
      identification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}identification'])!,
      message: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}message'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      statusTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}status_time']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
      companyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}company_id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name']),
      employeeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}employee_id']),
      employeeName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}employee_name']),
      driverId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}driver_id']),
      needReply: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}need_reply'])!,
      messageTimestamp: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}message_timestamp']),
      partitionKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}partition_key'])!,
      rowKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}row_key'])!,
    );
  }

  @override
  $MessagesTable createAlias(String alias) {
    return $MessagesTable(attachedDatabase, alias);
  }
}

class Message extends DataClass implements Insertable<Message> {
  final int id;
  final String mobileId;
  final String identification;
  final String message;
  final String status;
  final DateTime? statusTime;
  final DateTime? createdAt;
  final int companyId;
  final int userId;
  final String? userName;
  final int? employeeId;
  final String? employeeName;
  final String? driverId;
  final bool needReply;
  final DateTime? messageTimestamp;
  final String partitionKey;
  final String rowKey;
  const Message(
      {required this.id,
      required this.mobileId,
      required this.identification,
      required this.message,
      required this.status,
      this.statusTime,
      this.createdAt,
      required this.companyId,
      required this.userId,
      this.userName,
      this.employeeId,
      this.employeeName,
      this.driverId,
      required this.needReply,
      this.messageTimestamp,
      required this.partitionKey,
      required this.rowKey});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['mobile_id'] = Variable<String>(mobileId);
    map['identification'] = Variable<String>(identification);
    map['message'] = Variable<String>(message);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || statusTime != null) {
      map['status_time'] = Variable<DateTime>(statusTime);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    map['company_id'] = Variable<int>(companyId);
    map['user_id'] = Variable<int>(userId);
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String>(userName);
    }
    if (!nullToAbsent || employeeId != null) {
      map['employee_id'] = Variable<int>(employeeId);
    }
    if (!nullToAbsent || employeeName != null) {
      map['employee_name'] = Variable<String>(employeeName);
    }
    if (!nullToAbsent || driverId != null) {
      map['driver_id'] = Variable<String>(driverId);
    }
    map['need_reply'] = Variable<bool>(needReply);
    if (!nullToAbsent || messageTimestamp != null) {
      map['message_timestamp'] = Variable<DateTime>(messageTimestamp);
    }
    map['partition_key'] = Variable<String>(partitionKey);
    map['row_key'] = Variable<String>(rowKey);
    return map;
  }

  MessagesCompanion toCompanion(bool nullToAbsent) {
    return MessagesCompanion(
      id: Value(id),
      mobileId: Value(mobileId),
      identification: Value(identification),
      message: Value(message),
      status: Value(status),
      statusTime: statusTime == null && nullToAbsent
          ? const Value.absent()
          : Value(statusTime),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      companyId: Value(companyId),
      userId: Value(userId),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
      employeeId: employeeId == null && nullToAbsent
          ? const Value.absent()
          : Value(employeeId),
      employeeName: employeeName == null && nullToAbsent
          ? const Value.absent()
          : Value(employeeName),
      driverId: driverId == null && nullToAbsent
          ? const Value.absent()
          : Value(driverId),
      needReply: Value(needReply),
      messageTimestamp: messageTimestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(messageTimestamp),
      partitionKey: Value(partitionKey),
      rowKey: Value(rowKey),
    );
  }

  factory Message.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Message(
      id: serializer.fromJson<int>(json['InstantMessageId']),
      mobileId: serializer.fromJson<String>(json['MobileIdNr']),
      identification: serializer.fromJson<String>(json['Identification']),
      message: serializer.fromJson<String>(json['MessageText']),
      status: serializer.fromJson<String>(json['MessageStatus']),
      statusTime:
          serializer.fromJson<DateTime?>(json['MessageStatusChangeTime']),
      createdAt: serializer.fromJson<DateTime?>(json['CreatTime']),
      companyId: serializer.fromJson<int>(json['CompanyId']),
      userId: serializer.fromJson<int>(json['UserId']),
      userName: serializer.fromJson<String?>(json['UserName']),
      employeeId: serializer.fromJson<int?>(json['EmployeeId']),
      employeeName: serializer.fromJson<String?>(json['EmployeeName']),
      driverId: serializer.fromJson<String?>(json['DriverId']),
      needReply: serializer.fromJson<bool>(json['NeedReply']),
      messageTimestamp:
          serializer.fromJson<DateTime?>(json['MessageTimeStamp']),
      partitionKey: serializer.fromJson<String>(json['PartitionKey']),
      rowKey: serializer.fromJson<String>(json['RowKey']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'InstantMessageId': serializer.toJson<int>(id),
      'MobileIdNr': serializer.toJson<String>(mobileId),
      'Identification': serializer.toJson<String>(identification),
      'MessageText': serializer.toJson<String>(message),
      'MessageStatus': serializer.toJson<String>(status),
      'MessageStatusChangeTime': serializer.toJson<DateTime?>(statusTime),
      'CreatTime': serializer.toJson<DateTime?>(createdAt),
      'CompanyId': serializer.toJson<int>(companyId),
      'UserId': serializer.toJson<int>(userId),
      'UserName': serializer.toJson<String?>(userName),
      'EmployeeId': serializer.toJson<int?>(employeeId),
      'EmployeeName': serializer.toJson<String?>(employeeName),
      'DriverId': serializer.toJson<String?>(driverId),
      'NeedReply': serializer.toJson<bool>(needReply),
      'MessageTimeStamp': serializer.toJson<DateTime?>(messageTimestamp),
      'PartitionKey': serializer.toJson<String>(partitionKey),
      'RowKey': serializer.toJson<String>(rowKey),
    };
  }

  Message copyWith(
          {int? id,
          String? mobileId,
          String? identification,
          String? message,
          String? status,
          Value<DateTime?> statusTime = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent(),
          int? companyId,
          int? userId,
          Value<String?> userName = const Value.absent(),
          Value<int?> employeeId = const Value.absent(),
          Value<String?> employeeName = const Value.absent(),
          Value<String?> driverId = const Value.absent(),
          bool? needReply,
          Value<DateTime?> messageTimestamp = const Value.absent(),
          String? partitionKey,
          String? rowKey}) =>
      Message(
        id: id ?? this.id,
        mobileId: mobileId ?? this.mobileId,
        identification: identification ?? this.identification,
        message: message ?? this.message,
        status: status ?? this.status,
        statusTime: statusTime.present ? statusTime.value : this.statusTime,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        companyId: companyId ?? this.companyId,
        userId: userId ?? this.userId,
        userName: userName.present ? userName.value : this.userName,
        employeeId: employeeId.present ? employeeId.value : this.employeeId,
        employeeName:
            employeeName.present ? employeeName.value : this.employeeName,
        driverId: driverId.present ? driverId.value : this.driverId,
        needReply: needReply ?? this.needReply,
        messageTimestamp: messageTimestamp.present
            ? messageTimestamp.value
            : this.messageTimestamp,
        partitionKey: partitionKey ?? this.partitionKey,
        rowKey: rowKey ?? this.rowKey,
      );
  @override
  String toString() {
    return (StringBuffer('Message(')
          ..write('id: $id, ')
          ..write('mobileId: $mobileId, ')
          ..write('identification: $identification, ')
          ..write('message: $message, ')
          ..write('status: $status, ')
          ..write('statusTime: $statusTime, ')
          ..write('createdAt: $createdAt, ')
          ..write('companyId: $companyId, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('employeeId: $employeeId, ')
          ..write('employeeName: $employeeName, ')
          ..write('driverId: $driverId, ')
          ..write('needReply: $needReply, ')
          ..write('messageTimestamp: $messageTimestamp, ')
          ..write('partitionKey: $partitionKey, ')
          ..write('rowKey: $rowKey')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      mobileId,
      identification,
      message,
      status,
      statusTime,
      createdAt,
      companyId,
      userId,
      userName,
      employeeId,
      employeeName,
      driverId,
      needReply,
      messageTimestamp,
      partitionKey,
      rowKey);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Message &&
          other.id == this.id &&
          other.mobileId == this.mobileId &&
          other.identification == this.identification &&
          other.message == this.message &&
          other.status == this.status &&
          other.statusTime == this.statusTime &&
          other.createdAt == this.createdAt &&
          other.companyId == this.companyId &&
          other.userId == this.userId &&
          other.userName == this.userName &&
          other.employeeId == this.employeeId &&
          other.employeeName == this.employeeName &&
          other.driverId == this.driverId &&
          other.needReply == this.needReply &&
          other.messageTimestamp == this.messageTimestamp &&
          other.partitionKey == this.partitionKey &&
          other.rowKey == this.rowKey);
}

class MessagesCompanion extends UpdateCompanion<Message> {
  final Value<int> id;
  final Value<String> mobileId;
  final Value<String> identification;
  final Value<String> message;
  final Value<String> status;
  final Value<DateTime?> statusTime;
  final Value<DateTime?> createdAt;
  final Value<int> companyId;
  final Value<int> userId;
  final Value<String?> userName;
  final Value<int?> employeeId;
  final Value<String?> employeeName;
  final Value<String?> driverId;
  final Value<bool> needReply;
  final Value<DateTime?> messageTimestamp;
  final Value<String> partitionKey;
  final Value<String> rowKey;
  const MessagesCompanion({
    this.id = const Value.absent(),
    this.mobileId = const Value.absent(),
    this.identification = const Value.absent(),
    this.message = const Value.absent(),
    this.status = const Value.absent(),
    this.statusTime = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.companyId = const Value.absent(),
    this.userId = const Value.absent(),
    this.userName = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.employeeName = const Value.absent(),
    this.driverId = const Value.absent(),
    this.needReply = const Value.absent(),
    this.messageTimestamp = const Value.absent(),
    this.partitionKey = const Value.absent(),
    this.rowKey = const Value.absent(),
  });
  MessagesCompanion.insert({
    this.id = const Value.absent(),
    required String mobileId,
    required String identification,
    required String message,
    required String status,
    this.statusTime = const Value.absent(),
    this.createdAt = const Value.absent(),
    required int companyId,
    required int userId,
    this.userName = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.employeeName = const Value.absent(),
    this.driverId = const Value.absent(),
    this.needReply = const Value.absent(),
    this.messageTimestamp = const Value.absent(),
    required String partitionKey,
    required String rowKey,
  })  : mobileId = Value(mobileId),
        identification = Value(identification),
        message = Value(message),
        status = Value(status),
        companyId = Value(companyId),
        userId = Value(userId),
        partitionKey = Value(partitionKey),
        rowKey = Value(rowKey);
  static Insertable<Message> custom({
    Expression<int>? id,
    Expression<String>? mobileId,
    Expression<String>? identification,
    Expression<String>? message,
    Expression<String>? status,
    Expression<DateTime>? statusTime,
    Expression<DateTime>? createdAt,
    Expression<int>? companyId,
    Expression<int>? userId,
    Expression<String>? userName,
    Expression<int>? employeeId,
    Expression<String>? employeeName,
    Expression<String>? driverId,
    Expression<bool>? needReply,
    Expression<DateTime>? messageTimestamp,
    Expression<String>? partitionKey,
    Expression<String>? rowKey,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (mobileId != null) 'mobile_id': mobileId,
      if (identification != null) 'identification': identification,
      if (message != null) 'message': message,
      if (status != null) 'status': status,
      if (statusTime != null) 'status_time': statusTime,
      if (createdAt != null) 'created_at': createdAt,
      if (companyId != null) 'company_id': companyId,
      if (userId != null) 'user_id': userId,
      if (userName != null) 'user_name': userName,
      if (employeeId != null) 'employee_id': employeeId,
      if (employeeName != null) 'employee_name': employeeName,
      if (driverId != null) 'driver_id': driverId,
      if (needReply != null) 'need_reply': needReply,
      if (messageTimestamp != null) 'message_timestamp': messageTimestamp,
      if (partitionKey != null) 'partition_key': partitionKey,
      if (rowKey != null) 'row_key': rowKey,
    });
  }

  MessagesCompanion copyWith(
      {Value<int>? id,
      Value<String>? mobileId,
      Value<String>? identification,
      Value<String>? message,
      Value<String>? status,
      Value<DateTime?>? statusTime,
      Value<DateTime?>? createdAt,
      Value<int>? companyId,
      Value<int>? userId,
      Value<String?>? userName,
      Value<int?>? employeeId,
      Value<String?>? employeeName,
      Value<String?>? driverId,
      Value<bool>? needReply,
      Value<DateTime?>? messageTimestamp,
      Value<String>? partitionKey,
      Value<String>? rowKey}) {
    return MessagesCompanion(
      id: id ?? this.id,
      mobileId: mobileId ?? this.mobileId,
      identification: identification ?? this.identification,
      message: message ?? this.message,
      status: status ?? this.status,
      statusTime: statusTime ?? this.statusTime,
      createdAt: createdAt ?? this.createdAt,
      companyId: companyId ?? this.companyId,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      employeeId: employeeId ?? this.employeeId,
      employeeName: employeeName ?? this.employeeName,
      driverId: driverId ?? this.driverId,
      needReply: needReply ?? this.needReply,
      messageTimestamp: messageTimestamp ?? this.messageTimestamp,
      partitionKey: partitionKey ?? this.partitionKey,
      rowKey: rowKey ?? this.rowKey,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (mobileId.present) {
      map['mobile_id'] = Variable<String>(mobileId.value);
    }
    if (identification.present) {
      map['identification'] = Variable<String>(identification.value);
    }
    if (message.present) {
      map['message'] = Variable<String>(message.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (statusTime.present) {
      map['status_time'] = Variable<DateTime>(statusTime.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<int>(companyId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (employeeId.present) {
      map['employee_id'] = Variable<int>(employeeId.value);
    }
    if (employeeName.present) {
      map['employee_name'] = Variable<String>(employeeName.value);
    }
    if (driverId.present) {
      map['driver_id'] = Variable<String>(driverId.value);
    }
    if (needReply.present) {
      map['need_reply'] = Variable<bool>(needReply.value);
    }
    if (messageTimestamp.present) {
      map['message_timestamp'] = Variable<DateTime>(messageTimestamp.value);
    }
    if (partitionKey.present) {
      map['partition_key'] = Variable<String>(partitionKey.value);
    }
    if (rowKey.present) {
      map['row_key'] = Variable<String>(rowKey.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MessagesCompanion(')
          ..write('id: $id, ')
          ..write('mobileId: $mobileId, ')
          ..write('identification: $identification, ')
          ..write('message: $message, ')
          ..write('status: $status, ')
          ..write('statusTime: $statusTime, ')
          ..write('createdAt: $createdAt, ')
          ..write('companyId: $companyId, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('employeeId: $employeeId, ')
          ..write('employeeName: $employeeName, ')
          ..write('driverId: $driverId, ')
          ..write('needReply: $needReply, ')
          ..write('messageTimestamp: $messageTimestamp, ')
          ..write('partitionKey: $partitionKey, ')
          ..write('rowKey: $rowKey')
          ..write(')'))
        .toString();
  }
}

class $TriviaClassTable extends TriviaClass
    with TableInfo<$TriviaClassTable, Trivia> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TriviaClassTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchTermMeta =
      const VerificationMeta('searchTerm');
  @override
  late final GeneratedColumn<String> searchTerm = GeneratedColumn<String>(
      'search_term', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, searchTerm, description];
  @override
  String get aliasedName => _alias ?? 'trivia_class';
  @override
  String get actualTableName => 'trivia_class';
  @override
  VerificationContext validateIntegrity(Insertable<Trivia> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('search_term')) {
      context.handle(
          _searchTermMeta,
          searchTerm.isAcceptableOrUnknown(
              data['search_term']!, _searchTermMeta));
    } else if (isInserting) {
      context.missing(_searchTermMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Trivia map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Trivia(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      searchTerm: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_term'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $TriviaClassTable createAlias(String alias) {
    return $TriviaClassTable(attachedDatabase, alias);
  }
}

class Trivia extends DataClass implements Insertable<Trivia> {
  final String id;
  final String searchTerm;
  final String description;
  const Trivia(
      {required this.id, required this.searchTerm, required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['search_term'] = Variable<String>(searchTerm);
    map['description'] = Variable<String>(description);
    return map;
  }

  TriviaClassCompanion toCompanion(bool nullToAbsent) {
    return TriviaClassCompanion(
      id: Value(id),
      searchTerm: Value(searchTerm),
      description: Value(description),
    );
  }

  factory Trivia.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Trivia(
      id: serializer.fromJson<String>(json['Id']),
      searchTerm: serializer.fromJson<String>(json['SearchTerm']),
      description: serializer.fromJson<String>(json['Description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'Id': serializer.toJson<String>(id),
      'SearchTerm': serializer.toJson<String>(searchTerm),
      'Description': serializer.toJson<String>(description),
    };
  }

  Trivia copyWith({String? id, String? searchTerm, String? description}) =>
      Trivia(
        id: id ?? this.id,
        searchTerm: searchTerm ?? this.searchTerm,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Trivia(')
          ..write('id: $id, ')
          ..write('searchTerm: $searchTerm, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, searchTerm, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Trivia &&
          other.id == this.id &&
          other.searchTerm == this.searchTerm &&
          other.description == this.description);
}

class TriviaClassCompanion extends UpdateCompanion<Trivia> {
  final Value<String> id;
  final Value<String> searchTerm;
  final Value<String> description;
  const TriviaClassCompanion({
    this.id = const Value.absent(),
    this.searchTerm = const Value.absent(),
    this.description = const Value.absent(),
  });
  TriviaClassCompanion.insert({
    required String id,
    required String searchTerm,
    required String description,
  })  : id = Value(id),
        searchTerm = Value(searchTerm),
        description = Value(description);
  static Insertable<Trivia> custom({
    Expression<String>? id,
    Expression<String>? searchTerm,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (searchTerm != null) 'search_term': searchTerm,
      if (description != null) 'description': description,
    });
  }

  TriviaClassCompanion copyWith(
      {Value<String>? id,
      Value<String>? searchTerm,
      Value<String>? description}) {
    return TriviaClassCompanion(
      id: id ?? this.id,
      searchTerm: searchTerm ?? this.searchTerm,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (searchTerm.present) {
      map['search_term'] = Variable<String>(searchTerm.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TriviaClassCompanion(')
          ..write('id: $id, ')
          ..write('searchTerm: $searchTerm, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $VehiclesTable vehicles = $VehiclesTable(this);
  late final $MessagesTable messages = $MessagesTable(this);
  late final $TriviaClassTable triviaClass = $TriviaClassTable(this);
  late final TriviaDao triviaDao = TriviaDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [vehicles, messages, triviaClass];
}
