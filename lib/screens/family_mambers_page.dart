import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import '../models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<ItemModel> numbers = const [
    // Father
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      jpName: 'Chichioya',
      enName: 'Father',
      image: 'assets/images/family_members/family_father.png',
    ),
    // Mother
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      jpName: 'Hahaoya',
      enName: 'Mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    // Daughter
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'Musume',
      enName: 'Daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    // Grandfather
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      jpName: 'Ojisan',
      enName: 'Uncle',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    // Grandmother
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      jpName: 'Sobo',
      enName: 'Grandmother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    // Older Brother
    ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      jpName: 'Nisan',
      enName: 'Older Brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    // Older Sister
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      jpName: 'Ane',
      enName: 'Older Sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    // Son
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      jpName: 'Musuko',
      enName: 'Son',
      image: 'assets/images/family_members/family_son.png',
    ),
    // Younger Brother
    ItemModel(
      sound: 'sounds/family_members/younger brohter.wav',
      jpName: 'Ototo',
      enName: 'Younger Brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    // Younger Sister
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      jpName: 'Imoto',
      enName: 'Younger Sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE5DDC8),
        appBar: AppBar(
          backgroundColor: const Color(0xFF004369),
          title: const Text(
            'Family Members',
            style: TextStyle(
              color: Color(0xFFE5DDC8),
              fontSize: 27,
              fontFamily: 'DynaPuff',
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, num) {
            return Item(
              item: numbers[num],
              color: const Color(0xFFE5DDC8),
              txt_color: Color(0xFF004369),
              icon_color: Color(0xFF004369),
              img_bg_color: Color(0xFF004369),
            );
          },
        ),
      ),
    );
  }
}
