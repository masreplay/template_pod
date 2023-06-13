import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/auth_repository.dart';
import 'package:starter/data/shared_preferences/authentication_provider.dart';
import 'package:starter/riverpod/riverpod.dart';
import 'package:starter/service/clients/_clients.dart';
import 'package:starter/widgets/password_text_input.dart';

part 'login_page.g.dart';

@riverpod
class Login extends _$Login with AsyncXProvider {
  @override
  Future<AsyncX<LoginResponse>> build() => AsyncX.idle();

  @useResult
  Future<AsyncValue<AsyncX<LoginResponse>>> run(LoginRequest data) =>
      handle(() async {
        final result = await ref.read(authRepositoryProvider).login(data);
        await ref
            .read(authenticationProvider.notifier)
            .update((state) => result);
        return result;
      });
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
            child: login.isLoading
                ? const LoadingWidget()
                : Text(context.l10n.login),
          ),
          TextButton(
            onPressed: () {
              
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
