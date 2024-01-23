import 'package:digi_ration_shop_owner_application/profile_screen/presentation/app_navigation_screen/models/app_navigation_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/core/app_export.dart';
part 'app_navigation_event.dart';
part 'app_navigation_state.dart';

/// A bloc that manages the state of a AppNavigation according to the event that is dispatched to it.
class AppNavigationBloc extends Bloc<AppNavigationEvent, AppNavigationState> {
  AppNavigationBloc(super.initialState) {
    on<AppNavigationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppNavigationInitialEvent event,
    Emitter<AppNavigationState> emit,
  ) async {}
}
