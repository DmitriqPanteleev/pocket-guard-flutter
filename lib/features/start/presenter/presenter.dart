import 'package:bloc/bloc.dart';

enum State { neutral, loading, succes, failure }

final class Presenter extends Cubit<State> {
  Presenter() : super(State.neutral);

  Future<void> switchTheme() async {
    emit(State.succes);
  }
}
