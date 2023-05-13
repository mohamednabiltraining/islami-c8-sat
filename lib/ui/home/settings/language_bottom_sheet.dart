import 'package:flutter/material.dart';
import 'package:islami_c8_sat/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
            },
            child: provider.lang == 'en'
                ? getSelectedWidget(context, 'English')
                : getUnSelectedWidget(context, 'English'),
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                provider.changeLanguage('ar');
              },
              child: provider.lang == 'ar'
                  ? getSelectedWidget(context, 'العربيه')
                  : getUnSelectedWidget(context, 'العربيه')),
        ],
      ),
    );
  }

  Widget getSelectedWidget(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Theme.of(context).accentColor,
              ),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }

  Widget getUnSelectedWidget(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
