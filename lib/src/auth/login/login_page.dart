import 'package:riverpod_state/riverpod_state.dart';
import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/auth_repository.dart';
import 'package:starter/service/clients/_clients.dart';

part 'login_page.g.dart';

@riverpod
class Login extends _$Login with AsyncXNotifierMixin<LoginResponse> {
  @override
  BuildXCallback<LoginResponse> build() => idle();

  @useResult
  RunXCallback<LoginResponse> run(LoginRequest data) =>
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
    final loginState = ref.watch(loginProvider);

    final phoneNumber = useTextEditingController();
    final password = useTextEditingController();

    final passwordObscure = useState(true);

    final theme = Theme.of(context);
    return Scaffold(
      body: FormBody(
        formKey: _formKey,
        centered: true,
        children: [
          const Logo(),
          TextFormField(
            controller: phoneNumber,
            validator: context.validator.required().build(),
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              label: Text(context.l10n.phoneNumber),
            ),
          ),
          PasswordTextInput(
            controller: password,
            passwordObscure: passwordObscure,
          ),
          FilledButton(
            onPressed: loginState.isLoading
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
                        context.router.replace(
                          const MainRoute(children: [HomeRoute()]),
                        );
                      },
                      error: (error, stackTrace) {
                        context.showErrorSnackBar(
                          context.l10n.defaultErrorMessage,
                        );
                      },
                    );
                  },
            child: loginState.isLoading
                ? const LoadingWidget()
                : Text(context.l10n.login),
          ),
          TextButton(
            onPressed: () {
              context.router.push(const SignUpRoute());
            },
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: "Don't have an account? "),
                  TextSpan(
                    text: "Sign up",
                    style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
