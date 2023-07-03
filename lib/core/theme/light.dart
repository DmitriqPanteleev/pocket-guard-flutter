import 'package:flutter/material.dart';

import 'package:pocket_guard_flutter_app/core/theme/theme.dart' as theme;

ThemeData get light => theme.base.copyWith(
      brightness: Brightness.light,
      scaffoldBackgroundColor: theme.PaletteX.light.background,
      textTheme: theme.base.textTheme.apply(
        bodyColor: theme.PaletteX.light.foreground,
        displayColor: theme.PaletteX.light.foreground,
      ),
      extensions: <ThemeExtension<dynamic>>{theme.PaletteX.light},
    );
