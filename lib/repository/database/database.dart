import 'package:drift/drift.dart';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:useless_trivia/repository/database/trivia_dao.dart';

part 'database.g.dart';

@DataClassName("Vehicle")
class Vehicles extends Table {
  @JsonKey("TrackedObjectId")
  IntColumn get trackedObjectId => integer()();
  @JsonKey("Identification")
  TextColumn get identification => text().nullable()();
  @JsonKey("Kenteken")
  TextColumn get kenteken => text().nullable()();
  @JsonKey("Street")
  TextColumn get street => text().nullable()();
  @JsonKey("City")
  TextColumn get city => text().nullable()();
  @JsonKey("CountryCode")
  TextColumn get countryCode => text().nullable()();
  @JsonKey("DeviceId")
  TextColumn get deviceId => text()();
  @JsonKey("Speed")
  RealColumn get speed => real().nullable()();
  @JsonKey("Latitude")
  RealColumn get latitude => real().nullable()();
  @JsonKey("Longitude")
  RealColumn get longitude => real().nullable()();
  @JsonKey("DirectionText")
  TextColumn get directionText => text().nullable()();
  @JsonKey("Direction")
  IntColumn get direction => integer().nullable()();
  @JsonKey("StatusCode")
  TextColumn get statusCode => text().nullable()();
  @JsonKey("ActivityChangetime")
  TextColumn get activityChangeTime => text().nullable()();
  @JsonKey("ActivityName")
  TextColumn get activityName => text().nullable()();
  @JsonKey("ActivityIcon")
  TextColumn get activityIcon => text().nullable()();
  @JsonKey("TimestampUTC")
  TextColumn get timestampUTC => text().nullable()();
  @JsonKey("EmployeeId")
  IntColumn get employeeId => integer().nullable()();
  @JsonKey("EmployeeName")
  TextColumn get employeeName => text().nullable()();
  @JsonKey("EmployeePhone")
  TextColumn get employeePhone => text().nullable()();
  @JsonKey("EmployeeDriverCardId")
  TextColumn get employeeDriverCardId => text().nullable()();
  @JsonKey("TrailerName")
  TextColumn get trailerName => text().nullable()();

  @override
  Set<Column> get primaryKey => {trackedObjectId};
}

@DataClassName("Message")
class Messages extends Table {
  @JsonKey("InstantMessageId")
  IntColumn get id => integer()();
  @JsonKey("MobileIdNr")
  TextColumn get mobileId => text()();
  @JsonKey("Identification")
  TextColumn get identification => text()();
  @JsonKey("MessageText")
  TextColumn get message => text()();
  @JsonKey("MessageStatus")
  TextColumn get status => text()();
  @JsonKey("MessageStatusChangeTime")
  DateTimeColumn get statusTime => dateTime().nullable()();
  @JsonKey("CreatTime")
  DateTimeColumn get createdAt => dateTime().nullable()();
  // @JsonKey("MessageType")
  // TextColumn get messageType => text().map(const MessageTypeConverter())();
  @JsonKey("CompanyId")
  IntColumn get companyId => integer()();
  @JsonKey("UserId")
  IntColumn get userId => integer()();
  @JsonKey("UserName")
  TextColumn get userName => text().nullable()();
  @JsonKey("EmployeeId")
  IntColumn get employeeId => integer().nullable()();
  @JsonKey("EmployeeName")
  TextColumn get employeeName => text().nullable()();
  @JsonKey("DriverId")
  TextColumn get driverId => text().nullable()();
  @JsonKey("NeedReply")
  BoolColumn get needReply => boolean().withDefault(const Constant(false))();
  @JsonKey("MessageTimeStamp")
  DateTimeColumn get messageTimestamp => dateTime().nullable()();
  @JsonKey("PartitionKey")
  TextColumn get partitionKey => text()();
  @JsonKey("RowKey")
  TextColumn get rowKey => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName("Trivia")
class TriviaClass extends Table {
  @JsonKey("Id")
  TextColumn get id => text().nullable()();
  @JsonKey("SearchTerm")
  TextColumn get searchTerm => text().nullable()();
  @JsonKey("Description")
  TextColumn get description => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [Vehicles, Messages, TriviaClass], daos: [TriviaDao])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 4;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}