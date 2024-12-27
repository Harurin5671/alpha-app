import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_navigation_bloc_event.dart';
part 'home_navigation_bloc_state.dart';

class HomeNavigationBloc extends Bloc<HomeNavigationEvent, HomeNavigationState> {
  HomeNavigationBloc() : super(HomeNavigationState(0)) {
    on<ChangeIndexEvent>(_onChangeIndex);
  }
  void _onChangeIndex(ChangeIndexEvent event, Emitter<HomeNavigationState> emit) {
    emit(state.copyWith(currentIndex: event.index));
  }
}
