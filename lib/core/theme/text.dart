import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

TextTheme get text => TextTheme(
      bodyLarge: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        fontSize: 32.sp,
        height: (38 / 32).sp,
        letterSpacing: (32 / 100).sp,
      ),
      bodyMedium: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 18.sp,
        height: (20 / 18).sp,
        letterSpacing: (18 / 100).sp,
      ),
      bodySmall: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
        height: (20 / 16).sp,
        letterSpacing: (16 / 100).sp,
      ),
    );
