import 'package:flutter/material.dart';

import 'base.dart';
import 'extensions.dart';

ThemeData get light => base.copyWith(
      brightness: Brightness.light,
      scaffoldBackgroundColor: PaletteX.light.background,
      textTheme: base.textTheme.apply(
        bodyColor: PaletteX.light.foreground,
        displayColor: PaletteX.light.foreground,
      ),
      extensions: <ThemeExtension<dynamic>>{PaletteX.light},
    );
