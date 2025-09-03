import '../database.dart';

class NutritionistsTable extends SupabaseTable<NutritionistsRow> {
  @override
  String get tableName => 'nutritionists';

  @override
  NutritionistsRow createRow(Map<String, dynamic> data) =>
      NutritionistsRow(data);
}

class NutritionistsRow extends SupabaseDataRow {
  NutritionistsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NutritionistsTable();

  String get profileId => getField<String>('profile_id')!;
  set profileId(String value) => setField<String>('profile_id', value);

  String? get credentials => getField<String>('credentials');
  set credentials(String? value) => setField<String>('credentials', value);

  String? get specialty => getField<String>('specialty');
  set specialty(String? value) => setField<String>('specialty', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
