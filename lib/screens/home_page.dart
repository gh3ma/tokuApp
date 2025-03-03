import 'package:flutter/material.dart';
import 'package:toku/components/category.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_mambers_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5DDC8),
      appBar: AppBar(
        backgroundColor: Color(0xFFE5DDC8),
        title: const Text(
          '🇯🇵 Toku App 🇯🇵',
          style: TextStyle(
            fontSize: 27,
            fontFamily: 'DynaPuff',
            color: Color(0xFF004369),
          ),
        ),
      ),
      body: Column(
        children: [
          // Pushing Numbers screen
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ));
              },
              category_text: 'Numbers',
              category_bg_color: const Color(0xFF004369),
              category_color: const Color(0xFFE5DDC8),
              category_font_size: 25,
            ),
          ),
          // Pushing Famliy Members screen
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FamilyMembersPage(),
                  ),
                );
              },
              category_text: 'Family Members',
              category_bg_color: const Color(0xFF004369),
              category_color: const Color(0xFFE5DDC8),
              category_font_size: 25,
            ),
          ),
          // Pushing Colors  screen
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColorsPage(),
                  ),
                );
              },
              category_text: 'Colors',
              category_bg_color: const Color(0xFF004369),
              category_color: const Color(0xFFE5DDC8),
              category_font_size: 25,
            ),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PhrasesPage(),
                ),
              );
            },
            category_text: 'Phrases',
            category_bg_color: const Color(0xFF004369),
            category_color: const Color(0xFFE5DDC8),
            category_font_size: 25,
          ),
        ],
      ),
    );
  }
}
