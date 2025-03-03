import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String sound;
  final String jpName;
  final String enName;
  final String? image;

  const ItemModel(
      {required this.sound,
      required this.jpName,
      required this.enName,
      this.image});

  playsound() async {
    final AudioPlayer player = AudioPlayer();
    await player.play(AssetSource(sound));
  }
}
