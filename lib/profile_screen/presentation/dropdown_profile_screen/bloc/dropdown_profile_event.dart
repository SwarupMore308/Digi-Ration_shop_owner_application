// ignore_for_file: must_be_immutable

part of 'dropdown_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DropdownProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DropdownProfileEvent extends Equatable {}

/// Event that is dispatched when the DropdownProfile widget is first created.
class DropdownProfileInitialEvent extends DropdownProfileEvent {
  @override
  List<Object?> get props => [];
}
