import 'package:flutter/material.dart';
import 'package:islami/bottom_sheets/language_bottom_sheet.dart';
import 'package:islami/bottom_sheets/theme_bottom_sheet.dart';
import 'package:islami/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isDismissible: true,
                isScrollControlled: true,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .70,
                    child: LanguageBottomSheet(),
                  );
                },
              );
            },
            child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  AppLocalizations.of(context)!.language,
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Text(
            "Theme",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          InkWell
            (
            onTap: () {
              showModalBottomSheet(
                context: context,
                isDismissible: true,
                isScrollControlled: true,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .70,
                    child: ThemeBottomSheet(),
                  );
                },
              );
            },
            child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: MyThemeData.primaryColor),
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "Light",
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          ),
        ],
      ),
    );
  }
}
