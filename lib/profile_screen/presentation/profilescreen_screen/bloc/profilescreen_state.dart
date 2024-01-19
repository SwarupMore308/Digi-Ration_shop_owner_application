// ignore_for_file: must_be_immutable

part of 'profilescreen_bloc.dart';

/// Represents the state of Profilescreen in the application.
class ProfilescreenState extends Equatable {
  ProfilescreenState({this.profilescreenModelObj});

  ProfilescreenModel? profilescreenModelObj;

  @override
  List<Object?> get props => [
        profilescreenModelObj,
      ];
  ProfilescreenState copyWith({ProfilescreenModel? profilescreenModelObj}) {
    return ProfilescreenState(
      profilescreenModelObj:
          profilescreenModelObj ?? this.profilescreenModelObj,
    );
  }
}
