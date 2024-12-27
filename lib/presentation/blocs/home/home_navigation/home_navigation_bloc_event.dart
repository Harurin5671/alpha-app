part of 'home_navigation_bloc_bloc.dart';

sealed class HomeNavigationEvent extends Equatable {
  const HomeNavigationEvent();

  @override
  List<Object> get props => [];
}

class ChangeIndexEvent extends HomeNavigationEvent {
  final int index;

  const ChangeIndexEvent(this.index);

  @override
  List<Object> get props => [index];
}
