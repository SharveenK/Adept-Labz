import 'dart:convert';
import 'package:ajira_interview/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_details.g.dart';

abstract class UserProfileDetails
    implements Built<UserProfileDetails, UserProfileDetailsBuilder> {
  factory UserProfileDetails(
      [Function(UserProfileDetailsBuilder userProfileDetailsBuilder)
          updates]) = _$UserProfileDetails;
  UserProfileDetails._();
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  @BuiltValueField(wireName: 'website')
  String get website;
  @BuiltValueField(wireName: 'address')
  AddressDetails get address;
  @BuiltValueField(wireName: 'company')
  Company get company;

  String toJson() {
    return json
        .encode(serializers.serializeWith(UserProfileDetails.serializer, this));
  }

  // static UserProfileDetails fromJsonasString(String jsonString) {
  //   return serializers.deserializeWith(
  //       UserProfileDetails.serializer, json.decode(jsonString))!;
  // }

  static List<UserProfileDetails> fromJson(String jsonString) {
    return (json.decode(jsonString) as List)
        .map((e) =>
            serializers.deserializeWith(UserProfileDetails.serializer, e)!)
        .toList();
  }

  static Serializer<UserProfileDetails> get serializer =>
      _$userProfileDetailsSerializer;
}

abstract class AddressDetails
    implements Built<AddressDetails, AddressDetailsBuilder> {
  factory AddressDetails(
          [Function(AddressDetailsBuilder addressDetailsBuilder) updates]) =
      _$AddressDetails;
  AddressDetails._();
  @BuiltValueField(wireName: 'street')
  String get street;
  @BuiltValueField(wireName: 'suite')
  String get suite;
  @BuiltValueField(wireName: 'city')
  String get city;
  @BuiltValueField(wireName: 'zipcode')
  String get zipcode;
  @BuiltValueField(wireName: 'geo')
  GeoDetails get geo;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AddressDetails.serializer, this));
  }

  static AddressDetails fromJson(String jsonString) {
    return serializers.deserializeWith(
        AddressDetails.serializer, json.decode(jsonString))!;
  }

  static Serializer<AddressDetails> get serializer =>
      _$addressDetailsSerializer;
}

abstract class GeoDetails implements Built<GeoDetails, GeoDetailsBuilder> {
  factory GeoDetails([Function(GeoDetailsBuilder geoDetailsBuilder) updates]) =
      _$GeoDetails;
  GeoDetails._();
  @BuiltValueField(wireName: 'lat')
  String get lat;
  @BuiltValueField(wireName: 'lng')
  String get lon;
  String toJson() {
    return json.encode(serializers.serializeWith(GeoDetails.serializer, this));
  }

  static GeoDetails fromJson(String jsonString) {
    return serializers.deserializeWith(
        GeoDetails.serializer, json.decode(jsonString))!;
  }

  static Serializer<GeoDetails> get serializer => _$geoDetailsSerializer;
}

abstract class Company implements Built<Company, CompanyBuilder> {
  factory Company([Function(CompanyBuilder companyBuilder) updates]) =
      _$Company;
  Company._();
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'catchPhrase')
  String get catchPhrase;
  @BuiltValueField(wireName: 'bs')
  String get bs;

  String toJson() {
    return json.encode(serializers.serializeWith(Company.serializer, this));
  }

  static Company fromJson(String jsonString) {
    return serializers.deserializeWith(
        Company.serializer, json.decode(jsonString))!;
  }

  static Serializer<Company> get serializer => _$companySerializer;
}
