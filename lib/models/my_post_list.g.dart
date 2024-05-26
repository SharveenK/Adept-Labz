// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_post_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MypostList> _$mypostListSerializer = new _$MypostListSerializer();

class _$MypostListSerializer implements StructuredSerializer<MypostList> {
  @override
  final Iterable<Type> types = const [MypostList, _$MypostList];
  @override
  final String wireName = 'MypostList';

  @override
  Iterable<Object?> serialize(Serializers serializers, MypostList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MypostList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MypostListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
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

class _$MypostList extends MypostList {
  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String body;

  factory _$MypostList([void Function(MypostListBuilder)? updates]) =>
      (new MypostListBuilder()..update(updates))._build();

  _$MypostList._(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, r'MypostList', 'userId');
    BuiltValueNullFieldError.checkNotNull(id, r'MypostList', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'MypostList', 'title');
    BuiltValueNullFieldError.checkNotNull(body, r'MypostList', 'body');
  }

  @override
  MypostList rebuild(void Function(MypostListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MypostListBuilder toBuilder() => new MypostListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MypostList &&
        userId == other.userId &&
        id == other.id &&
        title == other.title &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MypostList')
          ..add('userId', userId)
          ..add('id', id)
          ..add('title', title)
          ..add('body', body))
        .toString();
  }
}

class MypostListBuilder implements Builder<MypostList, MypostListBuilder> {
  _$MypostList? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  MypostListBuilder();

  MypostListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _id = $v.id;
      _title = $v.title;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MypostList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MypostList;
  }

  @override
  void update(void Function(MypostListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MypostList build() => _build();

  _$MypostList _build() {
    final _$result = _$v ??
        new _$MypostList._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'MypostList', 'userId'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'MypostList', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'MypostList', 'title'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'MypostList', 'body'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
