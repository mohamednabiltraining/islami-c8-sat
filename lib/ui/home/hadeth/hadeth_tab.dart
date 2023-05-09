import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c8_sat/ui/home/hadeth/hadeth.dart';
import 'package:islami_c8_sat/ui/home/hadeth/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Image.asset('assets/images/hadeth_header_image.png'),
        Container(
          color: Theme.of(context).accentColor,
          width: double.infinity,
          height: 2,
          margin: EdgeInsets.only(bottom: 8),
        ),
        Text(
          'Hadeth Name',
          style: Theme.of(context).textTheme.headline5,
        ),
        Container(
          color: Theme.of(context).accentColor,
          width: double.infinity,
          height: 2,
          margin: EdgeInsets.only(top: 8),
        ),
        Expanded(
            child: ListView.separated(
                itemBuilder: (buildContext, index) {
                  return HadethTitleWidget(allHadeth[index]);
                },
                separatorBuilder: (_, __) {
                  return Container(
                    color: Theme.of(context).accentColor,
                    height: 1,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 48),
                  );
                },
                itemCount: allHadeth.length))
      ],
    );
  }

  void loadFile() async {
    String fileName = 'assets/files/ahadeth.txt';
    String fileContent = await rootBundle.loadString(fileName);
    List<String> hadethList = fileContent.trim().split('#');
    for (int i = 0; i < hadethList.length; i++) {
      String singleHadethContent = hadethList[i];
      List<String> lines = singleHadethContent.trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      allHadeth.add(hadeth);
    }
    setState(() {});
  }
}
