import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8_sat/ui/chapter_details/verse_item.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsScreenArgs;
    if (verses.isEmpty) loadFile(args.index);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/main_background.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: Column(
          children: [
            Expanded(
                child: Card(
              color: Colors.white,
              elevation: 24,
              margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: verses.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      itemBuilder: (buildContext, index) {
                        return VerseItem(verses[index]);
                      },
                      itemCount: verses.length,
                      separatorBuilder: (buildContext, index) {
                        return Container(
                          height: 1,
                          width: double.infinity,
                          color: Theme.of(context).primaryColor,
                          margin: EdgeInsets.symmetric(horizontal: 48),
                        );
                      },
                    ),
            ))
          ],
        ),
      ),
    );
  }

  void loadFile(int index) async {
    String fileName = 'assets/files/${index + 1}.txt';
    String fileContent = await rootBundle.loadString(fileName);
    print(fileContent);
    verses = fileContent.split('\n');
    await Future.delayed(Duration(seconds: 2)); //block thread 5 second
    setState(() {});
  }

  int add(int x, int y) {
    return x + y;
  }
}

class ChapterDetailsScreenArgs {
  // data class
  int index;
  String name;

  ChapterDetailsScreenArgs(this.index, this.name);
}
