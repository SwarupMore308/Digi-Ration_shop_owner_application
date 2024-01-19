// ignore_for_file: must_be_immutable

part of 'dropdown_profile_bloc.dart';

/// Represents the state of DropdownProfile in the application.
class DropdownProfileState extends Equatable {
  DropdownProfileState({this.dropdownProfileModelObj});

  DropdownProfileModel? dropdownProfileModelObj;

  @override
  List<Object?> get props => [
        dropdownProfileModelObj,
      ];
  DropdownProfileState copyWith(
      {DropdownProfileModel? dropdownProfileModelObj}) {
    return DropdownProfileState(
      dropdownProfileModelObj:
          dropdownProfileModelObj ?? this.dropdownProfileModelObj,
    );
  }
}
