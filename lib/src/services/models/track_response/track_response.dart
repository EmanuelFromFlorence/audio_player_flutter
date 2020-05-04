library track_response;

import 'dart:convert';

import 'package:audio_player_flutter/src/services/models/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_response.g.dart';

abstract class TrackResponse
    implements Built<TrackResponse, TrackResponseBuilder> {
  static Serializer<TrackResponse> get serializer => _$trackResponseSerializer;

  factory TrackResponse([void Function(TrackResponseBuilder) updates]) =
      _$TrackResponse;

  TrackResponse._();

  String get artist;
  String get artworkUrlPath;
  String get audioFileUrlPath;
  int get duration;
  String get id;
  String get title;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TrackResponse.serializer, this));
  }

  static TrackResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        TrackResponse.serializer, json.decode(jsonString));
  }

  static String listOfTrackResponseItems(List<TrackResponse> items) {
    final data = <String>[];
    items.forEach((item) {
      final json = item.toJson();
      data.add(json);
    });
    return '$data';
  }

  static BuiltList<TrackResponse> parseListOfTracks(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return deserializeListOf<TrackResponse>(parsed);
  }
}
