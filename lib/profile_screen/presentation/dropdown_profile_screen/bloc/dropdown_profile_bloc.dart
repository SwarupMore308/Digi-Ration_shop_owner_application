import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:profilescreen/presentation/dropdown_profile_screen/models/dropdown_profile_model.dart';
part 'dropdown_profile_event.dart';
part 'dropdown_profile_state.dart';

/// A bloc that manages the state of a DropdownProfile according to the event that is dispatched to it.
class DropdownProfileBloc
    extends Bloc<DropdownProfileEvent, DropdownProfileState> {
  DropdownProfileBloc(DropdownProfileState initialState) : super(initialState) {
    on<DropdownProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DropdownProfileInitialEvent event,
    Emitter<DropdownProfileState> emit,
  ) async {}
}
