import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:pocket_guard_flutter_app/core/theme/theme.dart' as theme;

extension PaletteX on theme.Palette {
  static final dark = theme.Palette(
    background: const Color(0xff232323),
    surface: const Color(0xff2D2D2D),
    surfaceDisabled: const Color(0xff323232),
    foreground: const Color(0xffFFFFFF).withOpacity(0.8),
    foregroundDisabled: const Color(0xffFFFFFF).withOpacity(0.5),
    primary: const Color(0xff1A397C),
    accent: const Color(0xff0074DF),
    success: const Color(0xff718E1E),
    failure: const Color(0xff8F2D2D),
  );

  static final light = theme.Palette(
    background: const Color(0xffFFFFFF),
    surface: const Color(0xffF2F2F2),
    surfaceDisabled: const Color(0xffF2F2F2).withOpacity(0.8),
    foreground: const Color(0xff232323),
    foregroundDisabled: const Color(0xff232323).withOpacity(0.8),
    primary: Colors.orange,
    accent: Colors.yellow,
    success: const Color(0xff718E1E),
    failure: const Color(0xff8F2D2D),
  );
}

extension BuildContextThemeX on BuildContext {
  TextTheme? get textTheme => Theme.of(this).textTheme;
  theme.Palette? get palette => Theme.of(this).extension<theme.Palette>();
}

extension BrightnessX on Brightness {
  SystemUiOverlayStyle get asSystemUiOverlayStyle => switch (this) {
        Brightness.dark => SystemUiOverlayStyle.dark,
        Brightness.light => SystemUiOverlayStyle.light,
      };

  ThemeMode get asThemeMode => switch (this) {
        Brightness.dark => ThemeMode.dark,
        Brightness.light => ThemeMode.light,
      };
}
