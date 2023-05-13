import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c8_sat/providers/settings_provider.dart';
import 'package:islami_c8_sat/ui/home/settings/language_bottom_sheet.dart';
import 'package:islami_c8_sat/ui/home/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLangaugeBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Theme.of(context).accentColor, width: 1)),
                child: Text(
                  provider.lang == 'en' ? "Enlgish" : "العربيه",
                  style: Theme.of(context).textTheme.headline6,
                )),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Theme.of(context).accentColor, width: 1)),
                child: Text(
                  AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.headline6,
                )),
          ),
        ],
      ),
    );
  }

  void showLangaugeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LanguageBottomSheet();
        });
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeBottomSheet();
        });
  }
}
