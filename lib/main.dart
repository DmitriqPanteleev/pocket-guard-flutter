import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pocket_guard_flutter_app/utils/common/error_handler.dart';

void main(final void _) => runZonedGuarded(_body, _onError);

Future<void> _body() async {
  WidgetsFlutterBinding.ensureInitialized();

  timeDilation = 2.5;

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  await ScreenUtil.ensureScreenSize();

  return runApp(const MaterialApp(
    home: Text(""), // TODO: пока не завезли
  ));
}

void _onError(final Object error, final StackTrace stackTrace) =>
    ErrorHandler.recordError(error, stackTrace);


/* ПО РАЗРАБОТКЕ 
1. сами экраны распределяются по папкам в путь data/ui/{название модуля}
2. нужно максимально декомпозировать элементы и делать это с умом
3. каждый экран - отдельная папка
4. начинать верстать лучше с компонентов. тут есть важная вещь:
    если компонент используется больше, чем на двух экранах (как текстфилд или кнопка),
    то он выносится в data/comonents/{папка с названием компонента}/{название компонента}

    если компонент используется только на одном экране (как контрол ввода кода из эмейла),
    то достаточно будет хранить его в папке экрана (разумеется, внутри /components)
5. по неймингу сделал пример в auth_module (там же пусть и ведется работа над первым модулем)
*/


/* ПО ГИТУ
1. сначала надо создать ветку с названием фичи (например "LaunchScreen_Layout")
2. на нее переходишь через чекаут, в ней все делаешь, потом коммитишь 
  (коммит тоже желательно информативный писать)
3. потом пушишь в эту же ветку и кидаешь pull request, где reviewer'ом ставишь меня
4. если работа доделана до конца, то удаляешь ветку
*/