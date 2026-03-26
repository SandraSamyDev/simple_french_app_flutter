  import 'package:audioplayers/audioplayers.dart';

abstract final class Audiohelper {
    static final _player = AudioPlayer();

static Future<void> playSound({required String path}) async{

   await _player.play(AssetSource(path));
  }
}