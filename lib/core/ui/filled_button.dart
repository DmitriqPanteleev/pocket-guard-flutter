import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocket_guard_flutter_app/core/core.dart';

class FilledButton extends StatelessWidget {
  const FilledButton({super.key});

  @override
  Widget build(final BuildContext context) =>
      Platform.isAndroid ? _materialButton(context) : _cupertinoButton(context);

  ElevatedButton _materialButton(final BuildContext context) => ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.palette?.primary),
          overlayColor: MaterialStateProperty.all(context.palette?.accent),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size(double.maxFinite, double.minPositive),
          ),
        ),
        onPressed: () {}, // TODO(Ars): implement navigation to ...
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            'Войти',
            style: context.textTheme?.bodySmall,
          ),
        ),
      );
}

CupertinoButton _cupertinoButton(final BuildContext context) => CupertinoButton(
      borderRadius: BorderRadius.circular(10),
      color: context.palette?.primary,
      pressedOpacity: 0.2,
      child: SizedBox(
        width: double.maxFinite,
        child: Text(
          L.of(context).login,
          textAlign: TextAlign.center,
          style: context.textTheme?.bodySmall,
        ),
      ),
      onPressed: () {}, // TODO(Ars): implement navigation to ...
    );
