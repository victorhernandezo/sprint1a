import '../database.dart';

class ChefsTable extends SupabaseTable<ChefsRow> {
  @override
  String get tableName => 'chefs';

  @override
  ChefsRow createRow(Map<String, dynamic> data) => ChefsRow(data);
}

class ChefsRow extends SupabaseDataRow {
  ChefsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChefsTable();

  String get profileId => getField<String>('profile_id')!;
  set profileId(String value) => setField<String>('profile_id', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  double? get ratingAvg => getField<double>('rating_avg');
  set ratingAvg(double? value) => setField<double>('rating_avg', value);

  int? get ratingCount => getField<int>('rating_count');
  set ratingCount(int? value) => setField<int>('rating_count', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
