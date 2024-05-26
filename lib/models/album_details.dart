import 'dart:convert';
import 'package:ajira_interview/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'album_details.g.dart';

abstract class AlbumDetails
    implements Built<AlbumDetails, AlbumDetailsBuilder> {
  factory AlbumDetails(
          [Function(AlbumDetailsBuilder albumDetailsBuilder) updates]) =
      _$AlbumDetails;
  AlbumDetails._();
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'albumId')
  int get albumId;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'url')
  String get url;
  @BuiltValueField(wireName: 'thumbnailUrl')
  String get thumbnailUrl;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AlbumDetails.serializer, this));
  }

  static List<AlbumDetails> fromJson(String jsonString) {
    return (json.decode(jsonString) as List)
        .map((e) => serializers.deserializeWith(AlbumDetails.serializer, e)!)
        .toList();
  }

  static Serializer<AlbumDetails> get serializer => _$albumDetailsSerializer;
}
