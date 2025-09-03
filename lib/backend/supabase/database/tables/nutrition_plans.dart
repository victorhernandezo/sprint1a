import '../database.dart';

class NutritionPlansTable extends SupabaseTable<NutritionPlansRow> {
  @override
  String get tableName => 'nutrition_plans';

  @override
  NutritionPlansRow createRow(Map<String, dynamic> data) =>
      NutritionPlansRow(data);
}

class NutritionPlansRow extends SupabaseDataRow {
  NutritionPlansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NutritionPlansTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nutritionistId => getField<String>('nutritionist_id')!;
  set nutritionistId(String value) =>
      setField<String>('nutritionist_id', value);

  String get customerId => getField<String>('customer_id')!;
  set customerId(String value) => setField<String>('customer_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get contentMd => getField<String>('content_md');
  set contentMd(String? value) => setField<String>('content_md', value);

  dynamic get macros => getField<dynamic>('macros');
  set macros(dynamic value) => setField<dynamic>('macros', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
