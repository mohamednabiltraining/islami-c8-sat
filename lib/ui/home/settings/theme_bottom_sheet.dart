import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c8_sat/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

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
              provider.changeTheme(ThemeMode.light);
            },
            child: provider.isDarkEnabled()
                ? getUnSelectedWidget(
                    context, AppLocalizations.of(context)!.light)
                : getSelectedWidget(
                    context, AppLocalizations.of(context)!.light),
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
              },
              child: provider.isDarkEnabled()
                  ? getSelectedWidget(
                      context, AppLocalizations.of(context)!.dark)
                  : getUnSelectedWidget(
                      context, AppLocalizations.of(context)!.dark)),
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
