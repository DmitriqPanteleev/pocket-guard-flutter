import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pocket_guard_flutter_app/core/theme/theme.dart' as theme;

@immutable
final class Toast extends StatelessWidget {
  const Toast({super.key});

  @override
  Widget build(final BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: context.palette?.surface,
        ),
        child: Text(
          'ОшибОЧКА',
          textAlign: TextAlign.start,
          style: context.textTheme?.bodySmall,
        ),
      );
}
