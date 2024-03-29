import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store_app/app_events.dart';
import 'package:online_store_app/app_states.dart';

class AppBlocs extends Bloc<AppEvents, AppStates> {
  AppBlocs() : super(InitStates()) {
    print("App Bloc");
    on<Increment>((event, emit) {
      emit(AppStates(counter: state.counter + 1));
    });
  }
}
