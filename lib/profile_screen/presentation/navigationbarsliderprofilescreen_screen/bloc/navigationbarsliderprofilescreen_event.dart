// ignore_for_file: must_be_immutable

part of 'navigationbarsliderprofilescreen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Navigationbarsliderprofilescreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NavigationbarsliderprofilescreenEvent extends Equatable {}

/// Event that is dispatched when the Navigationbarsliderprofilescreen widget is first created.
class NavigationbarsliderprofilescreenInitialEvent
    extends NavigationbarsliderprofilescreenEvent {
  @override
  List<Object?> get props => [];
}
