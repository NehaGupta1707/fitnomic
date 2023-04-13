// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddressRecord> _$addressRecordSerializer =
    new _$AddressRecordSerializer();

class _$AddressRecordSerializer implements StructuredSerializer<AddressRecord> {
  @override
  final Iterable<Type> types = const [AddressRecord, _$AddressRecord];
  @override
  final String wireName = 'AddressRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddressRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(AddressStruct)),
    ];
    Object? value;
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.archived;
    if (value != null) {
      result
        ..add('archived')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.defaultAddress;
    if (value != null) {
      result
        ..add('default_address')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  AddressRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'modified_at':
          result.modifiedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'archived':
          result.archived = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'default_address':
          result.defaultAddress = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressStruct))! as AddressStruct);
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

class _$AddressRecord extends AddressRecord {
  @override
  final DocumentReference<Object?>? owner;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? modifiedAt;
  @override
  final bool? archived;
  @override
  final bool? defaultAddress;
  @override
  final AddressStruct address;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AddressRecord([void Function(AddressRecordBuilder)? updates]) =>
      (new AddressRecordBuilder()..update(updates))._build();

  _$AddressRecord._(
      {this.owner,
      this.createdAt,
      this.modifiedAt,
      this.archived,
      this.defaultAddress,
      required this.address,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(address, r'AddressRecord', 'address');
  }

  @override
  AddressRecord rebuild(void Function(AddressRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressRecordBuilder toBuilder() => new AddressRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressRecord &&
        owner == other.owner &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        archived == other.archived &&
        defaultAddress == other.defaultAddress &&
        address == other.address &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, archived.hashCode);
    _$hash = $jc(_$hash, defaultAddress.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddressRecord')
          ..add('owner', owner)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('archived', archived)
          ..add('defaultAddress', defaultAddress)
          ..add('address', address)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AddressRecordBuilder
    implements Builder<AddressRecord, AddressRecordBuilder> {
  _$AddressRecord? _$v;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  bool? _archived;
  bool? get archived => _$this._archived;
  set archived(bool? archived) => _$this._archived = archived;

  bool? _defaultAddress;
  bool? get defaultAddress => _$this._defaultAddress;
  set defaultAddress(bool? defaultAddress) =>
      _$this._defaultAddress = defaultAddress;

  AddressStructBuilder? _address;
  AddressStructBuilder get address =>
      _$this._address ??= new AddressStructBuilder();
  set address(AddressStructBuilder? address) => _$this._address = address;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AddressRecordBuilder() {
    AddressRecord._initializeBuilder(this);
  }

  AddressRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _archived = $v.archived;
      _defaultAddress = $v.defaultAddress;
      _address = $v.address.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressRecord;
  }

  @override
  void update(void Function(AddressRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressRecord build() => _build();

  _$AddressRecord _build() {
    _$AddressRecord _$result;
    try {
      _$result = _$v ??
          new _$AddressRecord._(
              owner: owner,
              createdAt: createdAt,
              modifiedAt: modifiedAt,
              archived: archived,
              defaultAddress: defaultAddress,
              address: address.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        address.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AddressRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
