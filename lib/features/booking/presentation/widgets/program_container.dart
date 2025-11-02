import 'package:figma_frontend_relaxation/core/constants/app_colors.dart';
import 'package:figma_frontend_relaxation/core/localizations/app_localizations.dart';
import 'package:figma_frontend_relaxation/features/booking/presentation/widgets/custom_list.dart';
import 'package:figma_frontend_relaxation/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ProgramContainer extends StatelessWidget {
  const ProgramContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.lightGrayColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        child: Column(
          children: [
            CustomList(
              iconPath: Assets.icons.alarm.path,
              text: AppLocalizations.twoHours,
            ),
            const SizedBox(height: 3),
            CustomList(
              iconPath: Assets.icons.gift.path,
              text: AppLocalizations.plusTwoHoursGift,
            ),
            const SizedBox(height: 3),
            CustomList(
              iconPath: Assets.icons.tshirt.path,
              text: AppLocalizations.bringSwimwear,
            ),          
          ],
        ),
      ),
    );
  }

}