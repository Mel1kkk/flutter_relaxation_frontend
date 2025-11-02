import 'package:figma_frontend_relaxation/core/constants/app_colors.dart';
import 'package:figma_frontend_relaxation/core/localizations/app_localizations.dart';
import 'package:figma_frontend_relaxation/core/styles/text_typography.dart';
import 'package:figma_frontend_relaxation/features/booking/presentation/bloc/spa_cart_bloc.dart';
import 'package:figma_frontend_relaxation/features/booking/presentation/widgets/custom_list.dart';
import 'package:figma_frontend_relaxation/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SpaPriceContainer extends StatelessWidget {
  final int price;
  final int serviceId;

  const SpaPriceContainer({
    super.key,
    required this.price,
    required this.serviceId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpaCartBloc, SpaCartState>(
      builder: (context, state) {
        final isAdded = state.addedServiceIds.contains(serviceId);
        return Container(
          height: 356,
          width: 254,
          decoration: BoxDecoration(
            color: isAdded
                ? AppColors.accentYellowColorWithOpacity
                : AppColors.lightGrayColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
                child: SizedBox(
                  height: 164,
                  width: 254,
                  child: Image.asset(
                    Assets.icons.additionalServices.path,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 10,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.classicRelaxingMassageTitle,
                      style: TextTypography.headline.small.copyWith(
                        color: AppColors.textColorDark,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      AppLocalizations.classicRelaxingMassageSubtitle,
                      style: TextTypography.paragraph.small.copyWith(
                        color: AppColors.textColorDark,
                      ),
                    ),
                    const SizedBox(height: 7),                
                    CustomList(
                      iconPath: Assets.icons.alarm.path,
                      text: AppLocalizations.twoHours,
                      enableLeftPadding: false,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          '$price',
                          style: TextTypography.headline.small.copyWith(
                          color: AppColors.textColorDark,
                          fontSize: 12,
                        ),                      
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          height: 16,
                          width: 16,
                          child: Image.asset(
                            Assets.icons.tenge.path,
                          ),
                        ),
                        Spacer(),
                        // Add button
                        GestureDetector(
                          onTap: () {
                            context.read<SpaCartBloc>().add(
                              ToggleServiceEvent(
                                serviceId: serviceId,
                                price: price,
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 7,
                              bottom: 7,
                              left: 16,
                              right: 16,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: AppColors.accentYellowColor, 
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  Assets.icons.yellowPlus.path,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  isAdded
                                      ? AppLocalizations.addedToCard
                                      : AppLocalizations.addToCard,
                                  style: TextTypography.paragraph.xMedium.copyWith(
                                    color: AppColors.accentYellowColor,
                                  ),
                                ),                   
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),      
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
