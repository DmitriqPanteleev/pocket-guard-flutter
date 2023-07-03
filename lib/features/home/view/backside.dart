part of 'view.dart';

@immutable
final class _Backside extends StatelessWidget {
  const _Backside();

  @override
  Widget build(final BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(gradient: context.palette?.gradient),
      );
}
