import 'package:audio_player_flutter/src/services/models/models.dart';
import 'package:audio_player_flutter/src/services/networking/api_service.dart';
import 'package:audio_player_flutter/src/services/networking/network_checker.dart';
import 'package:built_collection/built_collection.dart';

class ApiRepository {
  final ApiService apiService;

  ApiRepository({ApiService apiService})
      : apiService = apiService ?? ApiService();

  Future<AssetResponse> _getAllArtworks(
    BuiltList<TrackResponse> trackResponseList,
  ) async {
    final items = await Future.forEach(
      trackResponseList,
      (item) => apiService.getAsset(item.artworkUrlPath),
    );
    return items;
  }

  Future<AssetResponse> _getAllAudiofiles(
    BuiltList<TrackResponse> trackResponseList,
  ) async {
    final items = await Future.forEach(
      trackResponseList,
      (item) => apiService.getAsset(item),
    );
    return items;
  }

  Future<void> getAllTracks() async {
    try {
      final isConnectedToInternet = await checkInterneConnection();
      if (!isConnectedToInternet) {
        throw NetworkError('No Internet');
      }
      final trackResponseList = await apiService.getAllTracks();

      final ddd = await Future.wait([
        _getAllArtworks(trackResponseList),
        _getAllAudiofiles(trackResponseList)
      ]);
    } on NetworkError catch (error) {
      throw NetworkError('${error.message}');
    }
  }
}
