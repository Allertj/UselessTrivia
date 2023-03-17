import 'package:drift/drift.dart';

// assuming that your file is called filename.dart. This will give an error at
// first, but it's needed for drift to know about the generated code
part 'filename.g.dart';

@DataClassName("Message")
class Messages extends Table {
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
  @JsonKey("MessageType")
  TextColumn get messageType => text().map(const MessageTypeConverter())();
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

@DriftDatabase(tables: [Messages])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}