// GENERATED CODE - DO NOT MODIFY BY HAND

part of track_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrackResponse> _$trackResponseSerializer =
    new _$TrackResponseSerializer();

class _$TrackResponseSerializer implements StructuredSerializer<TrackResponse> {
  @override
  final Iterable<Type> types = const [TrackResponse, _$TrackResponse];
  @override
  final String wireName = 'TrackResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, TrackResponse object,
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
    ];

    return result;
  }

  @override
  TrackResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrackResponseBuilder();

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
      }
    }

    return result.build();
  }
}

class _$TrackResponse extends TrackResponse {
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

  factory _$TrackResponse([void Function(TrackResponseBuilder) updates]) =>
      (new TrackResponseBuilder()..update(updates)).build();

  _$TrackResponse._(
      {this.artist,
      this.artworkUrlPath,
      this.audioFileUrlPath,
      this.duration,
      this.id,
      this.title})
      : super._() {
    if (artist == null) {
      throw new BuiltValueNullFieldError('TrackResponse', 'artist');
    }
    if (artworkUrlPath == null) {
      throw new BuiltValueNullFieldError('TrackResponse', 'artworkUrlPath');
    }
    if (audioFileUrlPath == null) {
      throw new BuiltValueNullFieldError('TrackResponse', 'audioFileUrlPath');
    }
    if (duration == null) {
      throw new BuiltValueNullFieldError('TrackResponse', 'duration');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('TrackResponse', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('TrackResponse', 'title');
    }
  }

  @override
  TrackResponse rebuild(void Function(TrackResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackResponseBuilder toBuilder() => new TrackResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackResponse &&
        artist == other.artist &&
        artworkUrlPath == other.artworkUrlPath &&
        audioFileUrlPath == other.audioFileUrlPath &&
        duration == other.duration &&
        id == other.id &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, artist.hashCode), artworkUrlPath.hashCode),
                    audioFileUrlPath.hashCode),
                duration.hashCode),
            id.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrackResponse')
          ..add('artist', artist)
          ..add('artworkUrlPath', artworkUrlPath)
          ..add('audioFileUrlPath', audioFileUrlPath)
          ..add('duration', duration)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class TrackResponseBuilder
    implements Builder<TrackResponse, TrackResponseBuilder> {
  _$TrackResponse _$v;

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

  TrackResponseBuilder();

  TrackResponseBuilder get _$this {
    if (_$v != null) {
      _artist = _$v.artist;
      _artworkUrlPath = _$v.artworkUrlPath;
      _audioFileUrlPath = _$v.audioFileUrlPath;
      _duration = _$v.duration;
      _id = _$v.id;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrackResponse;
  }

  @override
  void update(void Function(TrackResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrackResponse build() {
    final _$result = _$v ??
        new _$TrackResponse._(
            artist: artist,
            artworkUrlPath: artworkUrlPath,
            audioFileUrlPath: audioFileUrlPath,
            duration: duration,
            id: id,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
