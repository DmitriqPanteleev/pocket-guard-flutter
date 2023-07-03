import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pocket_guard_flutter_app/core/theme/theme.dart' as theme;

import 'package:pocket_guard_flutter_app/features/settings/settings.dart'
    as settings;
import 'package:pocket_guard_flutter_app/features/home/home.dart' as home;

@immutable
final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) => BlocProvider<settings.Presenter>(
        create: (final context) => settings.Presenter(settings.system),
        child: const AppView(),
      );
}

const designSize = Size(375, 812);

@immutable
final class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(final BuildContext context) =>
      BlocConsumer<settings.Presenter, settings.Model>(
        listener: (final context, final state) =>
            SystemChrome.setSystemUIOverlayStyle(
          state.brightness.asSystemUiOverlayStyle,
        ),
        builder: (final context, final state) => ScreenUtilInit(
          designSize: designSize,
          builder: (final context, final child) => OverlaySupport.global(
            child: MaterialApp(
              theme: theme.light,
              darkTheme: theme.dark,
              themeMode: state.brightness.asThemeMode,
              home: child,
            ),
          ),
          child: const home.View(),
        ),
      );
}
