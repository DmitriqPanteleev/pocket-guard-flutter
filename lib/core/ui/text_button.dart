import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pocket_guard_flutter_app/core/core.dart';

@immutable
final class TextButtonCustom extends StatelessWidget {
  const TextButtonCustom({
    required this.text,
    required this.onPressed,
    super.key,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(final BuildContext context) =>
      Platform.isAndroid ? _materialButton(context) : _cupertinoButton(context);

  CupertinoButton _cupertinoButton(final BuildContext context) =>
      CupertinoButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: context.textTheme?.bodySmall,
        ),
      );

  TextButton _materialButton(final BuildContext context) => TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: context.textTheme?.bodySmall,
        ),
      );
}
