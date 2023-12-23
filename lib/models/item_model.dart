import 'package:audioplayers/audioplayers.dart';

class ItemsModle {
  const ItemsModle(
      {required this.engWard,
      required this.japWard,
      required this.soundPath,
      this.imagePath});
  final String? imagePath;
  final String engWard;
  final String japWard;
  final String soundPath;

  void playoudio() async {
    final player = AudioPlayer();
    await player.play(AssetSource(soundPath));
  }
}
