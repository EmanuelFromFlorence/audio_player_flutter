import 'dart:io';

import 'package:audio_player_flutter/src/services/models/models.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final Map<String, Object> cache;
  final _baseUrl = 'https://flutter-template-7b07a.firebaseio.com';
  final http.Client client;

  ApiService({
    HttpClient client,
    Map<String, Object> cache,
  })  : client = client ?? http.Client(),
        cache = cache ?? <String, Object>{};

  Future<BuiltList<Track>> getAllTracks() async {
    final response = await client.get('$_baseUrl/tunes.json');
    print('Api Service: get Tracks: ${response.statusCode}');
    if (response.statusCode == 200) {
      return compute(Track.parseListOfTracks, response.body);
    } else {
      throw NetworkError(response.statusCode.toString());
    }
  }

  Future<Asset> getAsset(String assetPath) async {
    final response = await client.get(assetPath);
    print('Api Service: get Asset: ${response.statusCode}');
    if (response.statusCode == 200) {
      return Asset.fromJson(response.body);
    } else {
      throw NetworkError(response.statusCode.toString());
    }
  }
}
