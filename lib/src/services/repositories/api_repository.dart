import 'package:audio_player_flutter/src/services/models/models.dart';
import 'package:audio_player_flutter/src/services/networking/api_service.dart';
import 'package:audio_player_flutter/src/services/networking/network_checker.dart';
import 'package:built_collection/built_collection.dart';

class ApiRepository {
  final ApiService apiService;

  ApiRepository({ApiService apiService})
      : apiService = apiService ?? ApiService();

  Future<AssetResponse> _getAllArtworks(
    BuiltList<TrackResponse> trackList,
  ) async {
    final items = await Future.forEach(
      trackList,
      (item) => apiService.getAsset(item.artworkUrlPath),
    );
    return items;
  }

  Future<AssetResponse> _getAllAudiofiles(
    BuiltList<TrackResponse> trackList,
  ) async {
    final items = await Future.forEach(
      trackList,
      (item) => apiService.getAsset(item),
    );
    return items;
  }

  Future<BuiltList<TrackResponse>> _getAllTrackResponse() async {
    try {
      final isConnectedToInternet = await checkInterneConnection();
      if (!isConnectedToInternet) {
        throw NetworkError('No Internet');
      }

      return await apiService.getAllTracks();
    } on NetworkError catch (error) {
      throw NetworkError('${error.message}');
    }
  }

  // Future<BuiltList<Track>> getAllTracks() async {
  //   try {

  //     return
  //   } on NetworkError catch (error) {
  //     throw NetworkError('${error.message}');
  //   }
  // }
}
