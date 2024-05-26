import 'dart:convert';
import 'package:ajira_interview/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_model.g.dart';

abstract class UserModel implements Built<UserModel, UserModelBuilder> {
  factory UserModel([Function(UserModelBuilder userModelBuilder) updates]) =
      _$UserModel;
  UserModel._();

  String toJson() {
    return json.encode(serializers.serializeWith(UserModel.serializer, this));
  }

  static UserModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserModel.serializer, json.decode(jsonString))!;
  }

  static Serializer<UserModel> get serializer => _$userModelSerializer;
}
