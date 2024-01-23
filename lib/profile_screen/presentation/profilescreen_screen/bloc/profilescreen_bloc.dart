import 'package:digi_ration_shop_owner_application/profile_screen/presentation/profilescreen_screen/models/profilescreen_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/core/app_export.dart';
part 'profilescreen_event.dart';
part 'profilescreen_state.dart';

/// A bloc that manages the state of a Profilescreen according to the event that is dispatched to it.
class ProfilescreenBloc extends Bloc<ProfilescreenEvent, ProfilescreenState> {
  // ignore: use_super_parameters
  ProfilescreenBloc(ProfilescreenState initialState) : super(initialState) {
    on<ProfilescreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfilescreenInitialEvent event,
    Emitter<ProfilescreenState> emit,
  ) async {}
}
