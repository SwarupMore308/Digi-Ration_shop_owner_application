import 'package:digi_ration_shop_owner_application/profile_screen/presentation/navigationbarsliderprofilescreen_screen/models/navigationbarsliderprofilescreen_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/core/app_export.dart';
part 'navigationbarsliderprofilescreen_event.dart';
part 'navigationbarsliderprofilescreen_state.dart';

/// A bloc that manages the state of a Navigationbarsliderprofilescreen according to the event that is dispatched to it.
class NavigationbarsliderprofilescreenBloc extends Bloc<
    NavigationbarsliderprofilescreenEvent,
    NavigationbarsliderprofilescreenState> {
  NavigationbarsliderprofilescreenBloc(super.initialState) {
    on<NavigationbarsliderprofilescreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NavigationbarsliderprofilescreenInitialEvent event,
    Emitter<NavigationbarsliderprofilescreenState> emit,
  ) async {}
}
