library serializer;

import 'package:audio_player_flutter/src/services/models/artwork/artwork.dart';
import 'package:audio_player_flutter/src/services/models/assets/assets.dart';
import 'package:audio_player_flutter/src/services/models/audio_file/audio_file.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializer.g.dart';

@SerializersFor([
  AudioFile,
  Artwork,
  Assets,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) =>
    serializers.deserializeWith<T>(serializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic items) => BuiltList.from(
    items.map((dynamic item) => deserialize<T>(item)).toList(growable: false));
