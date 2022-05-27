import 'dart:io';

class AudioQuery {
  static String? path = '${Platform.environment['HOME']}/Music';
  AudioQuery();
  // method to fetch all songs from the device
  static Future<List<FileSystemEntity>> fetchSongs() async {
    Directory dir = Directory('$path');
    List<FileSystemEntity> files = dir.listSync(recursive: true);
    List<FileSystemEntity> songs =
        files.where((element) => element.path.endsWith('.mp3')).toList();
    return songs;
  }
}

Future<void> main() async {
  // print();

  for (var element in await AudioQuery.fetchSongs()) {
    print(element);
  }
}
