import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

import 'package:pocket_guard_flutter_app/core/theme/theme.dart' as theme;

@immutable
sealed class Field extends StatelessWidget {
  const Field({super.key});

  @override
  Widget build(final BuildContext context) => TextFormField(
        // TODO(RuslanShirkhanov): implement.
        // enabled: enabled,
        // readOnly: readonly,
        // autofocus: autofocus,
        // onChanged: onChanged,
        // keyboardType: keyboardType,
        // textInputAction: textInputAction,
        // textCapitalization: textCapitalization,
        // textAlign: textAlign,
        // textAlignVertical: textAlignVertical,
        // TODO(RuslanShirkhanov): extract.
        style: TextStyle(
          fontFamily: 'SF Pro Display',
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          height: (20 / 16).h,
          letterSpacing: (16 / 100).w,
          color: context.palette?.foreground,
        ),
        cursorColor: context.palette?.accent,
        cursorWidth: 1.w,
        cursorHeight: 24.h,
        scrollPadding: EdgeInsets.zero,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            // TODO(RuslanShirkhanov): extract.
            borderRadius: BorderRadius.circular(16.r),
          ),
          // TODO(RuslanShirkhanov): extract.
          contentPadding: EdgeInsets.symmetric(vertical: 16.h),
          filled: true,
          fillColor: context.palette?.surface,
          prefixIconColor: context.palette?.foreground,
          // TODO(RuslanShirkhanov): extract.
          prefixIcon: const Icon(Icons.account_box),
        ),
      );
}
