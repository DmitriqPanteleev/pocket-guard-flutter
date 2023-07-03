import 'package:flutter/material.dart';

import 'package:pocket_guard_flutter_app/core/theme/theme.dart' as theme;

ThemeData get dark => theme.base.copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: theme.PaletteX.dark.background,
      textTheme: theme.base.textTheme.apply(
        bodyColor: theme.PaletteX.dark.foreground,
        displayColor: theme.PaletteX.dark.foreground,
      ),
      extensions: <ThemeExtension<dynamic>>{theme.PaletteX.dark},
    );
