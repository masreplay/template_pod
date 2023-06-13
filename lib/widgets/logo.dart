import 'package:starter/common_lib.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.dimension = 64});

  final double dimension;

  @override
  Widget build(BuildContext context) {
    return Assets.images.logo.image(height: dimension);
  }
}

class Slogan extends StatelessWidget {
  const Slogan({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RowPadded(
      children: [
        const Logo(dimension: 36),
        Text(
          context.l10n.appName,
          style: theme.textTheme.titleLarge,
        ),
      ],
    );
  }
}
