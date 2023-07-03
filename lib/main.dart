import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pocket_guard_flutter_app/app.dart';

void main() => runZonedGuarded(_body, _onError);

Future<void> _body() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  timeDilation = 2.5;

  await ScreenUtil.ensureScreenSize();

  return runApp(const App());
}

void _onError(final Object error, final StackTrace stackTrace) =>
    log('error', error: error, stackTrace: stackTrace);
