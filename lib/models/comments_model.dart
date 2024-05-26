import 'dart:convert';
import 'package:ajira_interview/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comments_model.g.dart';

abstract class CommentsModel
    implements Built<CommentsModel, CommentsModelBuilder> {
  factory CommentsModel(
          [Function(CommentsModelBuilder commentsModelBuilder) updates]) =
      _$CommentsModel;
  CommentsModel._();
  @BuiltValueField(wireName: 'postId')
  int get postId;
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'body')
  String get body;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CommentsModel.serializer, this));
  }

  static List<CommentsModel> fromJson(String jsonString) {
    return (json.decode(jsonString) as List)
        .map((e) => serializers.deserializeWith(CommentsModel.serializer, e)!)
        .toList();
  }

  static Serializer<CommentsModel> get serializer => _$commentsModelSerializer;
}
