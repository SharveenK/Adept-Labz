// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_list_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlbumList> _$albumListSerializer = new _$AlbumListSerializer();

class _$AlbumListSerializer implements StructuredSerializer<AlbumList> {
  @override
  final Iterable<Type> types = const [AlbumList, _$AlbumList];
  @override
  final String wireName = 'AlbumList';

  @override
  Iterable<Object?> serialize(Serializers serializers, AlbumList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AlbumList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlbumListBuilder();

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
      }
    }

    return result.build();
  }
}

class _$AlbumList extends AlbumList {
  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;

  factory _$AlbumList([void Function(AlbumListBuilder)? updates]) =>
      (new AlbumListBuilder()..update(updates))._build();

  _$AlbumList._({required this.userId, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, r'AlbumList', 'userId');
    BuiltValueNullFieldError.checkNotNull(id, r'AlbumList', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'AlbumList', 'title');
  }

  @override
  AlbumList rebuild(void Function(AlbumListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlbumListBuilder toBuilder() => new AlbumListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlbumList &&
        userId == other.userId &&
        id == other.id &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlbumList')
          ..add('userId', userId)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class AlbumListBuilder implements Builder<AlbumList, AlbumListBuilder> {
  _$AlbumList? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  AlbumListBuilder();

  AlbumListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _id = $v.id;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlbumList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlbumList;
  }

  @override
  void update(void Function(AlbumListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlbumList build() => _build();

  _$AlbumList _build() {
    final _$result = _$v ??
        new _$AlbumList._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'AlbumList', 'userId'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'AlbumList', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'AlbumList', 'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
