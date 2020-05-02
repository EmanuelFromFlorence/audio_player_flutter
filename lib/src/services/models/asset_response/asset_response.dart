library asset_response;

import 'dart:convert';

import 'package:audio_player_flutter/src/services/models/serializer/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asset_response.g.dart';

abstract class AssetResponse
    implements Built<AssetResponse, AssetResponseBuilder> {
  static Serializer<AssetResponse> get serializer => _$assetResponseSerializer;

  factory AssetResponse([void Function(AssetResponseBuilder) updates]) =
      _$AssetResponse;

  AssetResponse._();

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

  String toJson() {
    return json
        .encode(serializers.serializeWith(AssetResponse.serializer, this));
  }

  static AssetResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        AssetResponse.serializer, json.decode(jsonString));
  }
}
