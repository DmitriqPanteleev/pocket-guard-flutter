import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocket_guard_flutter_app/core/core.dart';

import 'package:pocket_guard_flutter_app/features/start/start.dart' as start;
import 'package:pocket_guard_flutter_app/core/ui/ui.dart' as ui;
import 'package:pocket_guard_flutter_app/features/settings/settings.dart'
    as settings;

@immutable
final class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(final BuildContext context) => BlocProvider<start.Presenter>(
        create: (final context) => start.Presenter(),
        child: const _View(),
      );
}

@immutable
final class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(final BuildContext context) => Scaffold(
        backgroundColor: context.palette?.background,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/img.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ui.FilledButton(
                text: L.of(context).login,
                onPressed: () {}, // TODO(Ars): implement navigation to ...
              ),
              const SizedBox(height: 8),
              ui.TextButtonCustom(
                text: L.of(context).createAccount,
                onPressed: context
                    .read<settings.Presenter>()
                    .toggleBrightness, // TODO(Ars): implement navigation to ...
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      );
}
