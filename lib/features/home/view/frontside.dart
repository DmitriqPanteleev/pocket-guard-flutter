part of 'view.dart';

@immutable
final class _Frontside extends StatelessWidget {
  const _Frontside();

  @override
  Widget build(final BuildContext context) => SizedBox.expand(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 196.h,
              child: const _Head(),
            ),
            const Flexible(
              child: SizedBox(
                width: double.infinity,
                child: _Body(),
              ),
            ),
          ],
        ),
      );
}

@immutable
final class _Head extends StatelessWidget {
  const _Head();

  @override
  Widget build(final BuildContext context) => SafeArea(
        child: ColoredBox(
          color: Colors.transparent,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.w, top: 14.h),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: context.palette?.foreground,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w, bottom: 12.h),
                  child: Text(
                    'Шаг 3',
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    style: context.textTheme?.bodyLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

@immutable
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(final BuildContext context) => Container(
        // TODO(RuslanShirkhanov): extract.
        padding: EdgeInsets.symmetric(horizontal: 16.w)
            .copyWith(top: 24.h, bottom: 8.h),
        decoration: BoxDecoration(
          color: context.palette?.background,
          // TODO(RuslanShirkhanov): extract.
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
          // TODO(RuslanShirkhanov): extract.
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(0.w, -4.h),
              blurRadius: 6.r,
              color: Colors.black.withOpacity(0.15),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FutureBuilder<PackageInfo>(
              future: PackageInfo.fromPlatform(),
              builder: (final context, final snapshot) => Text(
                snapshot.data?.version ?? '...',
                textAlign: TextAlign.start,
                style: context.textTheme?.bodyMedium,
              ),
            ),
            // TODO(RuslanShirkhanov): extract.
            SizedBox(height: 24.h),
            // Placeholder(),
            // TODO(RuslanShirkhanov): extract.
            SizedBox(height: 16.h),
            // Placeholder(), // MaskedInputFormatter('+7 (000) 000-00-00'),
            // TODO(RuslanShirkhanov): extract.
            SizedBox(height: 16.h),
            const Spacer(),
            BlocBuilder<home.Presenter, home.State>(
              builder: (final context, final state) => Align(
                alignment: Alignment.bottomRight,
                child: ui.RoundButton(
                  state: state == home.State.loading
                      ? ui.State.loading
                      : ui.State.enabled,
                  onTap: context.read<home.Presenter>().go,
                ),
              ),
            ),
          ],
        ),
      );
}
