import 'package:flutter/material.dart';

import 'package:pocket_guard_flutter_app/core/theme/theme.dart' as theme;

ThemeData get base => ThemeData(
      useMaterial3: true,
      textTheme: theme.text,
      fontFamily: 'SF-Pro-Display', // TODO(RuslanShirkhanov): extract.
    );
