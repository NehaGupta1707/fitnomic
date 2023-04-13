import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'product_category_record.g.dart';

abstract class ProductCategoryRecord
    implements Built<ProductCategoryRecord, ProductCategoryRecordBuilder> {
  static Serializer<ProductCategoryRecord> get serializer =>
      _$productCategoryRecordSerializer;

  @BuiltValueField(wireName: 'category_name')
  String? get categoryName;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductCategoryRecordBuilder builder) =>
      builder
        ..categoryName = ''
        ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product_category');

  static Stream<ProductCategoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductCategoryRecord._();
  factory ProductCategoryRecord(
          [void Function(ProductCategoryRecordBuilder) updates]) =
      _$ProductCategoryRecord;

  static ProductCategoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductCategoryRecordData({
  String? categoryName,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    ProductCategoryRecord.serializer,
    ProductCategoryRecord(
      (p) => p
        ..categoryName = categoryName
        ..image = image,
    ),
  );

  return firestoreData;
}
