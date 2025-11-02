import 'package:figma_frontend_relaxation/core/constants/app_colors.dart';
import 'package:figma_frontend_relaxation/core/localizations/app_localizations.dart';
import 'package:figma_frontend_relaxation/core/styles/text_typography.dart';
import 'package:figma_frontend_relaxation/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgramContent extends StatelessWidget {
  const ProgramContent({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {
        'icon': Assets.icons.solarPanel.path,
        'text': AppLocalizations.threeStageSteaming,
      },
      {
        'icon': Assets.icons.solarPanel.path,
        'text': AppLocalizations.dryBodyPeeling,
      },
      {
        'icon': Assets.icons.handSoap.path,
        'text': AppLocalizations.oilMassage,
      },
      {
        'icon': Assets.icons.shower.path,
        'text': AppLocalizations.soapWashingOrScrub,
      },
      {
        'icon': Assets.icons.bowlSteam.path,
        'text': AppLocalizations.teaCeremony,
      },
    ];

    return Align(
      alignment: Alignment.center,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 12,
        runSpacing: 12,
        children: List.generate(services.length, (index) {
          final service = services[index];

          return SizedBox(
            width: 165,
            height: 93,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.lightGrayColor,
                  width: 1.5,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    service['icon']!,
                    width: 28,
                    height: 28,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    service['text']!,
                    textAlign: TextAlign.left,
                    style: TextTypography.paragraph.small.copyWith(
                      color: AppColors.textColorDark,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
