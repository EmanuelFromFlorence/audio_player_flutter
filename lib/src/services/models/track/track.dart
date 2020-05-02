library track;

import 'package:audio_player_flutter/src/services/models/models.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/foundation.dart' show required;

part 'track.g.dart';

abstract class Track implements Built<Track, TrackBuilder> {
  factory Track([void Function(TrackBuilder) updates]) = _$Track;

  factory Track.fromTrackResponse({@required TrackResponse trackResponse}) {
    return Track(
      (b) => b
        ..artist = trackResponse.artist
        ..artist = trackResponse.artist
        ..audioFileUrl = trackResponse.audioFileUrlPath
        ..duration = trackResponse.duration
        ..id = trackResponse.id
        ..title = trackResponse.title,
    );
  }

  Track._();

  String get artist;
  String get artworkUrl;
  String get audioFileUrl;
  int get duration;
  String get id;
  String get title;

  static BuiltList<Track> listOfTracksFromResponse({
    @required BuiltList<TrackResponse> trackResponseItems,
  }) {
    return trackResponseItems
        .map((item) => Track.fromTrackResponse(trackResponse: item));
  }
}
