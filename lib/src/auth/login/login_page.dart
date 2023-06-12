import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/auth_repository.dart';
import 'package:starter/riverpod/riverpod.dart';
import 'package:starter/service/clients/_clients.dart';
import 'package:starter/widgets/logo.dart';

part 'login_page.g.dart';

@riverpod
class Login extends _$Login with AsyncXProvider {
  @override
  Future<AsyncX<LoginResponse>> build() => AsyncX.idle();

  @useResult
  Future<AsyncValue<AsyncX<LoginResponse>>> run(LoginRequest data) =>
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
    final login = ref.watch(loginProvider);

    final phoneNumber = useTextEditingController();
    final password = useTextEditingController();

    final passwordObscure = useState(true);

    return Scaffold(
      body: FormBody(
        formKey: _formKey,
        centered: true,
        children: [
          const Logo(),
          TextFormField(
            controller: phoneNumber,
            validator: context.validator.required().build(),
            decoration: InputDecoration(
              label: Text(context.l10n.phoneNumber),
            ),
          ),
          TextFormField(
            controller: password,
            validator: context.validator.required().build(),
            obscureText: passwordObscure.value,
            decoration: InputDecoration(
              label: Text(context.l10n.password),
              suffixIcon: IconButton(
                onPressed: () => passwordObscure.value = !passwordObscure.value,
                icon: Icon(
                  passwordObscure.value
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: login.isLoading
                ? null
                : () async {
                    if (_formKey.isNotValid()) return;
                    final data = LoginRequest(
                      username: phoneNumber.text,
                      password: password.text,
                    );

                    final state =
                        await ref.read(loginProvider.notifier).run(data);

                    state.whenDataOrError(
                      data: (data) {
                        context.showSuccessSnackBar(context.l10n.loginSuccess);
                      },
                      error: (Object? error, StackTrace? stackTrace) {},
                    );
                  },
            child: login.isLoading
                ? const LoadingWidget()
                : Text(context.l10n.login),
          ),
        ],
      ),
    );
  }
}
