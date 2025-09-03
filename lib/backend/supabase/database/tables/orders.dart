import '../database.dart';

class OrdersTable extends SupabaseTable<OrdersRow> {
  @override
  String get tableName => 'orders';

  @override
  OrdersRow createRow(Map<String, dynamic> data) => OrdersRow(data);
}

class OrdersRow extends SupabaseDataRow {
  OrdersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get customerId => getField<String>('customer_id')!;
  set customerId(String value) => setField<String>('customer_id', value);

  String get chefId => getField<String>('chef_id')!;
  set chefId(String value) => setField<String>('chef_id', value);

  String? get addressId => getField<String>('address_id');
  set addressId(String? value) => setField<String>('address_id', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String get paymentStatus => getField<String>('payment_status')!;
  set paymentStatus(String value) => setField<String>('payment_status', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get scheduledAt => getField<DateTime>('scheduled_at');
  set scheduledAt(DateTime? value) => setField<DateTime>('scheduled_at', value);

  int get subtotalCents => getField<int>('subtotal_cents')!;
  set subtotalCents(int value) => setField<int>('subtotal_cents', value);

  int get deliveryFeeCents => getField<int>('delivery_fee_cents')!;
  set deliveryFeeCents(int value) => setField<int>('delivery_fee_cents', value);

  int get totalCents => getField<int>('total_cents')!;
  set totalCents(int value) => setField<int>('total_cents', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
