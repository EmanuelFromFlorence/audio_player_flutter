import 'package:audio_player_flutter/src/app/features/audio_player/blocs/blocs.dart'
    show AudioPlayerBloc;
import 'package:audio_player_flutter/src/services/services.dart' show Track;
import 'package:flutter/material.dart';

class AudioSlider extends StatelessWidget {
  final Track track;
  final AudioPlayerBloc bloc;

  const AudioSlider({
    @required this.track,
    @required this.bloc,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: bloc.trackPosition,
      min: 0,
      max: track.duration.toDouble(),
      activeColor: Colors.black,
      onChanged: (value) => bloc.seekTo(value.toInt()),
      onChangeEnd: (value) => bloc.resume(),
    );
  }
}
