library track;

import 'dart:convert';

import 'package:audio_player_flutter/src/services/models/asset/asset.dart';
import 'package:audio_player_flutter/src/services/models/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track.g.dart';

abstract class Track implements Built<Track, TrackBuilder> {
  static Serializer<Track> get serializer => _$trackSerializer;

  factory Track([void Function(TrackBuilder) updates]) = _$Track;

  Track._();

  String get artist;
  String get artworkUrlPath;
  String get audioFileUrlPath;
  int get duration;
  String get id;
  String get title;

  Asset get imageAsset;

  String toJson() {
    return json.encode(serializers.serializeWith(Track.serializer, this));
  }

  static Track fromJson(String jsonString) {
    return serializers.deserializeWith(
        Track.serializer, json.decode(jsonString));
  }

  static String listOfTracksToJson(List<Track> audioFiles) {
    final data = <String>[];
    audioFiles.forEach((item) {
      final json = item.toJson();
      data.add(json);
    });
    return '$data';
  }

  static BuiltList<Track> parseListOfTracks(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return deserializeListOf<Track>(parsed);
  }
}
