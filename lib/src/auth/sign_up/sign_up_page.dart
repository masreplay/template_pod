import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter/common_lib.dart';
import 'package:starter/data/repositories/_repositories.dart';
import 'package:starter/data/repositories/auth_repository.dart';
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

class SignUpPage extends StatefulHookConsumerWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
