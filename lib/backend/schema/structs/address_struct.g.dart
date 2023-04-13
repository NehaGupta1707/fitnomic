// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddressStruct> _$addressStructSerializer =
    new _$AddressStructSerializer();

class _$AddressStructSerializer implements StructuredSerializer<AddressStruct> {
  @override
  final Iterable<Type> types = const [AddressStruct, _$AddressStruct];
  @override
  final String wireName = 'AddressStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddressStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressLine1;
    if (value != null) {
      result
        ..add('addressLine1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressLine2;
    if (value != null) {
      result
        ..add('addressLine2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pinCode;
    if (value != null) {
      result
        ..add('pinCode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AddressStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'addressLine1':
          result.addressLine1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'addressLine2':
          result.addressLine2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pinCode':
          result.pinCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$AddressStruct extends AddressStruct {
  @override
  final String? name;
  @override
  final String? addressLine1;
  @override
  final String? addressLine2;
  @override
  final String? city;
  @override
  final int? pinCode;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AddressStruct([void Function(AddressStructBuilder)? updates]) =>
      (new AddressStructBuilder()..update(updates))._build();

  _$AddressStruct._(
      {this.name,
      this.addressLine1,
      this.addressLine2,
      this.city,
      this.pinCode,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'AddressStruct', 'firestoreUtilData');
  }

  @override
  AddressStruct rebuild(void Function(AddressStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressStructBuilder toBuilder() => new AddressStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressStruct &&
        name == other.name &&
        addressLine1 == other.addressLine1 &&
        addressLine2 == other.addressLine2 &&
        city == other.city &&
        pinCode == other.pinCode &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, addressLine1.hashCode);
    _$hash = $jc(_$hash, addressLine2.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, pinCode.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddressStruct')
          ..add('name', name)
          ..add('addressLine1', addressLine1)
          ..add('addressLine2', addressLine2)
          ..add('city', city)
          ..add('pinCode', pinCode)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AddressStructBuilder
    implements Builder<AddressStruct, AddressStructBuilder> {
  _$AddressStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _addressLine1;
  String? get addressLine1 => _$this._addressLine1;
  set addressLine1(String? addressLine1) => _$this._addressLine1 = addressLine1;

  String? _addressLine2;
  String? get addressLine2 => _$this._addressLine2;
  set addressLine2(String? addressLine2) => _$this._addressLine2 = addressLine2;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  int? _pinCode;
  int? get pinCode => _$this._pinCode;
  set pinCode(int? pinCode) => _$this._pinCode = pinCode;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  AddressStructBuilder() {
    AddressStruct._initializeBuilder(this);
  }

  AddressStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _addressLine1 = $v.addressLine1;
      _addressLine2 = $v.addressLine2;
      _city = $v.city;
      _pinCode = $v.pinCode;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressStruct;
  }

  @override
  void update(void Function(AddressStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressStruct build() => _build();

  _$AddressStruct _build() {
    final _$result = _$v ??
        new _$AddressStruct._(
            name: name,
            addressLine1: addressLine1,
            addressLine2: addressLine2,
            city: city,
            pinCode: pinCode,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'AddressStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
