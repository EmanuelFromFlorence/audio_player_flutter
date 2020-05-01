// GENERATED CODE - DO NOT MODIFY BY HAND

part of track;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Track> _$trackSerializer = new _$TrackSerializer();

class _$TrackSerializer implements StructuredSerializer<Track> {
  @override
  final Iterable<Type> types = const [Track, _$Track];
  @override
  final String wireName = 'Track';

  @override
  Iterable<Object> serialize(Serializers serializers, Track object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'artist',
      serializers.serialize(object.artist,
          specifiedType: const FullType(String)),
      'artworkUrlPath',
      serializers.serialize(object.artworkUrlPath,
          specifiedType: const FullType(String)),
      'audioFileUrlPath',
      serializers.serialize(object.audioFileUrlPath,
          specifiedType: const FullType(String)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'imageAsset',
      serializers.serialize(object.imageAsset,
          specifiedType: const FullType(Asset)),
    ];

    return result;
  }

  @override
  Track deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrackBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'artist':
          result.artist = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'artworkUrlPath':
          result.artworkUrlPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'audioFileUrlPath':
          result.audioFileUrlPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageAsset':
          result.imageAsset.replace(serializers.deserialize(value,
              specifiedType: const FullType(Asset)) as Asset);
          break;
      }
    }

    return result.build();
  }
}

class _$Track extends Track {
  @override
  final String artist;
  @override
  final String artworkUrlPath;
  @override
  final String audioFileUrlPath;
  @override
  final int duration;
  @override
  final String id;
  @override
  final String title;
  @override
  final Asset imageAsset;

  factory _$Track([void Function(TrackBuilder) updates]) =>
      (new TrackBuilder()..update(updates)).build();

  _$Track._(
      {this.artist,
      this.artworkUrlPath,
      this.audioFileUrlPath,
      this.duration,
      this.id,
      this.title,
      this.imageAsset})
      : super._() {
    if (artist == null) {
      throw new BuiltValueNullFieldError('Track', 'artist');
    }
    if (artworkUrlPath == null) {
      throw new BuiltValueNullFieldError('Track', 'artworkUrlPath');
    }
    if (audioFileUrlPath == null) {
      throw new BuiltValueNullFieldError('Track', 'audioFileUrlPath');
    }
    if (duration == null) {
      throw new BuiltValueNullFieldError('Track', 'duration');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Track', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Track', 'title');
    }
    if (imageAsset == null) {
      throw new BuiltValueNullFieldError('Track', 'imageAsset');
    }
  }

  @override
  Track rebuild(void Function(TrackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackBuilder toBuilder() => new TrackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Track &&
        artist == other.artist &&
        artworkUrlPath == other.artworkUrlPath &&
        audioFileUrlPath == other.audioFileUrlPath &&
        duration == other.duration &&
        id == other.id &&
        title == other.title &&
        imageAsset == other.imageAsset;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, artist.hashCode), artworkUrlPath.hashCode),
                        audioFileUrlPath.hashCode),
                    duration.hashCode),
                id.hashCode),
            title.hashCode),
        imageAsset.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Track')
          ..add('artist', artist)
          ..add('artworkUrlPath', artworkUrlPath)
          ..add('audioFileUrlPath', audioFileUrlPath)
          ..add('duration', duration)
          ..add('id', id)
          ..add('title', title)
          ..add('imageAsset', imageAsset))
        .toString();
  }
}

class TrackBuilder implements Builder<Track, TrackBuilder> {
  _$Track _$v;

  String _artist;
  String get artist => _$this._artist;
  set artist(String artist) => _$this._artist = artist;

  String _artworkUrlPath;
  String get artworkUrlPath => _$this._artworkUrlPath;
  set artworkUrlPath(String artworkUrlPath) =>
      _$this._artworkUrlPath = artworkUrlPath;

  String _audioFileUrlPath;
  String get audioFileUrlPath => _$this._audioFileUrlPath;
  set audioFileUrlPath(String audioFileUrlPath) =>
      _$this._audioFileUrlPath = audioFileUrlPath;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  AssetBuilder _imageAsset;
  AssetBuilder get imageAsset => _$this._imageAsset ??= new AssetBuilder();
  set imageAsset(AssetBuilder imageAsset) => _$this._imageAsset = imageAsset;

  TrackBuilder();

  TrackBuilder get _$this {
    if (_$v != null) {
      _artist = _$v.artist;
      _artworkUrlPath = _$v.artworkUrlPath;
      _audioFileUrlPath = _$v.audioFileUrlPath;
      _duration = _$v.duration;
      _id = _$v.id;
      _title = _$v.title;
      _imageAsset = _$v.imageAsset?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Track other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Track;
  }

  @override
  void update(void Function(TrackBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Track build() {
    _$Track _$result;
    try {
      _$result = _$v ??
          new _$Track._(
              artist: artist,
              artworkUrlPath: artworkUrlPath,
              audioFileUrlPath: audioFileUrlPath,
              duration: duration,
              id: id,
              title: title,
              imageAsset: imageAsset.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'imageAsset';
        imageAsset.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Track', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
