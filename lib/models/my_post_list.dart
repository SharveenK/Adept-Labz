import 'dart:convert';
import 'package:ajira_interview/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'my_post_list.g.dart';

abstract class MypostList implements Built<MypostList, MypostListBuilder> {
  factory MypostList([Function(MypostListBuilder mypostListBuilder) updates]) =
      _$MypostList;
  MypostList._();
  @BuiltValueField(wireName: 'userId')
  int get userId;
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'body')
  String get body;

  String toJson() {
    return json.encode(serializers.serializeWith(MypostList.serializer, this));
  }

  static List<MypostList> fromJson(String jsonString) {
    return (json.decode(jsonString) as List)
        .map((e) => serializers.deserializeWith(MypostList.serializer, e)!)
        .toList();
  }

  static Serializer<MypostList> get serializer => _$mypostListSerializer;
}
