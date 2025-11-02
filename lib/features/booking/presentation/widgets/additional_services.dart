import 'package:figma_frontend_relaxation/features/booking/presentation/widgets/spa_price_container.dart';
import 'package:flutter/material.dart';

class AdditionalServices extends StatelessWidget {
  const AdditionalServices({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [5000, 3000, 1000, 2000];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(services.length, (index) {
          final price = services[index];
          return Row(
            children: [
              SpaPriceContainer(
                serviceId: index,
                price: price,
              ),
              const SizedBox(width: 7),
            ],
          );
        }),
      ),
    );
  }
}
