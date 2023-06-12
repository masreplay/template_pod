import 'package:starter/common_lib.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.dimension = 64});

  final double dimension;

  @override
  Widget build(BuildContext context) {
    return Assets.images.logo.image(height: dimension);
  }
}
