// ignore_for_file: must_be_immutable

part of 'navigationbarsliderprofilescreen_bloc.dart';

/// Represents the state of Navigationbarsliderprofilescreen in the application.
class NavigationbarsliderprofilescreenState extends Equatable {
  NavigationbarsliderprofilescreenState(
      {this.navigationbarsliderprofilescreenModelObj});

  NavigationbarsliderprofilescreenModel?
      navigationbarsliderprofilescreenModelObj;

  @override
  List<Object?> get props => [
        navigationbarsliderprofilescreenModelObj,
      ];
  NavigationbarsliderprofilescreenState copyWith(
      {NavigationbarsliderprofilescreenModel?
          navigationbarsliderprofilescreenModelObj}) {
    return NavigationbarsliderprofilescreenState(
      navigationbarsliderprofilescreenModelObj:
          navigationbarsliderprofilescreenModelObj ??
              this.navigationbarsliderprofilescreenModelObj,
    );
  }
}
