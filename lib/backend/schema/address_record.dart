import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'address_record.g.dart';

abstract class AddressRecord
    implements Built<AddressRecord, AddressRecordBuilder> {
  static Serializer<AddressRecord> get serializer => _$addressRecordSerializer;

  DocumentReference? get owner;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'modified_at')
  DateTime? get modifiedAt;

  bool? get archived;

  @BuiltValueField(wireName: 'default_address')
  bool? get defaultAddress;

  AddressStruct get address;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AddressRecordBuilder builder) => builder
    ..archived = false
    ..defaultAddress = false
    ..address = AddressStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('address');

  static Stream<AddressRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AddressRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AddressRecord._();
  factory AddressRecord([void Function(AddressRecordBuilder) updates]) =
      _$AddressRecord;

  static AddressRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAddressRecordData({
  DocumentReference? owner,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? archived,
  bool? defaultAddress,
  AddressStruct? address,
}) {
  final firestoreData = serializers.toFirestore(
    AddressRecord.serializer,
    AddressRecord(
      (a) => a
        ..owner = owner
        ..createdAt = createdAt
        ..modifiedAt = modifiedAt
        ..archived = archived
        ..defaultAddress = defaultAddress
        ..address = AddressStructBuilder(),
    ),
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}
