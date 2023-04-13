// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarouselRecord> _$carouselRecordSerializer =
    new _$CarouselRecordSerializer();

class _$CarouselRecordSerializer
    implements StructuredSerializer<CarouselRecord> {
  @override
  final Iterable<Type> types = const [CarouselRecord, _$CarouselRecord];
  @override
  final String wireName = 'CarouselRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CarouselRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
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
    value = object.url;
    if (value != null) {
      result
        ..add('url')
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
  CarouselRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarouselRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
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

class _$CarouselRecord extends CarouselRecord {
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? url;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CarouselRecord([void Function(CarouselRecordBuilder)? updates]) =>
      (new CarouselRecordBuilder()..update(updates))._build();

  _$CarouselRecord._({this.title, this.image, this.url, this.ffRef})
      : super._();

  @override
  CarouselRecord rebuild(void Function(CarouselRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarouselRecordBuilder toBuilder() =>
      new CarouselRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarouselRecord &&
        title == other.title &&
        image == other.image &&
        url == other.url &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarouselRecord')
          ..add('title', title)
          ..add('image', image)
          ..add('url', url)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CarouselRecordBuilder
    implements Builder<CarouselRecord, CarouselRecordBuilder> {
  _$CarouselRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CarouselRecordBuilder() {
    CarouselRecord._initializeBuilder(this);
  }

  CarouselRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _image = $v.image;
      _url = $v.url;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarouselRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarouselRecord;
  }

  @override
  void update(void Function(CarouselRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarouselRecord build() => _build();

  _$CarouselRecord _build() {
    final _$result = _$v ??
        new _$CarouselRecord._(
            title: title, image: image, url: url, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
