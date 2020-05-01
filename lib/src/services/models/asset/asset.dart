library asset;

import 'dart:convert';

import 'package:audio_player_flutter/src/services/models/serializer/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asset.g.dart';

abstract class Asset implements Built<Asset, AssetBuilder> {
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

  Asset._();

  factory Asset([void Function(AssetBuilder) updates]) = _$Asset;

  String toJson() {
    return json.encode(serializers.serializeWith(Asset.serializer, this));
  }

  static Asset fromJson(String jsonString) {
    return serializers.deserializeWith(
        Asset.serializer, json.decode(jsonString));
  }

  static Serializer<Asset> get serializer => _$assetSerializer;
}
