import '../database.dart';

class DeliveriesTable extends SupabaseTable<DeliveriesRow> {
  @override
  String get tableName => 'deliveries';

  @override
  DeliveriesRow createRow(Map<String, dynamic> data) => DeliveriesRow(data);
}

class DeliveriesRow extends SupabaseDataRow {
  DeliveriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DeliveriesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get orderId => getField<String>('order_id')!;
  set orderId(String value) => setField<String>('order_id', value);

  String? get delivererId => getField<String>('deliverer_id');
  set delivererId(String? value) => setField<String>('deliverer_id', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  double? get pickupLat => getField<double>('pickup_lat');
  set pickupLat(double? value) => setField<double>('pickup_lat', value);

  double? get pickupLng => getField<double>('pickup_lng');
  set pickupLng(double? value) => setField<double>('pickup_lng', value);

  DateTime? get pickupAt => getField<DateTime>('pickup_at');
  set pickupAt(DateTime? value) => setField<DateTime>('pickup_at', value);

  double? get dropoffLat => getField<double>('dropoff_lat');
  set dropoffLat(double? value) => setField<double>('dropoff_lat', value);

  double? get dropoffLng => getField<double>('dropoff_lng');
  set dropoffLng(double? value) => setField<double>('dropoff_lng', value);

  DateTime? get dropoffAt => getField<DateTime>('dropoff_at');
  set dropoffAt(DateTime? value) => setField<DateTime>('dropoff_at', value);

  DateTime? get acceptedAt => getField<DateTime>('accepted_at');
  set acceptedAt(DateTime? value) => setField<DateTime>('accepted_at', value);

  int get estimatedIncomeCents => getField<int>('estimated_income_cents')!;
  set estimatedIncomeCents(int value) =>
      setField<int>('estimated_income_cents', value);

  double? get distanceKm => getField<double>('distance_km');
  set distanceKm(double? value) => setField<double>('distance_km', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
