library assets;

import 'dart:convert';

import 'package:audio_player_flutter/src/services/models/serializer/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assets.g.dart';

abstract class Assets implements Built<Assets, AssetsBuilder> {
  static Serializer<Assets> get serializer => _$assetsSerializer;

  factory Assets([void Function(AssetsBuilder) updates]) = _$Assets;

  Assets._();

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

  String toJson() {
    return json.encode(serializers.serializeWith(Assets.serializer, this));
  }

  static Assets fromJson(String jsonString) {
    return serializers.deserializeWith(
        Assets.serializer, json.decode(jsonString));
  }
}
