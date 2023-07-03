import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:pocket_guard_flutter_app/features/settings/settings.dart'
    as settings;

extension BrightnessToggledX on Brightness {
  Brightness get toggled => switch (this) {
        Brightness.dark => Brightness.light,
        Brightness.light => Brightness.dark,
      };
}

extension SettingsCubitToggleX on settings.Presenter {
  void toggleBrightness() => brightness = brightness.toggled;
}

@protected
const _default =
    settings.Model(locale: Locale('ru', 'RU'), brightness: Brightness.dark);

settings.Model get system {
  final platformDispatcher = PlatformDispatcher.instance;
  return _default.copyWith(
    locale: platformDispatcher.locale,
    brightness: platformDispatcher.platformBrightness,
  );
}
