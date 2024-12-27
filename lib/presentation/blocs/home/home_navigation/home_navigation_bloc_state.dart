part of 'home_navigation_bloc_bloc.dart';

class HomeNavigationState extends Equatable {
  final int currentIndex;

  const HomeNavigationState(this.currentIndex);

  HomeNavigationState copyWith({int? currentIndex}) {
    return HomeNavigationState(
      currentIndex ?? this.currentIndex,
    );
  }

  @override
  List<Object?> get props => [currentIndex];
}

// final class HomeNavigationBlocInitial extends HomeNavigationBlocState {}
