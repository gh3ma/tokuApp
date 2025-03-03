import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem(
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
      height: 90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'DynaPuff',
                    color: txt_color,
                  ),
                ),
                Text(
                  item.enName,
                  textAlign: TextAlign.left,
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
