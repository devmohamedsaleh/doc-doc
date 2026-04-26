import 'package:docdoc/features/auth/logic/signup_cubit/cubit.dart';
import 'package:docdoc/features/auth/logic/signup_cubit/state.dart';
import 'package:docdoc/features/auth/presentation/widgets/register_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/theming/styles.dart';
import '../../../../routing/routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SignUpCubit>(),
      child: BlocListener<SignUpCubit, SignupState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (response) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Account created successfully'),
                ),
              );

              Navigator.pushReplacementNamed(context, Routes.home);
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
            },
          );
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Text("Create Account", style: TxtStyle.primaryTxtStyle),
                  const SizedBox(height: 12),
                  Text(
                    "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                    style: TxtStyle.size14Weight400Grey,
                  ),
                  const SizedBox(height: 12),
                  RegisterInputWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}