import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/_repositories.dart';
import 'package:starter/data/repositories/auth_repository.dart';
import 'package:starter/riverpod/riverpod.dart';

import '../../../widgets/password_text_input.dart';

part 'sign_up_page.g.dart';

@riverpod
class SignUp extends _$SignUp with AsyncXProvider<SignUpResponse> {
  @override
  Future<AsyncX<SignUpResponse>> build() => AsyncX.idle();

  @useResult
  Future<AsyncValue<AsyncX<SignUpResponse>>> run(SignUpRequest request) =>
      handle(() => ref.read(authRepositoryProvider).signUp(request));
}

class SignUpPage extends StatefulHookConsumerWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final username = useTextEditingController();
    // final email = useTextEditingController();
    final password = useTextEditingController();
    final confirmPassword = useTextEditingController();
    final passwordObscure = useState(true);
    final image = useState<CroppedFile?>(null);

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.signUp)),
      body: FormBody(
        formKey: _formKey,
        children: [
          Logo(),
          PasswordTextInput(
            controller: password,
            passwordObscure: passwordObscure,
          ),
          PasswordTextInput(
            label: Text(context.l10n.confirmPassword),
            controller: confirmPassword,
            passwordObscure: passwordObscure,
          ),
          if (image.value != null) Image.file(File(image.value!.path))
          
        ],
      ),
    );
  }
}
