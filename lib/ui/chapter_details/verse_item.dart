import 'package:flutter/material.dart';

class VerseItem extends StatelessWidget {
  String content;

  VerseItem(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        content,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
