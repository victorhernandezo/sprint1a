import '../database.dart';

class DeliveryLocationsTable extends SupabaseTable<DeliveryLocationsRow> {
  @override
  String get tableName => 'delivery_locations';

  @override
  DeliveryLocationsRow createRow(Map<String, dynamic> data) =>
      DeliveryLocationsRow(data);
}

class DeliveryLocationsRow extends SupabaseDataRow {
  DeliveryLocationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DeliveryLocationsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get deliveryId => getField<String>('delivery_id')!;
  set deliveryId(String value) => setField<String>('delivery_id', value);

  DateTime get at => getField<DateTime>('at')!;
  set at(DateTime value) => setField<DateTime>('at', value);

  double get lat => getField<double>('lat')!;
  set lat(double value) => setField<double>('lat', value);

  double get lng => getField<double>('lng')!;
  set lng(double value) => setField<double>('lng', value);

  double? get speedKmh => getField<double>('speed_kmh');
  set speedKmh(double? value) => setField<double>('speed_kmh', value);
}
