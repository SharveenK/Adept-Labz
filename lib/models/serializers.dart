library serializers;

import 'package:ajira_interview/models/album_details.dart';
import 'package:ajira_interview/models/album_list_model.dart';
import 'package:ajira_interview/models/comments_model.dart';
import 'package:ajira_interview/models/my_post_list.dart';
import 'package:ajira_interview/models/user_details.dart';
import 'package:ajira_interview/models/user_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  UserModel,
  UserProfileDetails,
  AlbumDetails,
  AlbumList,
  MypostList,
  CommentsModel,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) => serializers.deserializeWith<T>(
    serializers.serializerForType(T)! as Serializer<T>, value) as T;

BuiltList<T> deserializeListof<T>(dynamic value) => BuiltList.from(
    value.map((value) => deserialize<T>(value)).toList(growable: false));
