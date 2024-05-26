// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentsModel> _$commentsModelSerializer =
    new _$CommentsModelSerializer();

class _$CommentsModelSerializer implements StructuredSerializer<CommentsModel> {
  @override
  final Iterable<Type> types = const [CommentsModel, _$CommentsModel];
  @override
  final String wireName = 'CommentsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommentsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'postId',
      serializers.serialize(object.postId, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CommentsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
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
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CommentsModel extends CommentsModel {
  @override
  final int postId;
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String body;

  factory _$CommentsModel([void Function(CommentsModelBuilder)? updates]) =>
      (new CommentsModelBuilder()..update(updates))._build();

  _$CommentsModel._(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(postId, r'CommentsModel', 'postId');
    BuiltValueNullFieldError.checkNotNull(id, r'CommentsModel', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'CommentsModel', 'name');
    BuiltValueNullFieldError.checkNotNull(email, r'CommentsModel', 'email');
    BuiltValueNullFieldError.checkNotNull(body, r'CommentsModel', 'body');
  }

  @override
  CommentsModel rebuild(void Function(CommentsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentsModelBuilder toBuilder() => new CommentsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentsModel &&
        postId == other.postId &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommentsModel')
          ..add('postId', postId)
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('body', body))
        .toString();
  }
}

class CommentsModelBuilder
    implements Builder<CommentsModel, CommentsModelBuilder> {
  _$CommentsModel? _$v;

  int? _postId;
  int? get postId => _$this._postId;
  set postId(int? postId) => _$this._postId = postId;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  CommentsModelBuilder();

  CommentsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentsModel;
  }

  @override
  void update(void Function(CommentsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommentsModel build() => _build();

  _$CommentsModel _build() {
    final _$result = _$v ??
        new _$CommentsModel._(
            postId: BuiltValueNullFieldError.checkNotNull(
                postId, r'CommentsModel', 'postId'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CommentsModel', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CommentsModel', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'CommentsModel', 'email'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'CommentsModel', 'body'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
