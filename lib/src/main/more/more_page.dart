import 'package:starter/common_lib.dart';
import 'package:starter/src/main/more/logout_provider.dart';

@RoutePage()
class MorePage extends ConsumerStatefulWidget {
  const MorePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MorePageState();
}

class _MorePageState extends ConsumerState<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text(context.l10n.logout),
            onTap: () {
              logout(ref: ref);
            },
          ),
        ],
      ),
    );
  }
}



