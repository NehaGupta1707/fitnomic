import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'carousel_record.g.dart';

abstract class CarouselRecord
    implements Built<CarouselRecord, CarouselRecordBuilder> {
  static Serializer<CarouselRecord> get serializer =>
      _$carouselRecordSerializer;

  String? get title;

  String? get image;

  String? get url;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CarouselRecordBuilder builder) => builder
    ..title = ''
    ..image = ''
    ..url = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carousel');

  static Stream<CarouselRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CarouselRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CarouselRecord._();
  factory CarouselRecord([void Function(CarouselRecordBuilder) updates]) =
      _$CarouselRecord;

  static CarouselRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCarouselRecordData({
  String? title,
  String? image,
  String? url,
}) {
  final firestoreData = serializers.toFirestore(
    CarouselRecord.serializer,
    CarouselRecord(
      (c) => c
        ..title = title
        ..image = image
        ..url = url,
    ),
  );

  return firestoreData;
}
