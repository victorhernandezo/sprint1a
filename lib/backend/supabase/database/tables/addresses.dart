import '../database.dart';

class AddressesTable extends SupabaseTable<AddressesRow> {
  @override
  String get tableName => 'addresses';

  @override
  AddressesRow createRow(Map<String, dynamic> data) => AddressesRow(data);
}

class AddressesRow extends SupabaseDataRow {
  AddressesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AddressesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get label => getField<String>('label')!;
  set label(String value) => setField<String>('label', value);

  String? get line1 => getField<String>('line1');
  set line1(String? value) => setField<String>('line1', value);

  String? get line2 => getField<String>('line2');
  set line2(String? value) => setField<String>('line2', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get postalCode => getField<String>('postal_code');
  set postalCode(String? value) => setField<String>('postal_code', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  double? get lat => getField<double>('lat');
  set lat(double? value) => setField<double>('lat', value);

  double? get lng => getField<double>('lng');
  set lng(double? value) => setField<double>('lng', value);

  bool get isDefault => getField<bool>('is_default')!;
  set isDefault(bool value) => setField<bool>('is_default', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
