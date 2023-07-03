import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pocket_guard_flutter_app/core/ui/ui.dart' as ui;
import 'package:pocket_guard_flutter_app/core/theme/theme.dart' as theme;

import 'package:pocket_guard_flutter_app/features/settings/settings.dart'
    as settings;
import 'package:pocket_guard_flutter_app/features/home/home.dart' as home;

part 'backside.dart';
part 'frontside.dart';

@immutable
final class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(final BuildContext context) => BlocProvider<home.Presenter>(
        create: (final context) => home.Presenter(),
        child: const _View(),
      );
}

@immutable
final class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(final BuildContext context) =>
      BlocListener<home.Presenter, home.State>(
        listener: (final context, final state) {
          if (state == home.State.success) {
            context.read<settings.Presenter>().toggleBrightness();
          }
          if (state == home.State.failure) {
            // TODO(RuslanShirkhanov): fix.
            showSimpleNotification(
              const ui.Toast(),
              context: context,
              elevation: 0,
              position: NotificationPosition.bottom,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w)
                  .copyWith(bottom: MediaQuery.of(context).viewInsets.bottom.h),
              background: Colors.transparent,
              foreground: Colors.transparent,
              duration: const Duration(seconds: 1),
              slideDismissDirection: DismissDirection.horizontal,
            );
          }
        },
        child: const Scaffold(
          resizeToAvoidBottomInset: true,
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[_Backside(), _Frontside()],
          ),
        ),
      );
}
