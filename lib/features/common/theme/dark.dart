import 'package:flutter/material.dart';

import 'base.dart';
import 'extensions.dart';

ThemeData get dark => base.copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: PaletteX.dark.background,
      textTheme: base.textTheme.apply(
        bodyColor: PaletteX.dark.foreground,
        displayColor: PaletteX.dark.foreground,
      ),
      extensions: <ThemeExtension<dynamic>>{PaletteX.dark},
    );
