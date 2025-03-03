import 'package:flutter/material.dart';
import '../models/item.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  const Item(
      {Key? key,
      required this.item,
      required this.color,
      required this.txt_color,
      required this.icon_color,
      required this.img_bg_color})
      : super(key: key);
  final ItemModel item;
  final Color color;
  final Color txt_color;
  final Color icon_color;
  final Color img_bg_color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 1),
            child: Container(
              color: img_bg_color,
              child: Image.asset(item.image!),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12, left: 60),
            child: Column(
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'DynaPuff',
                    color: txt_color,
                  ),
                ),
                Text(
                  item.enName,
                  style: TextStyle(
                    fontSize: 20,
                    color: txt_color,
                    fontFamily: 'Pacifico-Regular',
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              onPressed: () {
                item.playsound();
              },
              icon: Icon(
                Icons.play_arrow,
                color: icon_color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
