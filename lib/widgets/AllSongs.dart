// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';

class Songs extends StatelessWidget {
  List<SongModel> songs;

  Songs({Key? key, required this.songs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(),
              title: Text(songs[index].title),
            ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: songs.length);
  }
}
