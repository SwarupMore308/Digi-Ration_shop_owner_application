// ignore_for_file: must_be_immutable

part of 'profilescreen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Profilescreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfilescreenEvent extends Equatable {}

/// Event that is dispatched when the Profilescreen widget is first created.
class ProfilescreenInitialEvent extends ProfilescreenEvent {
  @override
  List<Object?> get props => [];
}
