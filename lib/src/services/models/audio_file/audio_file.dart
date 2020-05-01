library audio_file;

import 'dart:convert';

import 'package:audio_player_flutter/src/services/models/serializer/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audio_file.g.dart';

abstract class AudioFile implements Built<AudioFile, AudioFileBuilder> {
  static Serializer<AudioFile> get serializer => _$audioFileSerializer;
  factory AudioFile([void Function(AudioFileBuilder) updates]) = _$AudioFile;
  AudioFile._();

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
    return Uri.encodeComponent(
        'https://firebasestorage.googleapis.com/v0/b/$bucket/o/audio/$name?alt=media&token=$downloadTokens');
  }

  //https://firebasestorage.googleapis.com/v0/b/flutter-template-7b07a.appspot.com/o/audio%2Fbensound-erf.mp3?alt=media&token=61d1c35b-9171-41bf-a08f-63b51e53c2d8

  String toJson() {
    return json.encode(serializers.serializeWith(AudioFile.serializer, this));
  }

  static AudioFile fromJson(String jsonString) {
    return serializers.deserializeWith(
        AudioFile.serializer, json.decode(jsonString));
  }
}
