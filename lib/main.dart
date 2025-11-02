import 'package:figma_frontend_relaxation/features/booking/presentation/bloc/spa_cart_bloc.dart';
import 'package:figma_frontend_relaxation/features/booking/presentation/screens/spa_booking_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SpaCartBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SPA Booking Design Screen',
        home: SpaBookingScreen(),
      ),
    );
  }
}
