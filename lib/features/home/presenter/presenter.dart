import 'dart:math';

import 'package:bloc/bloc.dart';

enum State { neutral, loading, success, failure }

final class Presenter extends Cubit<State> {
  Presenter() : super(State.neutral);

  Future<void> go() async {
    if (state != State.loading) {
      emit(State.loading);
      await Future<void>.delayed(const Duration(seconds: 1));
      final flag = Random.secure().nextBool();
      emit(flag ? State.success : State.failure);
    }
  }
}
