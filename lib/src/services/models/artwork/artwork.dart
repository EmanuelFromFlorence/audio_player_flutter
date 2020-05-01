library artwork;

import 'dart:convert';

import 'package:audio_player_flutter/src/services/models/serializer/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'artwork.g.dart';

abstract class Artwork implements Built<Artwork, ArtworkBuilder> {
  String get bucket;
  String get contentDisposition;
  String get contentEncoding;
  String get contentType;
  String get crc32c;
  String get downloadTokens;
  String get etag;
  String get generation;
  String get md5Hash;
  String get metageneration;
  String get name;
  String get size;
  String get storageClass;
  String get timeCreated;
  String get updated;

  String downloadUrl() {
    return 'https://firebasestorage.googleapis.com/v0/b/$bucket/o/audio/${Uri.encodeComponent(name)}?alt=media&token=$downloadTokens';
  }

  Artwork._();

  factory Artwork([void Function(ArtworkBuilder) updates]) = _$Artwork;

  String toJson() {
    return json.encode(serializers.serializeWith(Artwork.serializer, this));
  }

  static Artwork fromJson(String jsonString) {
    return serializers.deserializeWith(
        Artwork.serializer, json.decode(jsonString));
  }

  static Serializer<Artwork> get serializer => _$artworkSerializer;
}
