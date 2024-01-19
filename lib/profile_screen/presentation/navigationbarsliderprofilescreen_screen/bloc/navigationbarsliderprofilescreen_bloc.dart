import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:profilescreen/presentation/navigationbarsliderprofilescreen_screen/models/navigationbarsliderprofilescreen_model.dart';
part 'navigationbarsliderprofilescreen_event.dart';
part 'navigationbarsliderprofilescreen_state.dart';

/// A bloc that manages the state of a Navigationbarsliderprofilescreen according to the event that is dispatched to it.
class NavigationbarsliderprofilescreenBloc extends Bloc<
    NavigationbarsliderprofilescreenEvent,
    NavigationbarsliderprofilescreenState> {
  NavigationbarsliderprofilescreenBloc(
      NavigationbarsliderprofilescreenState initialState)
      : super(initialState) {
    on<NavigationbarsliderprofilescreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NavigationbarsliderprofilescreenInitialEvent event,
    Emitter<NavigationbarsliderprofilescreenState> emit,
  ) async {}
}
