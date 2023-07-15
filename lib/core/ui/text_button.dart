import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pocket_guard_flutter_app/core/core.dart';
import 'package:pocket_guard_flutter_app/features/settings/settings.dart'
    as settings;

@immutable
final class TextButtonCustom extends StatelessWidget {
  const TextButtonCustom({super.key});

  @override
  Widget build(final BuildContext context) =>
      Platform.isAndroid ? _materialButton(context) : _cupertinoButton(context);
}

CupertinoButton _cupertinoButton(final BuildContext context) => CupertinoButton(
      onPressed: context.read<settings.Presenter>().toggleBrightness,
      child: Text(
        L.of(context).createAccount, // TODO(Ars): implement navigation to ...
        style: context.textTheme?.bodySmall,
      ),
    );

TextButton _materialButton(final BuildContext context) => TextButton(
      onPressed: context
          .read<settings.Presenter>()
          .toggleBrightness, // TODO(Ars): implement navigation to ...
      child: Text(
        L.of(context).createAccount,
        style: context.textTheme?.bodySmall,
      ),
    );
