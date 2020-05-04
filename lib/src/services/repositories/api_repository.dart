import 'package:audio_player_flutter/src/services/models/models.dart';
import 'package:audio_player_flutter/src/services/networking/api_service.dart';
import 'package:audio_player_flutter/src/services/networking/network_checker.dart';
import 'package:built_collection/built_collection.dart';

class ApiRepository {
  final ApiService apiService;

  ApiRepository({ApiService apiService})
      : apiService = apiService ?? ApiService();

  Future<BuiltList<TrackResponse>> getAllTracks() async {
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

  // Future<void> getAllArtworks(BuiltList<TrackResponse> trackList) async {
  //   //await Future.forEach(elements, (element) => null);

  //   trackList.forEach((item) {
  //     await apiService.getAsset(item.artworkUrlPath);
  //   });
  // }

  // Future<void> getAllAudiofiles(BuiltList<TrackResponse> trackList) async {

  //   trackList.forEach((item) {
  //     await apiService.getAsset(item.artworkUrlPath);
  //   });
  // }

  // Future<BuiltList<Track>> getAll() async {
  //   try {

  //     return
  //   } on NetworkError catch (error) {
  //     throw NetworkError('${error.message}');
  //   }
  // }
}
