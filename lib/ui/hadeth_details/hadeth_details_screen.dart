import 'package:flutter/material.dart';
import 'package:islami_c8_sat/providers/settings_provider.dart';
import 'package:islami_c8_sat/ui/home/hadeth/hadeth.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                provider.getMainBackGround(),
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
