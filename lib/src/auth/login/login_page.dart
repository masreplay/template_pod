import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/auth_repository.dart';
import 'package:starter/riverpod/riverpod.dart';
import 'package:starter/service/service.dart';

part 'login_page.g.dart';

@riverpod
class Login extends _$Login with AsyncXProvider {
  @override
  Future<AsyncX<LoginResponse>> build() => AsyncX.idle();

  Future<void> run(LoginRequest data) =>
      handle(() => ref.read(authRepositoryProvider).login(data));
}

@RoutePage()
class LoginPage extends StatefulHookConsumerWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final phoneNumber = useTextEditingController();
    final password = useTextEditingController();
    return Scaffold(
      body: FormBody(
        formKey: _formKey,
        centered: true,
        children: [
          TextFormField(
            controller: phoneNumber,
            decoration: InputDecoration(
              label: Text(context.l10n.phoneNumber),
            ),
          ),
          TextFormField(
            controller: password,
            decoration: InputDecoration(
              label: Text(context.l10n.password),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              if (_formKey.isNotValid()) return;
              final data = LoginRequest(
                username: phoneNumber.text,
                password: password.text,
              );

              await ref.read(loginProvider.notifier).run(data);
              ref.read(loginProvider).whenDataOrError(
                    data: (data) {},
                  );
            },
            child: Text(context.l10n.login),
          ),
        ],
      ),
    );
  }
}
