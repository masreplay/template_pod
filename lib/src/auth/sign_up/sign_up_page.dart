import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/_repositories.dart';
import 'package:starter/data/repositories/auth_repository.dart';
import 'package:starter/data/shared_preferences/shared_preferences.dart';
import 'package:starter/riverpod/riverpod.dart';

part 'sign_up_page.g.dart';

@riverpod
class SignUp extends _$SignUp with AsyncXProvider<SignUpResponse> {
  @override
  Future<AsyncX<SignUpResponse>> build() => AsyncX.idle();

  @useResult
  Future<AsyncValue<AsyncX<SignUpResponse>>> run(SignUpRequest request) =>
      handle(() => ref.read(authRepositoryProvider).signUp(request));
}

@RoutePage()
class SignUpPage extends StatefulHookConsumerWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final username = useTextEditingController();
    final email = useTextEditingController();
    final password = useTextEditingController();
    final confirmPassword = useTextEditingController();
    final passwordObscure = useState(true);
    final image = useState<CroppedFile?>(null);

    final signUp = ref.watch(signUpProvider);

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.signUp)),
      body: FormBody(
        formKey: _formKey,
        children: [
          const Logo(),
          ImageFormField.notifier(
            image,
            dimension: 100,
            text: "Profile picture",
          ),
          TextFormField(
            controller: username,
            validator: context.validator.required().build(),
            decoration: const InputDecoration(
              labelText: "username",
            ),
          ),
          TextFormField(
            controller: email,
            validator: context.validator.required().email().build(),
            decoration: const InputDecoration(
              labelText: "email",
            ),
          ),
          PasswordTextInput(
            controller: password,
            passwordObscure: passwordObscure,
          ),
          PasswordTextInput(
            label: Text(context.l10n.confirmPassword),
            controller: confirmPassword,
            passwordObscure: passwordObscure,
          ),
          FilledButton(
            onPressed: signUp.isLoading
                ? null
                : () async {
                    if (_formKey.isNotValid()) return;

                    final request = SignUpRequest(
                      username: username.text,
                      email: email.text,
                      password: password.text,
                      file: File(image.value!.path),
                    );

                    final result =
                        await ref.read(signUpProvider.notifier).run(request);

                    result.whenDataOrError(
                      data: (data) async {
                        context.showSuccessSnackBar(context.l10n.signUpSuccess);
                        await ref.read(authenticationProvider.notifier).update(
                          (state) {
                            return LoginResponse(
                              token: data.token,
                              refreshToken: data.refreshToken,
                            );
                          },
                        );
                        context.router.push(
                          const MainRoute(children: [HomeRoute()]),
                        );
                      },
                      error: (error, stackTrace) {
                        context.showSnackBar(context.l10n.defaultErrorMessage);
                      },
                    );
                  },
            child: signUp.isLoading
                ? const LoadingWidget()
                : Text(context.l10n.signUp),
          )
        ],
      ),
    );
  }
}
