// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductCategoryRecord> _$productCategoryRecordSerializer =
    new _$ProductCategoryRecordSerializer();

class _$ProductCategoryRecordSerializer
    implements StructuredSerializer<ProductCategoryRecord> {
  @override
  final Iterable<Type> types = const [
    ProductCategoryRecord,
    _$ProductCategoryRecord
  ];
  @override
  final String wireName = 'ProductCategoryRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProductCategoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.categoryName;
    if (value != null) {
      result
        ..add('category_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ProductCategoryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductCategoryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'category_name':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductCategoryRecord extends ProductCategoryRecord {
  @override
  final String? categoryName;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductCategoryRecord(
          [void Function(ProductCategoryRecordBuilder)? updates]) =>
      (new ProductCategoryRecordBuilder()..update(updates))._build();

  _$ProductCategoryRecord._({this.categoryName, this.image, this.ffRef})
      : super._();

  @override
  ProductCategoryRecord rebuild(
          void Function(ProductCategoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductCategoryRecordBuilder toBuilder() =>
      new ProductCategoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductCategoryRecord &&
        categoryName == other.categoryName &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categoryName.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductCategoryRecord')
          ..add('categoryName', categoryName)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductCategoryRecordBuilder
    implements Builder<ProductCategoryRecord, ProductCategoryRecordBuilder> {
  _$ProductCategoryRecord? _$v;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductCategoryRecordBuilder() {
    ProductCategoryRecord._initializeBuilder(this);
  }

  ProductCategoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryName = $v.categoryName;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductCategoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductCategoryRecord;
  }

  @override
  void update(void Function(ProductCategoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductCategoryRecord build() => _build();

  _$ProductCategoryRecord _build() {
    final _$result = _$v ??
        new _$ProductCategoryRecord._(
            categoryName: categoryName, image: image, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
