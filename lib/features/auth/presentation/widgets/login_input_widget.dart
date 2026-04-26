import 'package:docdoc/features/auth/data/models/login_request_body.dart';
import 'package:docdoc/features/auth/logic/login_cubit/cubit.dart';
import 'package:docdoc/features/auth/logic/login_cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_txt_field.dart';
import '../../../../core/widgets/pass_txt_field.dart';

class LoginInputWidget extends StatefulWidget {
  const LoginInputWidget({super.key});

  @override
  State<LoginInputWidget> createState() => _LoginInputWidgetState();
}

class _LoginInputWidgetState extends State<LoginInputWidget> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _login() {
    context.read<LoginCubit>().login(
      LoginRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTxtField(
          hintTxt: "Email",
          textEditingController: emailController,
        ),
        const SizedBox(height: 12),
        PassTxtFeild(
          textEditingController: passwordController,
          hintTxt: "Password",
        ),
        const SizedBox(height: 8),
        BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            final isLoading = state.maybeWhen(
              loading: () => true,
              orElse: () => false,
            );

            return AppButton(
              buttonTxt: isLoading ? "Loading..." : "Login",
              function: isLoading ? null : _login,
            );
          },
        ),
      ],
    );
  }
}