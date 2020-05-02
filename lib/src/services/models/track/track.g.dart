// GENERATED CODE - DO NOT MODIFY BY HAND

part of track;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Track extends Track {
  @override
  final String artist;
  @override
  final String artworkUrl;
  @override
  final String audioFileUrl;
  @override
  final int duration;
  @override
  final String id;
  @override
  final String title;

  factory _$Track([void Function(TrackBuilder) updates]) =>
      (new TrackBuilder()..update(updates)).build();

  _$Track._(
      {this.artist,
      this.artworkUrl,
      this.audioFileUrl,
      this.duration,
      this.id,
      this.title})
      : super._() {
    if (artist == null) {
      throw new BuiltValueNullFieldError('Track', 'artist');
    }
    if (artworkUrl == null) {
      throw new BuiltValueNullFieldError('Track', 'artworkUrl');
    }
    if (audioFileUrl == null) {
      throw new BuiltValueNullFieldError('Track', 'audioFileUrl');
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
        artworkUrl == other.artworkUrl &&
        audioFileUrl == other.audioFileUrl &&
        duration == other.duration &&
        id == other.id &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, artist.hashCode), artworkUrl.hashCode),
                    audioFileUrl.hashCode),
                duration.hashCode),
            id.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Track')
          ..add('artist', artist)
          ..add('artworkUrl', artworkUrl)
          ..add('audioFileUrl', audioFileUrl)
          ..add('duration', duration)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class TrackBuilder implements Builder<Track, TrackBuilder> {
  _$Track _$v;

  String _artist;
  String get artist => _$this._artist;
  set artist(String artist) => _$this._artist = artist;

  String _artworkUrl;
  String get artworkUrl => _$this._artworkUrl;
  set artworkUrl(String artworkUrl) => _$this._artworkUrl = artworkUrl;

  String _audioFileUrl;
  String get audioFileUrl => _$this._audioFileUrl;
  set audioFileUrl(String audioFileUrl) => _$this._audioFileUrl = audioFileUrl;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  TrackBuilder();

  TrackBuilder get _$this {
    if (_$v != null) {
      _artist = _$v.artist;
      _artworkUrl = _$v.artworkUrl;
      _audioFileUrl = _$v.audioFileUrl;
      _duration = _$v.duration;
      _id = _$v.id;
      _title = _$v.title;
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
    final _$result = _$v ??
        new _$Track._(
            artist: artist,
            artworkUrl: artworkUrl,
            audioFileUrl: audioFileUrl,
            duration: duration,
            id: id,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
