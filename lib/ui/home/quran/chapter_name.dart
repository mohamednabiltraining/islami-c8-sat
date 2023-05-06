import 'package:flutter/material.dart';
import 'package:islami_c8_sat/ui/chapter_details/chapter_details_screen.dart';

class ChapterNameWidget extends StatelessWidget {
  String name;
  int index;

  ChapterNameWidget(this.name, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetailsScreen.routeName,
            arguments: ChapterDetailsScreenArgs(index, name));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          name,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
