import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// Events
abstract class SpaCartEvent extends Equatable {
  const SpaCartEvent();

  @override
  List<Object?> get props => [];
}

class ToggleServiceEvent extends SpaCartEvent {
  final int serviceId;
  final int price;

  const ToggleServiceEvent({required this.serviceId, required this.price});

  @override
  List<Object?> get props => [serviceId, price];
}

class ConfirmBookingEvent extends SpaCartEvent {
  const ConfirmBookingEvent();
}

//States
class SpaCartState extends Equatable {
  final Set<int> addedServiceIds;
  final int totalPrice;

  const SpaCartState({
    required this.addedServiceIds,
    required this.totalPrice,
  });

  factory SpaCartState.initial() {
    return const SpaCartState(
      addedServiceIds: {},
      totalPrice: 0,
    );
  }

  SpaCartState copyWith({
    Set<int>? addedServiceIds,
    int? totalPrice,
  }) {
    return SpaCartState(
      addedServiceIds: addedServiceIds ?? this.addedServiceIds,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  @override
  List<Object?> get props => [addedServiceIds, totalPrice];
}


//Bloc
class SpaCartBloc extends Bloc<SpaCartEvent, SpaCartState> {
  SpaCartBloc() : super(SpaCartState.initial()) {
    on<ToggleServiceEvent>(_onToggleService);
    on<ConfirmBookingEvent>(_onConfirmBooking);
  }

  void _onToggleService(ToggleServiceEvent event, Emitter<SpaCartState> emit) {
    final currentIds = Set<int>.from(state.addedServiceIds);
    int newTotal = state.totalPrice;

    if (currentIds.contains(event.serviceId)) {
      currentIds.remove(event.serviceId);
      newTotal -= event.price;
      if (kDebugMode) {
        print('BLOC: Service ${event.serviceId} removed. New total: $newTotal');
      }
    } else {
      currentIds.add(event.serviceId);
      newTotal += event.price;
      if (kDebugMode) {
        print('BLOC: Service ${event.serviceId} added. New total: $newTotal');
      }
    }

    emit(state.copyWith(addedServiceIds: currentIds, totalPrice: newTotal));
  }

  void _onConfirmBooking(ConfirmBookingEvent event, Emitter<SpaCartState> emit) {
    emit(SpaCartState.initial());
    if (kDebugMode) {
      print('BLOC: Booking confirmed. State reset to initial.');
    }
  }
}
