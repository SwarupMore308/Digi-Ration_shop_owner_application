import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:profilescreen/presentation/profilescreen_screen/models/profilescreen_model.dart';
part 'profilescreen_event.dart';
part 'profilescreen_state.dart';

/// A bloc that manages the state of a Profilescreen according to the event that is dispatched to it.
class ProfilescreenBloc extends Bloc<ProfilescreenEvent, ProfilescreenState> {
  ProfilescreenBloc(ProfilescreenState initialState) : super(initialState) {
    on<ProfilescreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfilescreenInitialEvent event,
    Emitter<ProfilescreenState> emit,
  ) async {}
}
