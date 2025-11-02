import 'package:figma_frontend_relaxation/core/styles/text_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:figma_frontend_relaxation/core/constants/app_colors.dart';

class CustomList extends StatelessWidget {
  final String iconPath;
  final String text;
  final bool enableLeftPadding;

  const CustomList({
    super.key,
    required this.iconPath,
    required this.text,
    this.enableLeftPadding = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: enableLeftPadding ? 12 : 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 16,
            height: 16,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextTypography.paragraph.small.copyWith(
              color: AppColors.textColorDark,
            ),
          ),
        ],
      ),
    );
  }
}
