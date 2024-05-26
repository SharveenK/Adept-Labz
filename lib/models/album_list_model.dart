import 'dart:convert';
import 'package:ajira_interview/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'album_list_model.g.dart';

abstract class AlbumList implements Built<AlbumList, AlbumListBuilder> {
  factory AlbumList([Function(AlbumListBuilder albumListBuilder) updates]) =
      _$AlbumList;
  AlbumList._();
  @BuiltValueField(wireName: 'userId')
  int get userId;
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'title')
  String get title;

  String toJson() {
    return json.encode(serializers.serializeWith(AlbumList.serializer, this));
  }

  static List<AlbumList> fromJson(String jsonString) {
    return (json.decode(jsonString) as List)
        .map((e) => serializers.deserializeWith(AlbumList.serializer, e)!)
        .toList();
  }

  static Serializer<AlbumList> get serializer => _$albumListSerializer;
}
