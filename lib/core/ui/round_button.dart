import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pocket_guard_flutter_app/core/ui/ui.dart' as ui;
import 'package:pocket_guard_flutter_app/core/theme/theme.dart' as theme;

@immutable
final class RoundButton extends StatelessWidget {
  const RoundButton({
    required this.state,
    required this.onTap,
    super.key,
  });

  final ui.State state;
  final VoidCallback onTap;

  static double get side => 55.r;

  @override
  Widget build(final BuildContext context) => InkWell(
        onTap: state.isEnabled ? onTap : null,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        // TODO(RuslanShirkhanov): extract.
        borderRadius: BorderRadius.circular(360.r),
        child: SizedBox.square(
          dimension: side,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: state.isEnabled
                  ? context.palette?.foreground
                  : context.palette?.foregroundDisabled,
              // TODO(RuslanShirkhanov): extract.
              borderRadius: BorderRadius.circular(360.r),
            ),
            child: AnimatedSwitcher(
              // TODO(RuslanShirkhanov): extract.
              duration: const Duration(milliseconds: 150),
              child: state.isEnabled
                  // TODO(RuslanShirkhanov): fix.
                  ? Icon(
                      Icons.arrow_forward,
                      size: 32.r,
                      color: context.palette?.background,
                    )
                  // TODO(RuslanShirkhanov): fix.
                  : CircularProgressIndicator(
                      strokeWidth: 1.5.w,
                      color: context.palette?.surfaceDisabled,
                    ),
            ),
          ),
        ),
      );
}
