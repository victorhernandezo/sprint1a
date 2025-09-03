import '../database.dart';

class DishesTable extends SupabaseTable<DishesRow> {
  @override
  String get tableName => 'dishes';

  @override
  DishesRow createRow(Map<String, dynamic> data) => DishesRow(data);
}

class DishesRow extends SupabaseDataRow {
  DishesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DishesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get chefId => getField<String>('chef_id')!;
  set chefId(String value) => setField<String>('chef_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int get priceCents => getField<int>('price_cents')!;
  set priceCents(int value) => setField<int>('price_cents', value);

  String get currency => getField<String>('currency')!;
  set currency(String value) => setField<String>('currency', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  List<String> get dietTags => getListField<String>('diet_tags');
  set dietTags(List<String>? value) => setListField<String>('diet_tags', value);

  int? get prepTimeMin => getField<int>('prep_time_min');
  set prepTimeMin(int? value) => setField<int>('prep_time_min', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
