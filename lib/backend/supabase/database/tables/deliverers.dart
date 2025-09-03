import '../database.dart';

class DeliverersTable extends SupabaseTable<DeliverersRow> {
  @override
  String get tableName => 'deliverers';

  @override
  DeliverersRow createRow(Map<String, dynamic> data) => DeliverersRow(data);
}

class DeliverersRow extends SupabaseDataRow {
  DeliverersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DeliverersTable();

  String get profileId => getField<String>('profile_id')!;
  set profileId(String value) => setField<String>('profile_id', value);

  String? get vehicleInfo => getField<String>('vehicle_info');
  set vehicleInfo(String? value) => setField<String>('vehicle_info', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
