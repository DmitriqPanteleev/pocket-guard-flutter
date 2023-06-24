import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

import 'package:pocket_guard_flutter_app/features/settings/entities/settings.dart';

final class SettingsCubit extends Cubit<Settings> {
  SettingsCubit(final Settings initial) : super(initial);

  Locale get locale => state.locale;
  set locale(final Locale it) => emit(state.copyWith(locale: it));

  Brightness get brightness => state.brightness;
  set brightness(final Brightness it) => emit(state.copyWith(brightness: it));
}
