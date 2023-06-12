import 'package:starter/common_lib.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.images.logo.image();
  }
}
