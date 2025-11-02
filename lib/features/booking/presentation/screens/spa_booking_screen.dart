import 'package:figma_frontend_relaxation/core/localizations/app_localizations.dart';
import 'package:figma_frontend_relaxation/core/styles/text_typography.dart';
import 'package:figma_frontend_relaxation/features/booking/presentation/bloc/spa_cart_bloc.dart';
import 'package:figma_frontend_relaxation/features/booking/presentation/widgets/additional_services.dart';
import 'package:figma_frontend_relaxation/features/booking/presentation/widgets/program_container.dart';
import 'package:figma_frontend_relaxation/features/booking/presentation/widgets/program_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:figma_frontend_relaxation/gen/assets.gen.dart';
import 'package:figma_frontend_relaxation/core/constants/app_colors.dart';

class SpaBookingScreen extends StatelessWidget {
  const SpaBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (_) => SpaCartBloc(),
      child: Scaffold(
      backgroundColor: AppColors.backgroundColorLight,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  Assets.icons.additionalServices.path,
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: screenHeight * 0.4,
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: SafeArea(
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: SvgPicture.asset(
                        Assets.icons.backArrow.path,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Transform.translate(
              offset: const Offset(0, -20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColorLight,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.programNumberTitle,
                      style: TextTypography.headline.large.copyWith(
                        color: AppColors.textColorDark,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      AppLocalizations.recoveryAndRelaxationProgram,
                      style: TextTypography.paragraph.medium.copyWith(
                        color: AppColors.textColorDark,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ProgramContainer(),
                    const SizedBox(height: 20),
                    Text(
                      AppLocalizations.programContentTitle,
                      style: TextTypography.headline.medium.copyWith(
                        color: AppColors.textColorDark,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ProgramContent(),  
                    const SizedBox(height: 20),
                    Text(
                      AppLocalizations.additionalServicesTitle,
                      style: TextTypography.headline.medium.copyWith(
                        color: AppColors.textColorDark,
                      ),
                    ),
                    const SizedBox(height: 12),   
                    Center(
                      child: AdditionalServices(),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              BlocBuilder<SpaCartBloc, SpaCartState>(
                                builder: (context, state) {
                                  return Text(
                                    '${state.totalPrice}',
                                    style: TextTypography.headline.small
                                        .copyWith(
                                          color: AppColors.textColorDark,
                                        ),
                                  );
                                },
                              ),
                              const SizedBox(width: 5),
                              Image.asset(
                                Assets.icons.tenge.path,
                                width: 20,
                                height: 20,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                          BlocBuilder<SpaCartBloc, SpaCartState>(
                            builder: (context, state) {
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.accentYellowColor,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 13,
                                    horizontal: 32,
                                  ),
                                ),
                                onPressed: () {
                                  context.read<SpaCartBloc>().add(
                                    ConfirmBookingEvent(),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      backgroundColor: AppColors.lightGreen,
                                      content: Text(
                                        AppLocalizations.bookingConfirmed,
                                      ),
                                    ),
                                  );
                                },
                                child: Text(
                                  AppLocalizations.toBook,
                                  style: TextTypography.headline.small.copyWith(
                                    color: AppColors.textColorLight,
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
