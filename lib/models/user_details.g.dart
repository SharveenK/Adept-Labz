// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserProfileDetails> _$userProfileDetailsSerializer =
    new _$UserProfileDetailsSerializer();
Serializer<AddressDetails> _$addressDetailsSerializer =
    new _$AddressDetailsSerializer();
Serializer<GeoDetails> _$geoDetailsSerializer = new _$GeoDetailsSerializer();
Serializer<Company> _$companySerializer = new _$CompanySerializer();

class _$UserProfileDetailsSerializer
    implements StructuredSerializer<UserProfileDetails> {
  @override
  final Iterable<Type> types = const [UserProfileDetails, _$UserProfileDetails];
  @override
  final String wireName = 'UserProfileDetails';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserProfileDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'website',
      serializers.serialize(object.website,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(AddressDetails)),
      'company',
      serializers.serialize(object.company,
          specifiedType: const FullType(Company)),
    ];

    return result;
  }

  @override
  UserProfileDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserProfileDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'website':
          result.website = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AddressDetails))!
              as AddressDetails);
          break;
        case 'company':
          result.company.replace(serializers.deserialize(value,
              specifiedType: const FullType(Company))! as Company);
          break;
      }
    }

    return result.build();
  }
}

class _$AddressDetailsSerializer
    implements StructuredSerializer<AddressDetails> {
  @override
  final Iterable<Type> types = const [AddressDetails, _$AddressDetails];
  @override
  final String wireName = 'AddressDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddressDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'street',
      serializers.serialize(object.street,
          specifiedType: const FullType(String)),
      'suite',
      serializers.serialize(object.suite,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'zipcode',
      serializers.serialize(object.zipcode,
          specifiedType: const FullType(String)),
      'geo',
      serializers.serialize(object.geo,
          specifiedType: const FullType(GeoDetails)),
    ];

    return result;
  }

  @override
  AddressDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'suite':
          result.suite = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'zipcode':
          result.zipcode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'geo':
          result.geo.replace(serializers.deserialize(value,
              specifiedType: const FullType(GeoDetails))! as GeoDetails);
          break;
      }
    }

    return result.build();
  }
}

class _$GeoDetailsSerializer implements StructuredSerializer<GeoDetails> {
  @override
  final Iterable<Type> types = const [GeoDetails, _$GeoDetails];
  @override
  final String wireName = 'GeoDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, GeoDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(String)),
      'lng',
      serializers.serialize(object.lon, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GeoDetails deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeoDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lng':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CompanySerializer implements StructuredSerializer<Company> {
  @override
  final Iterable<Type> types = const [Company, _$Company];
  @override
  final String wireName = 'Company';

  @override
  Iterable<Object?> serialize(Serializers serializers, Company object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'catchPhrase',
      serializers.serialize(object.catchPhrase,
          specifiedType: const FullType(String)),
      'bs',
      serializers.serialize(object.bs, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Company deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'catchPhrase':
          result.catchPhrase = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'bs':
          result.bs = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserProfileDetails extends UserProfileDetails {
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String website;
  @override
  final AddressDetails address;
  @override
  final Company company;

  factory _$UserProfileDetails(
          [void Function(UserProfileDetailsBuilder)? updates]) =>
      (new UserProfileDetailsBuilder()..update(updates))._build();

  _$UserProfileDetails._(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.website,
      required this.address,
      required this.company})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'UserProfileDetails', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'UserProfileDetails', 'name');
    BuiltValueNullFieldError.checkNotNull(
        email, r'UserProfileDetails', 'email');
    BuiltValueNullFieldError.checkNotNull(
        phone, r'UserProfileDetails', 'phone');
    BuiltValueNullFieldError.checkNotNull(
        website, r'UserProfileDetails', 'website');
    BuiltValueNullFieldError.checkNotNull(
        address, r'UserProfileDetails', 'address');
    BuiltValueNullFieldError.checkNotNull(
        company, r'UserProfileDetails', 'company');
  }

  @override
  UserProfileDetails rebuild(
          void Function(UserProfileDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileDetailsBuilder toBuilder() =>
      new UserProfileDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileDetails &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        phone == other.phone &&
        website == other.website &&
        address == other.address &&
        company == other.company;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, website.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserProfileDetails')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('phone', phone)
          ..add('website', website)
          ..add('address', address)
          ..add('company', company))
        .toString();
  }
}

class UserProfileDetailsBuilder
    implements Builder<UserProfileDetails, UserProfileDetailsBuilder> {
  _$UserProfileDetails? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  AddressDetailsBuilder? _address;
  AddressDetailsBuilder get address =>
      _$this._address ??= new AddressDetailsBuilder();
  set address(AddressDetailsBuilder? address) => _$this._address = address;

  CompanyBuilder? _company;
  CompanyBuilder get company => _$this._company ??= new CompanyBuilder();
  set company(CompanyBuilder? company) => _$this._company = company;

  UserProfileDetailsBuilder();

  UserProfileDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _phone = $v.phone;
      _website = $v.website;
      _address = $v.address.toBuilder();
      _company = $v.company.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserProfileDetails;
  }

  @override
  void update(void Function(UserProfileDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfileDetails build() => _build();

  _$UserProfileDetails _build() {
    _$UserProfileDetails _$result;
    try {
      _$result = _$v ??
          new _$UserProfileDetails._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'UserProfileDetails', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'UserProfileDetails', 'name'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'UserProfileDetails', 'email'),
              phone: BuiltValueNullFieldError.checkNotNull(
                  phone, r'UserProfileDetails', 'phone'),
              website: BuiltValueNullFieldError.checkNotNull(
                  website, r'UserProfileDetails', 'website'),
              address: address.build(),
              company: company.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        address.build();
        _$failedField = 'company';
        company.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserProfileDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddressDetails extends AddressDetails {
  @override
  final String street;
  @override
  final String suite;
  @override
  final String city;
  @override
  final String zipcode;
  @override
  final GeoDetails geo;

  factory _$AddressDetails([void Function(AddressDetailsBuilder)? updates]) =>
      (new AddressDetailsBuilder()..update(updates))._build();

  _$AddressDetails._(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(street, r'AddressDetails', 'street');
    BuiltValueNullFieldError.checkNotNull(suite, r'AddressDetails', 'suite');
    BuiltValueNullFieldError.checkNotNull(city, r'AddressDetails', 'city');
    BuiltValueNullFieldError.checkNotNull(
        zipcode, r'AddressDetails', 'zipcode');
    BuiltValueNullFieldError.checkNotNull(geo, r'AddressDetails', 'geo');
  }

  @override
  AddressDetails rebuild(void Function(AddressDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressDetailsBuilder toBuilder() =>
      new AddressDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressDetails &&
        street == other.street &&
        suite == other.suite &&
        city == other.city &&
        zipcode == other.zipcode &&
        geo == other.geo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, suite.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, zipcode.hashCode);
    _$hash = $jc(_$hash, geo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddressDetails')
          ..add('street', street)
          ..add('suite', suite)
          ..add('city', city)
          ..add('zipcode', zipcode)
          ..add('geo', geo))
        .toString();
  }
}

class AddressDetailsBuilder
    implements Builder<AddressDetails, AddressDetailsBuilder> {
  _$AddressDetails? _$v;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _suite;
  String? get suite => _$this._suite;
  set suite(String? suite) => _$this._suite = suite;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _zipcode;
  String? get zipcode => _$this._zipcode;
  set zipcode(String? zipcode) => _$this._zipcode = zipcode;

  GeoDetailsBuilder? _geo;
  GeoDetailsBuilder get geo => _$this._geo ??= new GeoDetailsBuilder();
  set geo(GeoDetailsBuilder? geo) => _$this._geo = geo;

  AddressDetailsBuilder();

  AddressDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _street = $v.street;
      _suite = $v.suite;
      _city = $v.city;
      _zipcode = $v.zipcode;
      _geo = $v.geo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressDetails;
  }

  @override
  void update(void Function(AddressDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressDetails build() => _build();

  _$AddressDetails _build() {
    _$AddressDetails _$result;
    try {
      _$result = _$v ??
          new _$AddressDetails._(
              street: BuiltValueNullFieldError.checkNotNull(
                  street, r'AddressDetails', 'street'),
              suite: BuiltValueNullFieldError.checkNotNull(
                  suite, r'AddressDetails', 'suite'),
              city: BuiltValueNullFieldError.checkNotNull(
                  city, r'AddressDetails', 'city'),
              zipcode: BuiltValueNullFieldError.checkNotNull(
                  zipcode, r'AddressDetails', 'zipcode'),
              geo: geo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geo';
        geo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AddressDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GeoDetails extends GeoDetails {
  @override
  final String lat;
  @override
  final String lon;

  factory _$GeoDetails([void Function(GeoDetailsBuilder)? updates]) =>
      (new GeoDetailsBuilder()..update(updates))._build();

  _$GeoDetails._({required this.lat, required this.lon}) : super._() {
    BuiltValueNullFieldError.checkNotNull(lat, r'GeoDetails', 'lat');
    BuiltValueNullFieldError.checkNotNull(lon, r'GeoDetails', 'lon');
  }

  @override
  GeoDetails rebuild(void Function(GeoDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeoDetailsBuilder toBuilder() => new GeoDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeoDetails && lat == other.lat && lon == other.lon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeoDetails')
          ..add('lat', lat)
          ..add('lon', lon))
        .toString();
  }
}

class GeoDetailsBuilder implements Builder<GeoDetails, GeoDetailsBuilder> {
  _$GeoDetails? _$v;

  String? _lat;
  String? get lat => _$this._lat;
  set lat(String? lat) => _$this._lat = lat;

  String? _lon;
  String? get lon => _$this._lon;
  set lon(String? lon) => _$this._lon = lon;

  GeoDetailsBuilder();

  GeoDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _lon = $v.lon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeoDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GeoDetails;
  }

  @override
  void update(void Function(GeoDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeoDetails build() => _build();

  _$GeoDetails _build() {
    final _$result = _$v ??
        new _$GeoDetails._(
            lat: BuiltValueNullFieldError.checkNotNull(
                lat, r'GeoDetails', 'lat'),
            lon: BuiltValueNullFieldError.checkNotNull(
                lon, r'GeoDetails', 'lon'));
    replace(_$result);
    return _$result;
  }
}

class _$Company extends Company {
  @override
  final String name;
  @override
  final String catchPhrase;
  @override
  final String bs;

  factory _$Company([void Function(CompanyBuilder)? updates]) =>
      (new CompanyBuilder()..update(updates))._build();

  _$Company._({required this.name, required this.catchPhrase, required this.bs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Company', 'name');
    BuiltValueNullFieldError.checkNotNull(
        catchPhrase, r'Company', 'catchPhrase');
    BuiltValueNullFieldError.checkNotNull(bs, r'Company', 'bs');
  }

  @override
  Company rebuild(void Function(CompanyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyBuilder toBuilder() => new CompanyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Company &&
        name == other.name &&
        catchPhrase == other.catchPhrase &&
        bs == other.bs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, catchPhrase.hashCode);
    _$hash = $jc(_$hash, bs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Company')
          ..add('name', name)
          ..add('catchPhrase', catchPhrase)
          ..add('bs', bs))
        .toString();
  }
}

class CompanyBuilder implements Builder<Company, CompanyBuilder> {
  _$Company? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _catchPhrase;
  String? get catchPhrase => _$this._catchPhrase;
  set catchPhrase(String? catchPhrase) => _$this._catchPhrase = catchPhrase;

  String? _bs;
  String? get bs => _$this._bs;
  set bs(String? bs) => _$this._bs = bs;

  CompanyBuilder();

  CompanyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _catchPhrase = $v.catchPhrase;
      _bs = $v.bs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Company other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Company;
  }

  @override
  void update(void Function(CompanyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Company build() => _build();

  _$Company _build() {
    final _$result = _$v ??
        new _$Company._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Company', 'name'),
            catchPhrase: BuiltValueNullFieldError.checkNotNull(
                catchPhrase, r'Company', 'catchPhrase'),
            bs: BuiltValueNullFieldError.checkNotNull(bs, r'Company', 'bs'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
