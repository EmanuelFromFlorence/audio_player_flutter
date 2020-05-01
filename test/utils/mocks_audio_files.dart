import 'package:audio_player_flutter/src/services/models/audio_file/audio_file.dart';
import 'package:audio_player_flutter/src/services/persistance/json_storage.dart';
import 'package:uuid/uuid.dart';

import 'mock_utils.dart';

const _audioFilesAuthors = [
  'Doom Deck',
  'Sleep 342',
  'Not Now Boom',
  'Visualization',
  'Face Your Thoughts',
  'Drone D',
  'Dreaming T',
  'Soundscapes Оver Sun',
  'Hair Brushing',
  'The Swim Bro',
  'The Doors',
  'No Doubt',
  'Jay Zee',
  'Cool Boy',
  'Busy P',
  'White and Black',
  'Hypnosis',
  'Rap Steine',
  'Dj Vitalic',
  '2 Pac',
];

const _audioFilesTitles = [
  'Memories For Life',
  'Boom For Money',
  'Luck Of The Perfect Storm',
  'Hood Of The Stars',
  'Love For Her Story',
  'Drone i12',
  'Dreaming',
  'Magic Of The Stars',
  'Motions Of Us',
  'Time Of His Thunder',
  'Her Ways',
  'Softy',
  'More And Future',
  'Dance And Resurrection',
  'Ocean Waves',
  'Gentle Rain',
  'Pink Noise',
  'White Noise',
  'Babe Ride',
  'Rapunzel',
  'He Loves I Am Trouble',
  'Deep Forest',
];

Future<void> generateMockRelaxItemsJsonFile() async {
  final _jsonStorage = JsonStorage();
  final _audioItems = MockAudioFilesDataSource.randomList();
  await _jsonStorage.writeJson(AudioFile.listOfAudioFilesToJson(_audioItems));
}

class MockAudioFilesDataSource {
  static List<AudioFile> randomList() {
    return List<AudioFile>.generate(
        randomIntInRange(500, 700), (index) => _randomAudioFile());
  }

  static AudioFile _randomAudioFile() {
    final authors =
        _audioFilesAuthors[random.nextInt(_audioFilesAuthors.length)];

    final title = _audioFilesTitles[random.nextInt(_audioFilesTitles.length)];

    final artworkId = randomIntInRange(1, 23);
    final artwork =
        'https://firebasestorage.googleapis.com/v0/b/flutter-template-7b07a.appspot.com/o/images%2F$artworkId.png';

    return AudioFile(
      (b) => b
        ..artist = authors
        ..artworkUrlPath = artwork
        ..audioFileUrlPath =
            'https://firebasestorage.googleapis.com/v0/b/flutter-template-7b07a.appspot.com/o/audio%2Fbensound-erf.mp3'
        ..duration = 264600
        ..id = Uuid().v4()
        ..title = title,
    );
  }
}
