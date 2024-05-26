// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlbumDetails> _$albumDetailsSerializer =
    new _$AlbumDetailsSerializer();

class _$AlbumDetailsSerializer implements StructuredSerializer<AlbumDetails> {
  @override
  final Iterable<Type> types = const [AlbumDetails, _$AlbumDetails];
  @override
  final String wireName = 'AlbumDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, AlbumDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'albumId',
      serializers.serialize(object.albumId, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'thumbnailUrl',
      serializers.serialize(object.thumbnailUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AlbumDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlbumDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'albumId':
          result.albumId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'thumbnailUrl':
          result.thumbnailUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AlbumDetails extends AlbumDetails {
  @override
  final int id;
  @override
  final int albumId;
  @override
  final String title;
  @override
  final String url;
  @override
  final String thumbnailUrl;

  factory _$AlbumDetails([void Function(AlbumDetailsBuilder)? updates]) =>
      (new AlbumDetailsBuilder()..update(updates))._build();

  _$AlbumDetails._(
      {required this.id,
      required this.albumId,
      required this.title,
      required this.url,
      required this.thumbnailUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AlbumDetails', 'id');
    BuiltValueNullFieldError.checkNotNull(albumId, r'AlbumDetails', 'albumId');
    BuiltValueNullFieldError.checkNotNull(title, r'AlbumDetails', 'title');
    BuiltValueNullFieldError.checkNotNull(url, r'AlbumDetails', 'url');
    BuiltValueNullFieldError.checkNotNull(
        thumbnailUrl, r'AlbumDetails', 'thumbnailUrl');
  }

  @override
  AlbumDetails rebuild(void Function(AlbumDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlbumDetailsBuilder toBuilder() => new AlbumDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlbumDetails &&
        id == other.id &&
        albumId == other.albumId &&
        title == other.title &&
        url == other.url &&
        thumbnailUrl == other.thumbnailUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, albumId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, thumbnailUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlbumDetails')
          ..add('id', id)
          ..add('albumId', albumId)
          ..add('title', title)
          ..add('url', url)
          ..add('thumbnailUrl', thumbnailUrl))
        .toString();
  }
}

class AlbumDetailsBuilder
    implements Builder<AlbumDetails, AlbumDetailsBuilder> {
  _$AlbumDetails? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _albumId;
  int? get albumId => _$this._albumId;
  set albumId(int? albumId) => _$this._albumId = albumId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _thumbnailUrl;
  String? get thumbnailUrl => _$this._thumbnailUrl;
  set thumbnailUrl(String? thumbnailUrl) => _$this._thumbnailUrl = thumbnailUrl;

  AlbumDetailsBuilder();

  AlbumDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _albumId = $v.albumId;
      _title = $v.title;
      _url = $v.url;
      _thumbnailUrl = $v.thumbnailUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlbumDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlbumDetails;
  }

  @override
  void update(void Function(AlbumDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlbumDetails build() => _build();

  _$AlbumDetails _build() {
    final _$result = _$v ??
        new _$AlbumDetails._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AlbumDetails', 'id'),
            albumId: BuiltValueNullFieldError.checkNotNull(
                albumId, r'AlbumDetails', 'albumId'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'AlbumDetails', 'title'),
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'AlbumDetails', 'url'),
            thumbnailUrl: BuiltValueNullFieldError.checkNotNull(
                thumbnailUrl, r'AlbumDetails', 'thumbnailUrl'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
