import 'package:b_music/widgets/Body.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Player extends StatefulWidget {
  Player({Key? key}) : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer(
      audioLoadConfiguration:
          AudioLoadConfiguration(androidLoadControl: AndroidLoadControl()),
      handleAudioSessionActivation: true,
    );
    player.setLoopMode(LoopMode.off);
    player.setAudioSource(AudioSource.uri(Uri.file('')));
  }

  @override
  Widget build(BuildContext context) {
    return Body(
      child: Container(),
    );
  }
}
