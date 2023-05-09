import 'package:flutter/material.dart';
import 'package:islami_c8_sat/ui/home/hadeth/hadeth.dart';
import 'package:islami_c8_sat/ui/my_theme.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                MyTheme.isDarkEnabled
                    ? 'assets/images/dark_background_image.png'
                    : 'assets/images/main_background.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Column(
          children: [
            Expanded(
                child: Card(
                    elevation: 24,
                    margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    child: SingleChildScrollView(
                      child: Text(args.content,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6),
                    )))
          ],
        ),
      ),
    );
  }
}
