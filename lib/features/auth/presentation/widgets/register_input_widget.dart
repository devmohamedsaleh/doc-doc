import 'package:docdoc/features/auth/data/models/signup_request_body.dart';
import 'package:docdoc/features/auth/logic/signup_cubit/cubit.dart';
import 'package:docdoc/features/auth/logic/signup_cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_txt_field.dart';
import '../../../../core/widgets/pass_txt_field.dart';

class RegisterInputWidget extends StatefulWidget {
  const RegisterInputWidget({super.key});

  @override
  State<RegisterInputWidget> createState() => _RegisterInputWidgetState();
}

class _RegisterInputWidgetState extends State<RegisterInputWidget> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController nameController;
  late final TextEditingController genderController;
  late final TextEditingController passwordConfirmationController;
  late final TextEditingController phoneNumberController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    genderController = TextEditingController();
    passwordConfirmationController = TextEditingController();
    phoneNumberController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    genderController.dispose();
    passwordConfirmationController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  void _signUp() {
    context.read<SignUpCubit>().signUp(
      SignupRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        name: nameController.text.trim(),
        gender: genderController.text.trim(),
        phone: phoneNumberController.text.trim(),
        passwordConfirmation: passwordConfirmationController.text.trim(),
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
        AppTxtField(
          hintTxt: "name",
          textEditingController: nameController,
        ),
        const SizedBox(height: 12),
        AppTxtField(
          hintTxt: "Phone Number",
          textEditingController: phoneNumberController,
        ),
        const SizedBox(height: 12),
        AppTxtField(
          hintTxt: "Gender",
          textEditingController: genderController,
        ),
        const SizedBox(height: 12),
        PassTxtFeild(
          textEditingController: passwordController,
          hintTxt: "Password",
        ),
        const SizedBox(height: 12),
        PassTxtFeild(
          textEditingController: passwordConfirmationController,
          hintTxt: "Confirmation Password",
        ),
        const SizedBox(height: 8),
        BlocBuilder<SignUpCubit, SignupState>(
          builder: (context, state) {
            final isLoading = state.maybeWhen(
              loading: () => true,
              orElse: () => false,
            );

            return AppButton(
              buttonTxt: isLoading ? "Loading..." : "Create Account",
              function: isLoading ? null : _signUp,
            );
          },
        ),
      ],
    );
  }
}